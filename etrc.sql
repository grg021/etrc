-- MySQL dump 10.11
--
-- Host: localhost    Database: etrc
-- ------------------------------------------------------
-- Server version	5.0.95

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bak_vwgp3_assets`
--

DROP TABLE IF EXISTS `bak_vwgp3_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_assets` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL default '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_assets`
--

LOCK TABLES `bak_vwgp3_assets` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_assets` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_assets` VALUES (1,0,1,67,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,20,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,21,22,1,'com_cpanel','com_cpanel','{}'),(10,1,23,24,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,25,26,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,27,28,1,'com_login','com_login','{}'),(13,1,29,30,1,'com_mailto','com_mailto','{}'),(14,1,31,32,1,'com_massmail','com_massmail','{}'),(15,1,33,34,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,35,36,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,37,38,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,39,40,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,41,44,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,45,46,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,47,48,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,49,50,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,51,52,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,53,56,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,57,60,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,61,62,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,42,43,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,58,59,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,54,55,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,63,64,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,65,66,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
/*!40000 ALTER TABLE `bak_vwgp3_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_associations`
--

DROP TABLE IF EXISTS `bak_vwgp3_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY  (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_associations`
--

LOCK TABLES `bak_vwgp3_associations` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_banner_clients`
--

DROP TABLE IF EXISTS `bak_vwgp3_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_banner_clients` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_banner_clients`
--

LOCK TABLES `bak_vwgp3_banner_clients` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_banner_tracks`
--

DROP TABLE IF EXISTS `bak_vwgp3_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_banner_tracks`
--

LOCK TABLES `bak_vwgp3_banner_tracks` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_banners`
--

DROP TABLE IF EXISTS `bak_vwgp3_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_banners` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `clickurl` varchar(200) NOT NULL default '',
  `state` tinyint(3) NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `reset` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `language` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_banners`
--

LOCK TABLES `bak_vwgp3_banners` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_categories`
--

DROP TABLE IF EXISTS `bak_vwgp3_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_categories` (
  `id` int(11) NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `extension` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL default '0',
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_categories`
--

LOCK TABLES `bak_vwgp3_categories` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_categories` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_categories` VALUES (1,0,0,0,13,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*');
/*!40000 ALTER TABLE `bak_vwgp3_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_contact_details`
--

DROP TABLE IF EXISTS `bak_vwgp3_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_contact_details`
--

LOCK TABLES `bak_vwgp3_contact_details` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_content`
--

DROP TABLE IF EXISTS `bak_vwgp3_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `title_alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL default '1',
  `parentid` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_content`
--

LOCK TABLES `bak_vwgp3_content` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_content_frontpage`
--

DROP TABLE IF EXISTS `bak_vwgp3_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_content_frontpage`
--

LOCK TABLES `bak_vwgp3_content_frontpage` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_content_rating`
--

DROP TABLE IF EXISTS `bak_vwgp3_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(10) unsigned NOT NULL default '0',
  `rating_count` int(10) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_content_rating`
--

LOCK TABLES `bak_vwgp3_content_rating` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_core_log_searches`
--

DROP TABLE IF EXISTS `bak_vwgp3_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_core_log_searches`
--

LOCK TABLES `bak_vwgp3_core_log_searches` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_extensions`
--

DROP TABLE IF EXISTS `bak_vwgp3_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_extensions` (
  `extension_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL default '1',
  `access` int(10) unsigned NOT NULL default '1',
  `protected` tinyint(3) NOT NULL default '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_extensions`
--

LOCK TABLES `bak_vwgp3_extensions` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_extensions` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2012\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"November 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.8\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `bak_vwgp3_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_filters`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL default '1',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY  (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_filters`
--

LOCK TABLES `bak_vwgp3_finder_filters` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links` (
  `link_id` int(10) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `indexdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `md5sum` varchar(32) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `state` int(5) default '1',
  `access` int(5) default '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL default '0',
  `sale_price` double unsigned NOT NULL default '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY  (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links`
--

LOCK TABLES `bak_vwgp3_finder_links` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms0`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms0`
--

LOCK TABLES `bak_vwgp3_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms1`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms1`
--

LOCK TABLES `bak_vwgp3_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms2`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms2`
--

LOCK TABLES `bak_vwgp3_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms3`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms3`
--

LOCK TABLES `bak_vwgp3_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms4`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms4`
--

LOCK TABLES `bak_vwgp3_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms5`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms5`
--

LOCK TABLES `bak_vwgp3_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms6`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms6`
--

LOCK TABLES `bak_vwgp3_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms7`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms7`
--

LOCK TABLES `bak_vwgp3_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms8`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms8`
--

LOCK TABLES `bak_vwgp3_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_terms9`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_terms9`
--

LOCK TABLES `bak_vwgp3_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_termsa`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_termsa`
--

LOCK TABLES `bak_vwgp3_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_termsb`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_termsb`
--

LOCK TABLES `bak_vwgp3_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_termsc`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_termsc`
--

LOCK TABLES `bak_vwgp3_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_termsd`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_termsd`
--

LOCK TABLES `bak_vwgp3_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_termse`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_termse`
--

LOCK TABLES `bak_vwgp3_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_links_termsf`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_links_termsf`
--

LOCK TABLES `bak_vwgp3_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_taxonomy`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `access` tinyint(1) unsigned NOT NULL default '0',
  `ordering` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_taxonomy`
--

LOCK TABLES `bak_vwgp3_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `bak_vwgp3_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_taxonomy_map`
--

LOCK TABLES `bak_vwgp3_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_terms`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_terms` (
  `term_id` int(10) unsigned NOT NULL auto_increment,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_terms`
--

LOCK TABLES `bak_vwgp3_finder_terms` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_terms_common`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_terms_common`
--

LOCK TABLES `bak_vwgp3_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_terms_common` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `bak_vwgp3_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_tokens`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '1',
  `context` tinyint(1) unsigned NOT NULL default '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_tokens`
--

LOCK TABLES `bak_vwgp3_finder_tokens` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL default '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_tokens_aggregate`
--

LOCK TABLES `bak_vwgp3_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_finder_types`
--

DROP TABLE IF EXISTS `bak_vwgp3_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_finder_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_finder_types`
--

LOCK TABLES `bak_vwgp3_finder_types` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_languages`
--

DROP TABLE IF EXISTS `bak_vwgp3_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_languages` (
  `lang_id` int(11) unsigned NOT NULL auto_increment,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL default '',
  `published` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_languages`
--

LOCK TABLES `bak_vwgp3_languages` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_languages` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `bak_vwgp3_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_menu`
--

DROP TABLE IF EXISTS `bak_vwgp3_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL default '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL default '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL default '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL default '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL default '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL default '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL default '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL default '',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_menu`
--

LOCK TABLES `bak_vwgp3_menu` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_menu` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,43,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"multi_column_order\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_noauth\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',29,30,1,'*',0);
/*!40000 ALTER TABLE `bak_vwgp3_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_menu_types`
--

DROP TABLE IF EXISTS `bak_vwgp3_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_menu_types`
--

LOCK TABLES `bak_vwgp3_menu_types` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_menu_types` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `bak_vwgp3_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_messages`
--

DROP TABLE IF EXISTS `bak_vwgp3_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` tinyint(3) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL default '0',
  `priority` tinyint(1) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_messages`
--

LOCK TABLES `bak_vwgp3_messages` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_messages_cfg`
--

DROP TABLE IF EXISTS `bak_vwgp3_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_messages_cfg`
--

LOCK TABLES `bak_vwgp3_messages_cfg` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_modules`
--

DROP TABLE IF EXISTS `bak_vwgp3_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) NOT NULL default '',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_modules`
--

LOCK TABLES `bak_vwgp3_modules` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_modules` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_modules` VALUES (1,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
/*!40000 ALTER TABLE `bak_vwgp3_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_modules_menu`
--

DROP TABLE IF EXISTS `bak_vwgp3_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_modules_menu`
--

LOCK TABLES `bak_vwgp3_modules_menu` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_modules_menu` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0);
/*!40000 ALTER TABLE `bak_vwgp3_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_newsfeeds`
--

DROP TABLE IF EXISTS `bak_vwgp3_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `link` varchar(200) NOT NULL default '',
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(10) unsigned NOT NULL default '1',
  `cache_time` int(10) unsigned NOT NULL default '3600',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL default '',
  `params` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_newsfeeds`
--

LOCK TABLES `bak_vwgp3_newsfeeds` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_overrider`
--

DROP TABLE IF EXISTS `bak_vwgp3_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_overrider` (
  `id` int(10) NOT NULL auto_increment COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_overrider`
--

LOCK TABLES `bak_vwgp3_overrider` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_redirect_links`
--

DROP TABLE IF EXISTS `bak_vwgp3_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_redirect_links` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_redirect_links`
--

LOCK TABLES `bak_vwgp3_redirect_links` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_schemas`
--

DROP TABLE IF EXISTS `bak_vwgp3_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_schemas`
--

LOCK TABLES `bak_vwgp3_schemas` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_schemas` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_schemas` VALUES (700,'2.5.8');
/*!40000 ALTER TABLE `bak_vwgp3_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_session`
--

DROP TABLE IF EXISTS `bak_vwgp3_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_session` (
  `session_id` varchar(200) NOT NULL default '',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `guest` tinyint(4) unsigned default '1',
  `time` varchar(14) default '',
  `data` mediumtext,
  `userid` int(11) default '0',
  `username` varchar(150) default '',
  `usertype` varchar(50) default '',
  PRIMARY KEY  (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_session`
--

LOCK TABLES `bak_vwgp3_session` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_session` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_session` VALUES ('4nsrrmdk520dh5puro7k4jvgr4',0,1,'1354244143','__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1354243928;s:18:\"session.timer.last\";i:1354243928;s:17:\"session.timer.now\";i:1354244143;s:22:\"session.client.browser\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"6557af06fe9e41cdfd8c0fff8b7c10ed\";}',0,'',''),('8ifp47epkh3tqhtfisio7el0i3',1,1,'1354243929','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1354243929;s:18:\"session.timer.last\";i:1354243929;s:17:\"session.timer.now\";i:1354243929;s:22:\"session.client.browser\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";N;s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"442b2d142fd5f2f6bb31c0f2ab87c2b2\";}',0,'','');
/*!40000 ALTER TABLE `bak_vwgp3_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_template_styles`
--

DROP TABLE IF EXISTS `bak_vwgp3_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_template_styles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` varchar(50) NOT NULL default '',
  `client_id` tinyint(1) unsigned NOT NULL default '0',
  `home` char(7) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_template_styles`
--

LOCK TABLES `bak_vwgp3_template_styles` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_template_styles` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'1','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}');
/*!40000 ALTER TABLE `bak_vwgp3_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_update_categories`
--

DROP TABLE IF EXISTS `bak_vwgp3_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_update_categories` (
  `categoryid` int(11) NOT NULL auto_increment,
  `name` varchar(20) default '',
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `updatesite` int(11) default '0',
  PRIMARY KEY  (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_update_categories`
--

LOCK TABLES `bak_vwgp3_update_categories` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_update_sites`
--

DROP TABLE IF EXISTS `bak_vwgp3_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_update_sites` (
  `update_site_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `type` varchar(20) default '',
  `location` text NOT NULL,
  `enabled` int(11) default '0',
  `last_check_timestamp` bigint(20) default '0',
  PRIMARY KEY  (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_update_sites`
--

LOCK TABLES `bak_vwgp3_update_sites` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_update_sites` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,0),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,0),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,0);
/*!40000 ALTER TABLE `bak_vwgp3_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_update_sites_extensions`
--

DROP TABLE IF EXISTS `bak_vwgp3_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL default '0',
  `extension_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_update_sites_extensions`
--

LOCK TABLES `bak_vwgp3_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_update_sites_extensions` VALUES (1,700),(2,700),(3,600);
/*!40000 ALTER TABLE `bak_vwgp3_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_updates`
--

DROP TABLE IF EXISTS `bak_vwgp3_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_updates` (
  `update_id` int(11) NOT NULL auto_increment,
  `update_site_id` int(11) default '0',
  `extension_id` int(11) default '0',
  `categoryid` int(11) default '0',
  `name` varchar(100) default '',
  `description` text NOT NULL,
  `element` varchar(100) default '',
  `type` varchar(20) default '',
  `folder` varchar(20) default '',
  `client_id` tinyint(3) default '0',
  `version` varchar(10) default '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY  (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_updates`
--

LOCK TABLES `bak_vwgp3_updates` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_user_notes`
--

DROP TABLE IF EXISTS `bak_vwgp3_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_user_notes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_user_notes`
--

LOCK TABLES `bak_vwgp3_user_notes` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_user_profiles`
--

DROP TABLE IF EXISTS `bak_vwgp3_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_user_profiles`
--

LOCK TABLES `bak_vwgp3_user_profiles` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_user_usergroup_map`
--

DROP TABLE IF EXISTS `bak_vwgp3_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY  (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_user_usergroup_map`
--

LOCK TABLES `bak_vwgp3_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_user_usergroup_map` VALUES (959,8);
/*!40000 ALTER TABLE `bak_vwgp3_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_usergroups`
--

DROP TABLE IF EXISTS `bak_vwgp3_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_usergroups` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` USING BTREE (`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_usergroups`
--

LOCK TABLES `bak_vwgp3_usergroups` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_usergroups` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `bak_vwgp3_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_users`
--

DROP TABLE IF EXISTS `bak_vwgp3_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL default '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=960 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_users`
--

LOCK TABLES `bak_vwgp3_users` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_users` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_users` VALUES (959,'Super User','admin','greg@solutionsresource.com','441393ccfd7c136f87ef075066d53212:jD5iCWL41TQVHRHG5ZPJxdq9LmiJ3OMw','deprecated',0,1,'2012-11-30 02:51:42','0000-00-00 00:00:00','0','','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `bak_vwgp3_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_viewlevels`
--

DROP TABLE IF EXISTS `bak_vwgp3_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_viewlevels` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_viewlevels`
--

LOCK TABLES `bak_vwgp3_viewlevels` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_viewlevels` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `bak_vwgp3_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_weblinks`
--

DROP TABLE IF EXISTS `bak_vwgp3_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_weblinks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `access` int(11) NOT NULL default '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_weblinks`
--

LOCK TABLES `bak_vwgp3_weblinks` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_wf_profiles`
--

DROP TABLE IF EXISTS `bak_vwgp3_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_wf_profiles` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_wf_profiles`
--

LOCK TABLES `bak_vwgp3_wf_profiles` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_wf_profiles` DISABLE KEYS */;
INSERT INTO `bak_vwgp3_wf_profiles` VALUES (1,'Default','Default Profile for all users','','3,4,5,6,8,7','',0,'','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',1,1,0,'0000-00-00 00:00:00',''),(2,'Front End','Sample Front-end Profile','','3,4,5','',1,'','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',0,2,0,'0000-00-00 00:00:00',''),(3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}');
/*!40000 ALTER TABLE `bak_vwgp3_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_vwgp3_widgetkit_widget`
--

DROP TABLE IF EXISTS `bak_vwgp3_widgetkit_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_vwgp3_widgetkit_widget` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_vwgp3_widgetkit_widget`
--

LOCK TABLES `bak_vwgp3_widgetkit_widget` WRITE;
/*!40000 ALTER TABLE `bak_vwgp3_widgetkit_widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_vwgp3_widgetkit_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_assets`
--

DROP TABLE IF EXISTS `japzd_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_assets` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL default '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_assets`
--

LOCK TABLES `japzd_assets` WRITE;
/*!40000 ALTER TABLE `japzd_assets` DISABLE KEYS */;
INSERT INTO `japzd_assets` VALUES (1,0,1,77,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,24,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,25,26,1,'com_cpanel','com_cpanel','{}'),(10,1,27,28,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,29,30,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,31,32,1,'com_login','com_login','{}'),(13,1,33,34,1,'com_mailto','com_mailto','{}'),(14,1,35,36,1,'com_massmail','com_massmail','{}'),(15,1,37,38,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,39,40,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,41,42,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,43,44,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,45,48,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,49,50,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,51,52,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,53,54,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,55,56,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,57,60,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,61,64,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,65,66,1,'com_wrapper','com_wrapper','{}'),(27,8,18,23,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,46,47,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,62,63,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,58,59,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,67,68,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,69,70,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,71,72,1,'com_widgetkit','widgetkit','{}'),(36,1,73,74,1,'com_jce','jce','{}'),(37,27,19,20,3,'com_content.article.1','Welcome to eTRC-Library','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(39,27,21,22,3,'com_content.article.2','Terms And Conditions','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,1,75,76,1,'com_jshopping','jshopping','{}');
/*!40000 ALTER TABLE `japzd_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_associations`
--

DROP TABLE IF EXISTS `japzd_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY  (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_associations`
--

LOCK TABLES `japzd_associations` WRITE;
/*!40000 ALTER TABLE `japzd_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_banner_clients`
--

DROP TABLE IF EXISTS `japzd_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_banner_clients` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_banner_clients`
--

LOCK TABLES `japzd_banner_clients` WRITE;
/*!40000 ALTER TABLE `japzd_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_banner_tracks`
--

DROP TABLE IF EXISTS `japzd_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_banner_tracks`
--

LOCK TABLES `japzd_banner_tracks` WRITE;
/*!40000 ALTER TABLE `japzd_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_banners`
--

DROP TABLE IF EXISTS `japzd_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_banners` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `clickurl` varchar(200) NOT NULL default '',
  `state` tinyint(3) NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `reset` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `language` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_banners`
--

LOCK TABLES `japzd_banners` WRITE;
/*!40000 ALTER TABLE `japzd_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_categories`
--

DROP TABLE IF EXISTS `japzd_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_categories` (
  `id` int(11) NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `extension` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL default '0',
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_categories`
--

LOCK TABLES `japzd_categories` WRITE;
/*!40000 ALTER TABLE `japzd_categories` DISABLE KEYS */;
INSERT INTO `japzd_categories` VALUES (1,0,0,0,13,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*');
/*!40000 ALTER TABLE `japzd_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_contact_details`
--

DROP TABLE IF EXISTS `japzd_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_contact_details`
--

LOCK TABLES `japzd_contact_details` WRITE;
/*!40000 ALTER TABLE `japzd_contact_details` DISABLE KEYS */;
INSERT INTO `japzd_contact_details` VALUES (1,'eTRC','etrc','','','','','','','','','','',NULL,'',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":null,\"linkb_name\":\"\",\"linkb\":null,\"linkc_name\":\"\",\"linkc\":null,\"linkd_name\":\"\",\"linkd\":null,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',822,4,1,'','','','','','*','2012-12-13 03:15:56',822,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `japzd_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_content`
--

DROP TABLE IF EXISTS `japzd_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `title_alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL default '1',
  `parentid` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_content`
--

LOCK TABLES `japzd_content` WRITE;
/*!40000 ALTER TABLE `japzd_content` DISABLE KEYS */;
INSERT INTO `japzd_content` VALUES (1,37,'Welcome to eTRC-Library','about-trc','','<p>The Technology Resource Center (TRC) serves the public through the acquisition and promotion of technology and livelihood skills and information for Filipinos worldwide. A government corporation attached to the Department of Science and Technology, the TRC operates as a self-sustaining institution.</p>\r\n<p><a href=\"http://trc.dost.gov.ph/\">Read more at TRC Website</a></p>','',1,0,0,2,'2012-12-13 01:37:01',822,'','2012-12-14 05:52:44',822,822,'2012-12-14 05:52:44','2012-12-13 01:37:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,1,'','',1,662,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(2,39,'Terms And Conditions','terms-and-condition','','<h2>General:</h2>\r\n<p>The website is presented by Technology Resource Center (TRC) for the purpose of disseminating livelihood and technology information for public benefit. Some of the materials available for download are collected from various sources. The content of these materials are considered public domain and are for free. TRC, however, is charging an ‘access fee’ intended for the maintenance of the infrastructure set-up and utilized for the delivery of these information.</p>\r\n<h2>Liability and Reliability:</h2>\r\n<p>In preparation of these pages, every effort has been made to offer the most current, correct, and clearly expressed information possible. Nevertheless, inadvertent errors in information may occur. In particular but without limiting anything here, TRC disclaims any responsibility for typographical errors and accuracy of the information that may be contained on TRC web pages. The information and data included in this website have been compiled by eTechnobank staff from a variety of sources, and are subject to change without notice to the User. TRC makes no warranties or representations whatsoever regarding the quality, content, completeness, suitability, adequacy, sequence, accuracy, or timeliness of such information and data.</p>\r\n<p>THE SERVICES, INFORMATION, AND DATA MADE AVAILABLE IN THIS WEBSITE ARE PROVIDED \"AS IS\" WITHOUT WARRANTIES OF ANY KIND. TRC MAKES NO REPRESENTATIONS OR WARRANTIES REGARDING THE CONDITION OR FUNCTIONALITY OF THIS WEB SITE, ITS SUITABILITY FOR USE, OR THAT THIS WEB SERVICE WILL BE UNINTERRUPTED OR ERROR-FREE.</p>\r\n<h2>Links to Third Parties\' Web Sites</h2>\r\n<p>There are links and pointers to third party Internet websites contained in TRC website. These sites linked from the TRC website are not under the TRC control. TRC do not assume any responsibility or liability for any information, communications or materials available at such linked sites, or at any link contained in a linked site. TRC do not intend these third party links to be referrals or endorsements of the linked entities by the TRC, and are provided for convenience only. Each individual site has its own set of policies about what information is appropriate for public access. User assumes sole responsibility for use of third party links and pointers.</p>\r\n<h2>Disclaimer of Damages:</h2>\r\n<p>By using TRC web pages, the User assumes all risks associated with the use of this site, including any risk to User\'s computer, software or data being damaged by any virus, software, or any other file which might be transmitted or activated via a TRC web page, this site or User\'s access to it. TRC SHALL NOT IN ANY EVENT BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING, WITHOUT LIMITATION, LOST REVENUES, OR LOST PROFITS, ARISING OUT OF OR IN ANY WAY CONNECTED WITH THE USE OR MISUSE OF THE INFORMATION OR LACK OF INFORMATION ON THE TRC WEB SITE OR WITH THE DELAY OR INABILITY TO USE THIS WEB SITE, OR FROM ANY INFORMATION, DOCUMENTS, SERVICES, SOFTWARE, OR OTHER MATERIAL OBTAINED THROUGH THIS WEB SITE, OR OTHERWISE ARISING OUT OF THE USE OF THIS WEB SITE, WHETHER BASED ON CONTRACT, TORT, STRICT LIABILITY OR OTHERWISE, EVEN IF TRC HAS BEEN ADVISED OF THE POSSIBILITY OF DAMAGES. TRC shall not be liable for any loss or injury caused in whole, or in part, by their actions, omissions, or contingencies beyond their control, including in procuring, compiling, or delivering the information, or arising out of any errors, omissions, or inaccuracies in the information regardless of how caused, or arising out of any user\'s decision, or action taken or not taken in reliance upon information furnished.</p>','',1,0,0,2,'2012-12-13 08:32:30',822,'','2012-12-13 08:32:39',822,0,'0000-00-00 00:00:00','2012-12-13 08:32:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `japzd_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_content_frontpage`
--

DROP TABLE IF EXISTS `japzd_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_content_frontpage`
--

LOCK TABLES `japzd_content_frontpage` WRITE;
/*!40000 ALTER TABLE `japzd_content_frontpage` DISABLE KEYS */;
INSERT INTO `japzd_content_frontpage` VALUES (1,1);
/*!40000 ALTER TABLE `japzd_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_content_rating`
--

DROP TABLE IF EXISTS `japzd_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(10) unsigned NOT NULL default '0',
  `rating_count` int(10) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_content_rating`
--

LOCK TABLES `japzd_content_rating` WRITE;
/*!40000 ALTER TABLE `japzd_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_core_log_searches`
--

DROP TABLE IF EXISTS `japzd_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_core_log_searches`
--

LOCK TABLES `japzd_core_log_searches` WRITE;
/*!40000 ALTER TABLE `japzd_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_extensions`
--

DROP TABLE IF EXISTS `japzd_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_extensions` (
  `extension_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL default '1',
  `access` int(10) unsigned NOT NULL default '1',
  `protected` tinyint(3) NOT NULL default '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10023 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_extensions`
--

LOCK TABLES `japzd_extensions` WRITE;
/*!40000 ALTER TABLE `japzd_extensions` DISABLE KEYS */;
INSERT INTO `japzd_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"1\",\"captcha\":\"recaptcha\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'0000-00-00 00:00:00',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2012\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\",@[data-lightbox],@[data-spotlight]\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"6Lc0V9oSAAAAALMizXjkBU6tnQECda1Eype7NuNB\",\"private_key\":\"6Lc0V9oSAAAAAP20sXXrVFZQwp-2FDZlIx0tuLu0\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"November 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.8\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'Widgetkit','module','mod_widgetkit','',0,1,0,0,'{\"legacy\":false,\"name\":\"Widgetkit\",\"type\":\"module\",\"creationDate\":\"May 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Widgetkit module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{\"widget_id\":\"\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10001,'Widgetkit Twitter','module','mod_widgetkit_twitter','',0,1,0,0,'{\"legacy\":false,\"name\":\"Widgetkit Twitter\",\"type\":\"module\",\"creationDate\":\"May 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Twitter module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{\"style\":\"list\",\"from_user\":\"\",\"to_user\":\"\",\"ref_user\":\"\",\"hashtag\":\"\",\"word\":\"\",\"nots\":\"\",\"limit\":\"5\",\"image_size\":\"48\",\"show_image\":\"1\",\"show_author\":\"1\",\"show_date\":\"1\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10002,'System - Widgetkit','plugin','widgetkit_system','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - Widgetkit\",\"type\":\"plugin\",\"creationDate\":\"May 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,'Content - Widgetkit','plugin','widgetkit_content','content',0,1,1,0,'{\"legacy\":false,\"name\":\"Content - Widgetkit\",\"type\":\"plugin\",\"creationDate\":\"May 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'System - Widgetkit ZOO','plugin','widgetkit_zoo','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - Widgetkit ZOO\",\"type\":\"plugin\",\"creationDate\":\"June 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"ZOO plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10005,'System - Widgetkit Joomla','plugin','widgetkit_joomla','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - Widgetkit Joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) 2007 - 2011 YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Joomla Content plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10006,'widgetkit','component','com_widgetkit','',1,1,0,0,'{\"legacy\":false,\"name\":\"Widgetkit\",\"type\":\"component\",\"creationDate\":\"October 2012\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.3.1\",\"description\":\"Widgetkit - A widget toolkit by YOOtheme (http:\\/\\/www.yootheme.com)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10007,'Editor - JCE','plugin','jce','editors',0,1,1,0,'{\"legacy\":false,\"name\":\"Editor - JCE\",\"type\":\"plugin\",\"creationDate\":\"10 November 2012\",\"author\":\"Ryan Demmer\",\"copyright\":\"2006-2010 Ryan Demmer\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.2.9.1\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10008,'plg_quickicon_jcefilebrowser','plugin','jcefilebrowser','quickicon',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_quickicon_jcefilebrowser\",\"type\":\"plugin\",\"creationDate\":\"April 2012\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2012 Ryan Demmer. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10009,'jce','component','com_jce','',1,1,0,0,'{\"legacy\":false,\"name\":\"JCE\",\"type\":\"component\",\"creationDate\":\"10 November 2012\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2012 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.2.9.1\",\"description\":\"WF_ADMIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10010,'yoo_master','template','yoo_master','',0,1,1,0,'{\"legacy\":false,\"name\":\"yoo_master\",\"type\":\"template\",\"creationDate\":\"July 2012\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Warp Master Theme by YOOtheme\",\"group\":\"\"}','{\"config\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10011,'etrc_template','template','etrc_template','',0,1,1,0,'{\"legacy\":false,\"name\":\"etrc_template\",\"type\":\"template\",\"creationDate\":\"July 2012\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/www.yootheme.com\",\"version\":\"1.0.0\",\"description\":\"Warp Master Theme by YOOtheme\",\"group\":\"\"}','{\"config\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10017,'jshopping','component','com_jshopping','',1,1,0,0,'{\"legacy\":false,\"name\":\"jshopping\",\"type\":\"component\",\"creationDate\":\"01.12.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.12.1\",\"description\":\"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10018,'Jshopping Last Products','module','mod_jshopping_latest_products','',0,1,0,0,'{\"legacy\":false,\"name\":\"Jshopping Last Products\",\"type\":\"module\",\"creationDate\":\"25.01.2011\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.3.0\",\"description\":\"Displays last products of shop.\",\"group\":\"\"}','{\"count_products\":\"5\",\"show_image\":\"1\",\"catids\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10019,'Jshopping Search','module','mod_jshopping_search','',0,1,0,0,'{\"legacy\":false,\"name\":\"Jshopping Search\",\"type\":\"module\",\"creationDate\":\"18.04.2011\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.1.2\",\"description\":\"Displays a joomshopping search\",\"group\":\"\"}','{\"advanced_search\":\"1\",\"category_id\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10020,'Jshopping Cart','module','mod_jshopping_cart','',0,1,0,0,'{\"legacy\":false,\"name\":\"Jshopping Cart\",\"type\":\"module\",\"creationDate\":\"01.01.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.0.2\",\"description\":\"Displays a JoomShopping cart\",\"group\":\"\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(10021,'Jshopping Categories','module','mod_jshopping_categories','',0,1,0,0,'{\"legacy\":false,\"name\":\"Jshopping Categories\",\"type\":\"module\",\"creationDate\":\"25.11.2011\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"3.0.1\",\"description\":\"Displays a categories in shop.\",\"group\":\"\"}','{\"show_image\":\"0\",\"sort\":\"id\",\"ordering\":\"asc\"}','','',0,'0000-00-00 00:00:00',0,0),(10022,'JT BxSlider Jshopping Label Products','module','mod_jt_jshopping_label_products','',0,1,0,0,'{\"legacy\":false,\"name\":\"JT BxSlider Jshopping Label Products\",\"type\":\"module\",\"creationDate\":\"28\\/02\\/2012\",\"author\":\"Makeev Vladimir\",\"copyright\":\"Copyright (C) 2011-2013 JTemplate.ru. All Rights Reserved.\",\"authorEmail\":\"jtemplateru@yandex.ru\",\"authorUrl\":\"\",\"version\":\"2.0\",\"description\":\"The module displays label products of shop.\",\"group\":\"\"}','{\"jt_id_sfx\":\"1\",\"jquery\":\"1\",\"jt_script_bx\":\"1\",\"jt_load_jquery\":\"1\",\"jt_mode\":\"horizontal\",\"jt_width\":\"110\",\"jt_height\":\"180\",\"jt_display_slide_qty\":\"5\",\"jt_move_slide_qty\":\"1\",\"count_products\":\"15\",\"show_image\":\"1\",\"label_id\":\"\",\"jt_label_prod\":\"1\",\"jt_short_desc\":\"0\",\"jt_review_mark\":\"0\",\"jt_count_commentar\":\"0\",\"jt_item_detal\":\"0\",\"jt_buttom_text\":\"Detail\",\"jt_speed\":\"500\",\"jt_controls\":\"true\",\"jt_auto\":\"false\",\"jt_autohover\":\"false\",\"jt_pause\":\"3000\",\"jt_auto_delay\":\"0\",\"jt_pager\":\"false\",\"jt_pager_type\":\"full\",\"jt_pager_location\":\"bottom\",\"jt_pager_saparator\":\"\\/\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `japzd_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_filters`
--

DROP TABLE IF EXISTS `japzd_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL default '1',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY  (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_filters`
--

LOCK TABLES `japzd_finder_filters` WRITE;
/*!40000 ALTER TABLE `japzd_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links`
--

DROP TABLE IF EXISTS `japzd_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links` (
  `link_id` int(10) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `indexdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `md5sum` varchar(32) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `state` int(5) default '1',
  `access` int(5) default '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL default '0',
  `sale_price` double unsigned NOT NULL default '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY  (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links`
--

LOCK TABLES `japzd_finder_links` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms0`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms0`
--

LOCK TABLES `japzd_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms1`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms1`
--

LOCK TABLES `japzd_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms2`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms2`
--

LOCK TABLES `japzd_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms3`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms3`
--

LOCK TABLES `japzd_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms4`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms4`
--

LOCK TABLES `japzd_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms5`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms5`
--

LOCK TABLES `japzd_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms6`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms6`
--

LOCK TABLES `japzd_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms7`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms7`
--

LOCK TABLES `japzd_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms8`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms8`
--

LOCK TABLES `japzd_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_terms9`
--

DROP TABLE IF EXISTS `japzd_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_terms9`
--

LOCK TABLES `japzd_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_termsa`
--

DROP TABLE IF EXISTS `japzd_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_termsa`
--

LOCK TABLES `japzd_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_termsb`
--

DROP TABLE IF EXISTS `japzd_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_termsb`
--

LOCK TABLES `japzd_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_termsc`
--

DROP TABLE IF EXISTS `japzd_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_termsc`
--

LOCK TABLES `japzd_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_termsd`
--

DROP TABLE IF EXISTS `japzd_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_termsd`
--

LOCK TABLES `japzd_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_termse`
--

DROP TABLE IF EXISTS `japzd_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_termse`
--

LOCK TABLES `japzd_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_links_termsf`
--

DROP TABLE IF EXISTS `japzd_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_links_termsf`
--

LOCK TABLES `japzd_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `japzd_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_taxonomy`
--

DROP TABLE IF EXISTS `japzd_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `access` tinyint(1) unsigned NOT NULL default '0',
  `ordering` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_taxonomy`
--

LOCK TABLES `japzd_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `japzd_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `japzd_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `japzd_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `japzd_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_taxonomy_map`
--

LOCK TABLES `japzd_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `japzd_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_terms`
--

DROP TABLE IF EXISTS `japzd_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_terms` (
  `term_id` int(10) unsigned NOT NULL auto_increment,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_terms`
--

LOCK TABLES `japzd_finder_terms` WRITE;
/*!40000 ALTER TABLE `japzd_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_terms_common`
--

DROP TABLE IF EXISTS `japzd_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_terms_common`
--

LOCK TABLES `japzd_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `japzd_finder_terms_common` DISABLE KEYS */;
INSERT INTO `japzd_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `japzd_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_tokens`
--

DROP TABLE IF EXISTS `japzd_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '1',
  `context` tinyint(1) unsigned NOT NULL default '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_tokens`
--

LOCK TABLES `japzd_finder_tokens` WRITE;
/*!40000 ALTER TABLE `japzd_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `japzd_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL default '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_tokens_aggregate`
--

LOCK TABLES `japzd_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `japzd_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_finder_types`
--

DROP TABLE IF EXISTS `japzd_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_finder_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_finder_types`
--

LOCK TABLES `japzd_finder_types` WRITE;
/*!40000 ALTER TABLE `japzd_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_addons`
--

DROP TABLE IF EXISTS `japzd_jshopping_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_addons` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `version` varchar(255) NOT NULL,
  `uninstall` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_addons`
--

LOCK TABLES `japzd_jshopping_addons` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_jshopping_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_attr`
--

DROP TABLE IF EXISTS `japzd_jshopping_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_attr` (
  `attr_id` int(11) NOT NULL auto_increment,
  `attr_ordering` int(11) NOT NULL default '0',
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `allcats` tinyint(1) NOT NULL default '1',
  `cats` text NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  PRIMARY KEY  (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_attr`
--

LOCK TABLES `japzd_jshopping_attr` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_attr` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_attr` VALUES (1,1,1,1,1,'','Color',''),(2,2,1,1,1,'','Size','');
/*!40000 ALTER TABLE `japzd_jshopping_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_attr_values`
--

DROP TABLE IF EXISTS `japzd_jshopping_attr_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_attr_values` (
  `value_id` int(11) NOT NULL auto_increment,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL default '0',
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  PRIMARY KEY  (`value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_attr_values`
--

LOCK TABLES `japzd_jshopping_attr_values` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_attr_values` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_attr_values` VALUES (1,1,1,'5f1fe7106367b7dda40517995e73bcf8.jpg','Blue'),(2,1,2,'fc69a97cdc8fa3e586eda044c16249d4.jpg','Red'),(3,2,1,'','S'),(4,2,2,'','M');
/*!40000 ALTER TABLE `japzd_jshopping_attr_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_cart_temp`
--

DROP TABLE IF EXISTS `japzd_jshopping_cart_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_cart_temp` (
  `id` int(11) NOT NULL auto_increment,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_cart_temp`
--

LOCK TABLES `japzd_jshopping_cart_temp` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_cart_temp` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_cart_temp` VALUES (3,'1adhfe02mh3886bkusmae3cgj1','a:0:{}','wishlist'),(4,'a9li0nursehv6phbccn08rh800','a:0:{}','wishlist'),(5,'hooo4s26ovj0mdld71usnohag5','a:0:{}','wishlist'),(7,'33elqij2o6fgnfh2a22m3i86i7','a:0:{}','wishlist'),(10,'idm4skkudbl0gpufqlel6ni7l4','a:0:{}','wishlist'),(27,'9b1hcfk7s6cb5tmktcf1qjpsj4','a:0:{}','wishlist'),(31,'immnn783fq3afd164f8ef1si01','a:0:{}','wishlist'),(32,'cl6di4ebvk6vjtjqp1ftob8ef6','a:0:{}','wishlist'),(33,'2u7iute7lpmacn7458g7al1pl5','a:0:{}','wishlist'),(36,'sau3jvdpvfa8u8jkrfvvvdk771','a:0:{}','wishlist'),(48,'fhm5kt7ad8unh894k09v4tabc3','a:0:{}','wishlist'),(49,'7e1t6jkgdmd7crl2bpcpmd3uk2','a:0:{}','wishlist'),(54,'30sml1a5c3hdl51kobtbvsk433','a:0:{}','wishlist'),(64,'vc6qluk4c33h04i2ahd1ajhjq1','a:0:{}','wishlist');
/*!40000 ALTER TABLE `japzd_jshopping_cart_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_categories`
--

DROP TABLE IF EXISTS `japzd_jshopping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_categories` (
  `category_id` int(11) NOT NULL auto_increment,
  `category_image` varchar(255) default NULL,
  `category_parent_id` int(11) NOT NULL default '0',
  `category_publish` tinyint(1) unsigned NOT NULL default '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL default '1',
  `category_template` varchar(64) default NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime default '0000-00-00 00:00:00',
  `products_page` int(8) NOT NULL default '12',
  `products_row` int(3) NOT NULL default '3',
  `access` int(3) NOT NULL default '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  PRIMARY KEY  (`category_id`),
  KEY `sort_add_date` (`category_add_date`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_categories`
--

LOCK TABLES `japzd_jshopping_categories` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_categories` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_categories` VALUES (1,'339ba546165dd04207dbe5e26a82f5a7.jpg',0,0,1,NULL,1,'2011-12-26 11:34:04',12,3,1,'Cars','cars','(E90) (2005–present) Sedan, coupe, convertiblen and wagon','','','',''),(2,'f842229beea322fc8d52f5f12639d90f.jpg',0,0,1,NULL,2,'2011-12-26 11:57:39',12,3,1,'Motorbike','motorbike','(2004–present) Bikes','','','',''),(3,NULL,2,0,1,NULL,1,'2011-12-26 12:00:38',12,3,1,'2010','2010','2010 year bikes','','','',''),(4,NULL,2,0,1,NULL,2,'2011-12-26 12:00:58',12,3,1,'2011','2011','2011 year bikes','','','',''),(5,NULL,3,0,1,NULL,1,'2011-12-26 12:06:03',12,3,1,'Big bike','bigbike','','','','',''),(6,NULL,3,0,1,NULL,2,'2011-12-26 12:06:21',12,3,1,'Small Bike','smallbike','','','','',''),(7,'913703c2c6b7c44fabfba9fc955ca13e.jpg',0,0,1,NULL,3,'2011-12-26 12:14:05',12,3,1,'Music & Video','music-video','(F10)(2010–present) audio','','','',''),(8,'e2ed1ef494b1fc781bdccb917501a2f7.jpg',0,0,1,NULL,4,'2011-12-26 12:18:51',12,3,1,'Water','water','Water','<h1>Water</h1>','','',''),(9,'TLRC_undefined5.png',0,1,1,NULL,6,'2012-12-17 15:19:00',12,3,1,'All Technology Materials','','All technology Materials','','','',''),(10,'TLRC_undefined6.png',0,1,1,NULL,7,'2012-12-17 15:19:49',12,3,1,'Publications','publications','Publications','','','',''),(11,'TLRC_undefined7.png',0,1,1,NULL,9,'2012-12-17 15:20:14',12,3,1,'Multimedia Clips','multimedia-clips','Multimedia Clips','','','',''),(12,'TLRC_books.jpg',10,1,1,NULL,3,'2012-12-17 15:21:22',12,3,1,'Books','books','Books','','','',''),(13,'TLRC_reprints.jpg',10,1,1,NULL,6,'2012-12-17 15:21:47',12,3,1,'Reprints','reprints','Reprints','','','',''),(14,'TLRC_periodicals.jpg',10,1,1,NULL,8,'2012-12-17 15:22:28',12,3,1,'Periodicals/Journals','periodicals-journals','Periodicals/Journals','','','',''),(15,'TLRC_pamph_feasib.jpg',10,1,1,NULL,10,'2012-12-17 15:22:50',12,3,1,'Pamphlets/Feasibility Studies','pamphlets-feasibility-studies','Pamphlets/Feasibility Studies','','','',''),(16,'TLRC_undefined1.png',11,1,1,NULL,1,'2012-12-17 15:29:24',12,3,1,'Video Clips','video-clips','Video Clips','','','','');
/*!40000 ALTER TABLE `japzd_jshopping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_config`
--

DROP TABLE IF EXISTS `japzd_jshopping_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_config` (
  `id` tinyint(1) NOT NULL default '0',
  `count_products_to_page` int(4) NOT NULL,
  `count_products_to_row` int(2) NOT NULL,
  `count_category_to_row` int(2) NOT NULL,
  `image_category_width` int(4) NOT NULL,
  `image_category_height` int(4) NOT NULL,
  `image_product_width` int(4) NOT NULL,
  `image_product_height` int(4) NOT NULL,
  `image_product_full_width` int(4) NOT NULL,
  `image_product_full_height` int(4) NOT NULL,
  `video_product_width` int(4) NOT NULL,
  `video_product_height` int(4) NOT NULL,
  `adminLanguage` varchar(8) NOT NULL,
  `defaultLanguage` varchar(8) NOT NULL,
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `order_number_type` varchar(50) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL default '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL default '1',
  `product_sorting` tinyint(1) NOT NULL default '1',
  `product_sorting_direction` tinyint(1) NOT NULL,
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `cart_display_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  `delivery_order_depends_delivery_product` tinyint(1) NOT NULL,
  `show_delivery_time_step5` tinyint(1) NOT NULL,
  `other_config` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_config`
--

LOCK TABLES `japzd_jshopping_config` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_config` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_config` VALUES (1,12,3,2,160,0,100,0,200,0,320,240,'en-GB','en-GB',2,2,'.','',2,0,0,7,'1','%storename %address %city %zip','%d.%m.%Y','greg@solutionsresource.com',1,1,0,10,'-1.00',1,0,'208:65:208:30',48,0,0,1,0,1,0,0,1,1,1,1,0,0,'096431dee3bc2b664230d8cf3c1fc536',0,0,0,0,0,0,0,0,0,'',0,0,0,1,1,1,0,0,1,1,1,0,1,1,0,0,0,0,1,0,0,0,0,0,0,'a:3:{s:8:\"register\";a:12:{s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:11:\"mobil_phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:6:\"u_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:8:\"password\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:10:\"password_2\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:7:\"address\";a:17:{s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:11:\"mobil_phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:13:\"d_mobil_phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:11:\"editaccount\";a:17:{s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:11:\"mobil_phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:13:\"d_mobil_phone\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}}','default',0,0,1,1,0,3,1,1,0,0,1,'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}','a:0:{}','a:0:{}','a:0:{}',168,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,3,0,0,0,'a:37:{s:23:\"tax_on_delivery_address\";s:1:\"0\";s:17:\"cart_back_to_shop\";s:4:\"list\";s:32:\"product_button_back_use_end_list\";s:1:\"0\";s:21:\"display_tax_id_in_pdf\";s:1:\"0\";s:13:\"image_quality\";s:3:\"100\";s:16:\"image_fill_color\";s:8:\"16777215\";s:26:\"product_price_qty_discount\";s:1:\"2\";s:16:\"rating_starparts\";s:1:\"2\";s:31:\"show_list_price_shipping_weight\";s:1:\"0\";s:23:\"product_price_precision\";s:1:\"2\";s:26:\"cart_decimal_qty_precision\";s:1:\"2\";s:25:\"default_frontend_currency\";s:1:\"0\";s:27:\"product_file_upload_via_ftp\";s:1:\"0\";s:25:\"product_file_upload_count\";s:1:\"1\";s:26:\"product_image_upload_count\";s:2:\"10\";s:26:\"product_video_upload_count\";s:1:\"3\";s:33:\"show_insert_code_in_product_video\";s:1:\"0\";s:29:\"max_number_download_sale_file\";s:1:\"3\";s:26:\"max_day_download_sale_file\";s:3:\"365\";s:34:\"order_display_new_digital_products\";s:1:\"1\";s:24:\"display_user_groups_info\";s:1:\"0\";s:18:\"display_user_group\";s:1:\"0\";s:11:\"load_jquery\";s:1:\"1\";s:19:\"load_jquery_version\";s:5:\"1.6.2\";s:20:\"load_jquery_lightbox\";s:1:\"1\";s:15:\"load_javascript\";s:1:\"1\";s:8:\"load_css\";s:1:\"1\";s:3:\"tax\";s:1:\"1\";s:5:\"stock\";s:1:\"1\";s:47:\"display_delivery_time_for_product_in_order_mail\";s:1:\"0\";s:18:\"show_delivery_date\";s:1:\"0\";s:27:\"show_delivery_time_checkout\";s:1:\"0\";s:25:\"show_manufacturer_in_cart\";s:1:\"0\";s:17:\"weight_in_invoice\";s:1:\"0\";s:19:\"shipping_in_invoice\";s:1:\"0\";s:18:\"payment_in_invoice\";s:1:\"0\";s:23:\"date_invoice_in_invoice\";s:1:\"0\";}');
/*!40000 ALTER TABLE `japzd_jshopping_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_config_display_prices`
--

DROP TABLE IF EXISTS `japzd_jshopping_config_display_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_config_display_prices` (
  `id` int(11) NOT NULL auto_increment,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_config_display_prices`
--

LOCK TABLES `japzd_jshopping_config_display_prices` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_config_display_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_jshopping_config_display_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_config_seo`
--

DROP TABLE IF EXISTS `japzd_jshopping_config_seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_config_seo` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_config_seo`
--

LOCK TABLES `japzd_jshopping_config_seo` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_config_seo` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_config_seo` VALUES (1,'category',10,'','',''),(2,'manufacturers',20,'','',''),(3,'cart',30,'','',''),(4,'wishlist',40,'','',''),(5,'login',50,'','',''),(6,'register',60,'','',''),(7,'editaccount',70,'','',''),(8,'myorders',80,'','',''),(9,'myaccount',90,'','',''),(10,'search',100,'','',''),(11,'search-result',110,'','',''),(12,'myorder-detail',120,'','',''),(13,'vendors',130,'','',''),(14,'content-agb',140,'','',''),(15,'content-return_policy',150,'','',''),(16,'content-shipping',160,'','',''),(17,'content-privacy_statement',161,'','',''),(18,'checkout-address',170,'','',''),(19,'checkout-payment',180,'','',''),(20,'checkout-shipping',190,'','',''),(21,'checkout-preview',200,'','',''),(22,'lastproducts',210,'','',''),(23,'randomproducts',220,'','',''),(24,'bestsellerproducts',230,'','',''),(25,'labelproducts',240,'','',''),(26,'topratingproducts',250,'','',''),(27,'tophitsproducts',260,'','',''),(28,'all-products',270,'','','');
/*!40000 ALTER TABLE `japzd_jshopping_config_seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_config_statictext`
--

DROP TABLE IF EXISTS `japzd_jshopping_config_statictext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_config_statictext` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(64) NOT NULL,
  `text_en-GB` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_config_statictext`
--

LOCK TABLES `japzd_jshopping_config_statictext` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_config_statictext` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_config_statictext` VALUES (1,'home',''),(2,'manufacturer',''),(3,'agb',''),(4,'return_policy',''),(5,'order_email_descr',''),(6,'order_email_descr_end',''),(7,'order_finish_descr','<p>Thank you for shopping with TRC - eLibrary.</p>\r\n<p>Your transaction has been completed, and a receipt for your purchase has been emailed to you.</p>\r\n<p>You may log into your account at <a href=\"https://www.paypal.com/\" target=\"_blank\" title=\"paypal\">www.paypal.com</a> to view details of this transaction.</p>'),(8,'shipping',''),(9,'privacy_statement','');
/*!40000 ALTER TABLE `japzd_jshopping_config_statictext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_countries`
--

DROP TABLE IF EXISTS `japzd_jshopping_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_countries` (
  `country_id` int(11) NOT NULL auto_increment,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  PRIMARY KEY  (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_countries`
--

LOCK TABLES `japzd_jshopping_countries` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_countries` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_countries` VALUES (1,1,1,'AFG','AF','Afghanistan','Afghanistan'),(2,1,2,'ALB','AL','Albania','Albanien'),(3,1,3,'DZA','DZ','Algeria','Algerien'),(4,1,4,'ASM','AS','American Samoa','Amerikanisch-Samoa'),(5,1,5,'AND','AD','Andorra','Andorra'),(6,1,6,'AGO','AO','Angola','Angola'),(7,1,7,'AIA','AI','Anguilla','Anguilla'),(8,1,8,'ATA','AQ','Antarctica','Antarktis'),(9,1,9,'ATG','AG','Antigua and Barbuda','Antigua und Barbuda'),(10,1,10,'ARG','AR','Argentina','Argentinien'),(11,1,11,'ARM','AM','Armenia','Armenien'),(12,1,12,'ABW','AW','Aruba','Aruba'),(13,1,13,'AUS','AU','Australia','Australien'),(14,1,14,'AUT','AT','Austria','Österreich'),(15,1,15,'AZE','AZ','Azerbaijan','Aserbaidschan'),(16,1,16,'BHS','BS','Bahamas','Bahamas'),(17,1,17,'BHR','BH','Bahrain','Bahrain'),(18,1,18,'BGD','BD','Bangladesh','Bangladesch'),(19,1,19,'BRB','BB','Barbados','Barbados'),(20,1,20,'BLR','BY','Belarus','Weissrussland'),(21,1,21,'BEL','BE','Belgium','Belgien'),(22,1,22,'BLZ','BZ','Belize','Belize'),(23,1,23,'BEN','BJ','Benin','Benin'),(24,1,24,'BMU','BM','Bermuda','Bermuda'),(25,1,25,'BTN','BT','Bhutan','Bhutan'),(26,1,26,'BOL','BO','Bolivia','Bolivien'),(27,1,27,'BIH','BA','Bosnia and Herzegowina','Bosnien und Herzegowina'),(28,1,28,'BWA','BW','Botswana','Botsuana'),(29,1,29,'BVT','BV','Bouvet Island','Bouvetinsel'),(30,1,30,'BRA','BR','Brazil','Brasilien'),(31,1,31,'IOT','IO','British Indian Ocean Territory','Britisches Territorium im Indischen Ozean'),(32,1,32,'BRN','BN','Brunei Darussalam','Brunei'),(33,1,33,'BGR','BG','Bulgaria','Bulgarien'),(34,1,34,'BFA','BF','Burkina Faso','Burkina Faso'),(35,1,35,'BDI','BI','Burundi','Burundi'),(36,1,36,'KHM','KH','Cambodia','Kambodscha'),(37,1,37,'CMR','CM','Cameroon','Kamerun'),(38,1,38,'CAN','CA','Canada','Kanada'),(39,1,39,'CPV','CV','Cape Verde','Kap Verde'),(40,1,40,'CYM','KY','Cayman Islands','Cayman-Inseln'),(41,1,41,'CAF','CF','Central African Republic','Zentralafrikanische Republik'),(42,1,42,'TCD','TD','Chad','Tschad'),(43,1,43,'CHL','CL','Chile','Chile'),(44,1,44,'CHN','CN','China','China'),(45,1,45,'CXR','CX','Christmas Island','Christmas Island'),(46,1,46,'CCK','CC','Cocos (Keeling) Islands','Kokosinseln (Keeling)'),(47,1,47,'COL','CO','Colombia','Kolumbien'),(48,1,48,'COM','KM','Comoros','Komoren'),(49,1,49,'COG','CG','Congo','Kongo, Republik'),(50,1,50,'COK','CK','Cook Islands','Cookinseln'),(51,1,51,'CRI','CR','Costa Rica','Costa Rica'),(52,1,52,'CIV','CI','Cote D\'Ivoire','Elfenbeinküste'),(53,1,53,'HRV','HR','Croatia','Kroatien'),(54,1,54,'CUB','CU','Cuba','Kuba'),(55,1,55,'CYP','CY','Cyprus','Zypern'),(56,1,56,'CZE','CZ','Czech Republic','Tschechien'),(57,1,57,'DNK','DK','Denmark','Dänemark'),(58,1,58,'DJI','DJ','Djibouti','Dschibuti'),(59,1,59,'DMA','DM','Dominica','Dominica'),(60,1,60,'DOM','DO','Dominican Republic','Dominikanische Republik'),(61,1,61,'TMP','TL','East Timor','Osttimor'),(62,1,62,'ECU','EC','Ecuador','Ecuador'),(63,1,63,'EGY','EG','Egypt','Ägypten'),(64,1,64,'SLV','SV','El Salvador','El Salvador'),(65,1,65,'GNQ','GQ','Equatorial Guinea','Äquatorial-Guinea'),(66,1,66,'ERI','ER','Eritrea','Eritrea'),(67,1,67,'EST','EE','Estonia','Estland'),(68,1,68,'ETH','ET','Ethiopia','Äthiopien'),(69,1,69,'FLK','FK','Falkland Islands (Malvinas)','Falklandinseln'),(70,1,70,'FRO','FO','Faroe Islands','Färöer'),(71,1,71,'FJI','FJ','Fiji','Fidschi'),(72,1,72,'FIN','FI','Finland','Finnland'),(73,1,73,'FRA','FR','France','Frankreich'),(74,1,74,'FXX','FX','France Metropolitan','Frankreich, Metropolitan'),(75,1,75,'GUF','GF','French Guiana','Französisch-Guyana'),(76,1,76,'PYF','PF','French Polynesia','Franz. Polynesien'),(77,1,77,'ATF','TF','French Southern Territories','Französiche Süd- und Antarktisgebiete'),(78,1,78,'GAB','GA','Gabon','Gabun'),(79,1,79,'GMB','GM','Gambia','Gambia'),(80,1,80,'GEO','GE','Georgia','Georgien'),(81,1,81,'DEU','DE','Germany','Deutschland'),(82,1,82,'GHA','GH','Ghana','Ghana'),(83,1,83,'GIB','GI','Gibraltar','Gibraltar'),(84,1,84,'GRC','GR','Greece','Griechenland'),(85,1,85,'GRL','GL','Greenland','Grönland'),(86,1,86,'GRD','GD','Grenada','Grenada'),(87,1,87,'GLP','GP','Guadeloupe','Guadeloupe'),(88,1,88,'GUM','GU','Guam','Guam'),(89,1,89,'GTM','GT','Guatemala','Guatemala'),(90,1,90,'GIN','GN','Guinea','Guinea'),(91,1,91,'GNB','GW','Guinea-bissau','Guinea-Bissau'),(92,1,92,'GUY','GY','Guyana','Guyana'),(93,1,93,'HTI','HT','Haiti','Haiti'),(94,1,94,'HMD','HM','Heard and Mc Donald Islands','Heard und McDonaldinseln'),(95,1,95,'HND','HN','Honduras','Honduras'),(96,1,96,'HKG','HK','Hong Kong','Hong Kong'),(97,1,97,'HUN','HU','Hungary','Ungarn'),(98,1,98,'ISL','IS','Iceland','Island'),(99,1,99,'IND','IN','India','Indien'),(100,1,100,'IDN','ID','Indonesia','Indonesien'),(101,1,101,'IRN','IR','Iran (Islamic Republic of)','Iran'),(102,1,102,'IRQ','IQ','Iraq','Irak'),(103,1,103,'IRL','IE','Ireland','Irland'),(104,1,104,'ISR','IL','Israel','Israel'),(105,1,105,'ITA','IT','Italy','Italien'),(106,1,106,'JAM','JM','Jamaica','Jamaika'),(107,1,107,'JPN','JP','Japan','Japan'),(108,1,108,'JOR','JO','Jordan','Jordanien'),(109,1,109,'KAZ','KZ','Kazakhstan','Kasachstan'),(110,1,110,'KEN','KE','Kenya','Kenia'),(111,1,111,'KIR','KI','Kiribati','Kiribati'),(112,1,112,'PRK','KP','Korea Democratic People\'s Republic of','Korea Demokratische Volksrepublik'),(113,1,113,'KOR','KR','Korea Republic of','Korea'),(114,1,114,'KWT','KW','Kuwait','Kuwait'),(115,1,115,'KGZ','KG','Kyrgyzstan','Kirgistan'),(116,1,116,'LAO','LA','Lao People\'s Democratic Republic','Laos'),(117,1,117,'LVA','LV','Latvia','Lettland'),(118,1,118,'LBN','LB','Lebanon','Libanon'),(119,1,119,'LSO','LS','Lesotho','Lesotho'),(120,1,120,'LBR','LR','Liberia','Liberia'),(121,1,121,'LBY','LY','Libyan Arab Jamahiriya','Libyen'),(122,1,122,'LIE','LI','Liechtenstein','Liechtenstein'),(123,1,123,'LTU','LT','Lithuania','Litauen'),(124,1,124,'LUX','LU','Luxembourg','Luxemburg'),(125,1,125,'MAC','MO','Macau','Makao'),(126,1,126,'MKD','MK','Macedonia The Former Yugoslav Republic of','Mazedonien'),(127,1,127,'MDG','MG','Madagascar','Madagaskar'),(128,1,128,'MWI','MW','Malawi','Malawi'),(129,1,129,'MYS','MY','Malaysia','Malaysia'),(130,1,130,'MDV','MV','Maldives','Malediven'),(131,1,131,'MLI','ML','Mali','Mali'),(132,1,132,'MLT','MT','Malta','Malta'),(133,1,133,'MHL','MH','Marshall Islands','Marshallinseln'),(134,1,134,'MTQ','MQ','Martinique','Martinique'),(135,1,135,'MRT','MR','Mauritania','Mauretanien'),(136,1,136,'MUS','MU','Mauritius','Mauritius'),(137,1,137,'MYT','YT','Mayotte','Mayott'),(138,1,138,'MEX','MX','Mexico','Mexiko'),(139,1,139,'FSM','FM','Micronesia Federated States of','Mikronesien'),(140,1,140,'MDA','MD','Moldova Republic of','Moldawien'),(141,1,141,'MCO','MC','Monaco','Monaco'),(142,1,142,'MNG','MN','Mongolia','Mongolei'),(143,1,143,'MSR','MS','Montserrat','Montserrat'),(144,1,144,'MAR','MA','Morocco','Marokko'),(145,1,145,'MOZ','MZ','Mozambique','Mosambik'),(146,1,146,'MMR','MM','Myanmar','Myanmar'),(147,1,147,'NAM','NA','Namibia','Namibia'),(148,1,148,'NRU','NR','Nauru','Nauru'),(149,1,149,'NPL','NP','Nepal','Nepal'),(150,1,150,'NLD','NL','Netherlands','Niederlande'),(151,1,151,'ANT','AN','Netherlands Antilles','Niederländisch-Antillen'),(152,1,152,'NCL','NC','New Caledonia','Neukaledonien'),(153,1,153,'NZL','NZ','New Zealand','Neuseeland'),(154,1,154,'NIC','NI','Nicaragua','Nicaragua'),(155,1,155,'NER','NE','Niger','Niger'),(156,1,156,'NGA','NG','Nigeria','Nigeria'),(157,1,157,'NIU','NU','Niue','Niue'),(158,1,158,'NFK','NF','Norfolk Island','Norfolkinsel'),(159,1,159,'MNP','MP','Northern Mariana Islands','Nördliche Marianen'),(160,1,160,'NOR','NO','Norway','Norwegen'),(161,1,161,'OMN','OM','Oman','Oman'),(162,1,162,'PAK','PK','Pakistan','Pakistan'),(163,1,163,'PLW','PW','Palau','Palau'),(164,1,164,'PAN','PA','Panama','Panama'),(165,1,165,'PNG','PG','Papua New Guinea','Papua-Neuguinea'),(166,1,166,'PRY','PY','Paraguay','Paraguay'),(167,1,167,'PER','PE','Peru','Peru'),(168,1,168,'PHL','PH','Philippines','Philippinen'),(169,1,169,'PCN','PN','Pitcairn','Pitcairn'),(170,1,170,'POL','PL','Poland','Polen'),(171,1,171,'PRT','PT','Portugal','Portugal'),(172,1,172,'PRI','PR','Puerto Rico','Puerto Rico'),(173,1,173,'QAT','QA','Qatar','Katar'),(174,1,174,'REU','RE','Reunion','Reunion'),(175,1,175,'ROM','RO','Romania','Rumänien'),(176,1,176,'RUS','RU','Russian Federation','Russische Föderation'),(177,1,177,'RWA','RW','Rwanda','Ruanda'),(178,1,178,'KNA','KN','Saint Kitts and Nevis','St. Kitts und Nevis'),(179,1,179,'LCA','LC','Saint Lucia','St. Lucia'),(180,1,180,'VCT','VC','Saint Vincent and the Grenadines','St. Vincent und die Grenadinen'),(181,1,181,'WSM','WS','Samoa','Samoa'),(182,1,182,'SMR','SM','San Marino','San Marino'),(183,1,183,'STP','ST','Sao Tome and Principe','Sao Tomé und Príncipe'),(184,1,184,'SAU','SA','Saudi Arabia','Saudi-Arabien'),(185,1,185,'SEN','SN','Senegal','Senegal'),(186,1,186,'SYC','SC','Seychelles','Seychellen'),(187,1,187,'SLE','SL','Sierra Leone','Sierra Leone'),(188,1,188,'SGP','SG','Singapore','Singapur'),(189,1,189,'SVK','SK','Slovakia (Slovak Republic)','Slowakei'),(190,1,190,'SVN','SI','Slovenia','Slowenien'),(191,1,191,'SLB','SB','Solomon Islands','Salomonen'),(192,1,192,'SOM','SO','Somalia','Somalia'),(193,1,193,'ZAF','ZA','South Africa','Republik Südafrika'),(194,1,194,'SGS','GS','South Georgia and the South Sandwich Islands','Südgeorgien und die Südlichen Sandwichinseln'),(195,1,195,'ESP','ES','Spain','Spanien'),(196,1,196,'LKA','LK','Sri Lanka','Sri Lanka'),(197,1,197,'SHN','SH','St. Helena','St. Helena'),(198,1,198,'SPM','PM','St. Pierre and Miquelon','St. Pierre und Miquelon'),(199,1,199,'SDN','SD','Sudan','Sudan'),(200,1,200,'SUR','SR','Suriname','Suriname'),(201,1,201,'SJM','SJ','Svalbard and Jan Mayen Islands','Svalbard und Jan Mayen'),(202,1,202,'SWZ','SZ','Swaziland','Swasiland'),(203,1,203,'SWE','SE','Sweden','Schweden'),(204,1,204,'CHE','CH','Switzerland','Schweiz'),(205,1,205,'SYR','SY','Syrian Arab Republic','Syrien'),(206,1,206,'TWN','TW','Taiwan','Taiwan'),(207,1,207,'TJK','TJ','Tajikistan','Tadschikistan'),(208,1,208,'TZA','TZ','Tanzania United Republic of','Tansania'),(209,1,209,'THA','TH','Thailand','Thailand'),(210,1,210,'TGO','TG','Togo','Togo'),(211,1,211,'TKL','TK','Tokelau','Tokelau'),(212,1,212,'TON','TO','Tonga','Tonga'),(213,1,213,'TTO','TT','Trinidad and Tobago','Trinidad und Tobago'),(214,1,214,'TUN','TN','Tunisia','Tunesien'),(215,1,215,'TUR','TR','Turkey','Türkei'),(216,1,216,'TKM','TM','Turkmenistan','Turkmenistan'),(217,1,217,'TCA','TC','Turks and Caicos Islands','Turks- und Caicosinseln'),(218,1,218,'TUV','TV','Tuvalu','Tuvalu'),(219,1,219,'UGA','UG','Uganda','Uganda'),(220,1,220,'UKR','UA','Ukraine','Ukraine'),(221,1,221,'ARE','AE','United Arab Emirates','Vereinigte Arabische Emirate'),(222,1,222,'GBR','GB','United Kingdom','Vereinigtes Königreich'),(223,1,223,'USA','US','United States','USA'),(224,1,224,'UMI','UM','United States Minor Outlying Islands','United States Minor Outlying Islands'),(225,1,225,'URY','UY','Uruguay','Uruguay'),(226,1,226,'UZB','UZ','Uzbekistan','Usbekistan'),(227,1,227,'VUT','VU','Vanuatu','Vanuatu'),(228,1,228,'VAT','VA','Vatican City State (Holy See)','Vatikanstadt'),(229,1,229,'VEN','VE','Venezuela','Venezuela'),(230,1,230,'VNM','VN','Viet Nam','Vietnam'),(231,1,231,'VGB','VG','Virgin Islands (British)','Britische Jungferninseln'),(232,1,232,'VIR','VI','Virgin Islands (U.S.)','Vereinigte Staaten von Amerika'),(233,1,233,'WLF','WF','Wallis and Futuna Islands','Wallis und Futuna'),(234,1,234,'ESH','EH','Western Sahara','Westsahara'),(235,1,235,'YEM','YE','Yemen','Jemen'),(236,1,236,'YUG','YU','Yugoslavia','Yugoslavia'),(237,1,237,'ZAR','ZR','Zaire','Zaire'),(238,1,238,'ZMB','ZM','Zambia','Sambia'),(239,1,239,'ZWE','ZW','Zimbabwe','Simbabwe');
/*!40000 ALTER TABLE `japzd_jshopping_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_coupons`
--

DROP TABLE IF EXISTS `japzd_jshopping_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_type` tinyint(4) NOT NULL default '0' COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL default '',
  `coupon_value` decimal(12,2) NOT NULL default '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL default '0000-00-00',
  `coupon_expire_date` date NOT NULL default '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_coupons`
--

LOCK TABLES `japzd_jshopping_coupons` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_jshopping_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_currencies`
--

DROP TABLE IF EXISTS `japzd_jshopping_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_currencies` (
  `currency_id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(64) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_code_num` varchar(3) NOT NULL,
  `currency_ordering` int(11) NOT NULL,
  `currency_value` decimal(14,6) NOT NULL,
  `currency_publish` tinyint(1) NOT NULL,
  PRIMARY KEY  (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_currencies`
--

LOCK TABLES `japzd_jshopping_currencies` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_currencies` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_currencies` VALUES (1,'Euro','EUR','EUR','978',2,'1.000000',0),(2,'Peso','PHP','PHP','',1,'1.000000',1);
/*!40000 ALTER TABLE `japzd_jshopping_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_delivery_times`
--

DROP TABLE IF EXISTS `japzd_jshopping_delivery_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_delivery_times` (
  `id` int(11) NOT NULL auto_increment,
  `days` decimal(8,2) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_delivery_times`
--

LOCK TABLES `japzd_jshopping_delivery_times` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_delivery_times` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_delivery_times` VALUES (1,'0.00','2-5 days'),(2,'0.00','5-10 days');
/*!40000 ALTER TABLE `japzd_jshopping_delivery_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_free_attr`
--

DROP TABLE IF EXISTS `japzd_jshopping_free_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_free_attr` (
  `id` int(11) NOT NULL auto_increment,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_free_attr`
--

LOCK TABLES `japzd_jshopping_free_attr` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_free_attr` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_free_attr` VALUES (1,1,0,0,'Label','');
/*!40000 ALTER TABLE `japzd_jshopping_free_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_import_export`
--

DROP TABLE IF EXISTS `japzd_jshopping_import_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_import_export` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_import_export`
--

LOCK TABLES `japzd_jshopping_import_export` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_import_export` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_import_export` VALUES (1,'Simple Export','simpleexport','Simple Export in CSV iso-8859-1','filename=export\n',1355902965,1),(2,'Simple Import','simpleimport','Simple Import in CSV iso-8859-1','',0,0);
/*!40000 ALTER TABLE `japzd_jshopping_import_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_languages`
--

DROP TABLE IF EXISTS `japzd_jshopping_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_languages` (
  `id` int(11) NOT NULL auto_increment,
  `language` varchar(32) default NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_languages`
--

LOCK TABLES `japzd_jshopping_languages` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_languages` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_languages` VALUES (1,'en-GB','English',1,0);
/*!40000 ALTER TABLE `japzd_jshopping_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_manufacturers`
--

DROP TABLE IF EXISTS `japzd_jshopping_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_manufacturers`
--

LOCK TABLES `japzd_jshopping_manufacturers` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_manufacturers` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_manufacturers` VALUES (1,'','',1,12,3,1,'New York factory','','','','','',''),(2,'','',1,12,3,2,'Gvadelupa factory','','','','','','');
/*!40000 ALTER TABLE `japzd_jshopping_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_order_history`
--

DROP TABLE IF EXISTS `japzd_jshopping_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `order_status_id` tinyint(1) NOT NULL,
  `status_date_added` datetime NOT NULL,
  `customer_notify` int(1) default NULL,
  `comments` text,
  PRIMARY KEY  (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_order_history`
--

LOCK TABLES `japzd_jshopping_order_history` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_order_history` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_order_history` VALUES (1,1,1,'2012-12-14 13:33:46',1,NULL),(2,2,1,'2012-12-14 13:35:59',1,NULL),(3,3,1,'2012-12-14 13:38:01',1,NULL),(4,3,3,'2012-12-14 13:38:16',1,''),(5,4,1,'2012-12-14 13:38:22',1,NULL),(6,5,1,'2012-12-14 13:38:23',1,NULL),(7,6,1,'2012-12-17 10:59:29',1,NULL),(8,7,1,'2012-12-18 09:25:56',1,NULL),(9,8,1,'2012-12-18 09:36:27',1,NULL),(10,9,1,'2012-12-18 09:40:40',1,NULL),(11,10,1,'2012-12-18 09:42:40',1,NULL),(12,11,1,'2012-12-18 09:43:55',1,NULL),(13,12,1,'2012-12-18 09:45:06',1,NULL),(14,13,1,'2012-12-18 09:47:23',1,NULL),(15,14,1,'2012-12-18 10:08:28',1,NULL),(16,15,1,'2012-12-18 10:50:29',1,NULL),(17,15,3,'2012-12-18 10:58:07',1,''),(18,16,1,'2012-12-18 10:58:13',1,NULL),(19,17,1,'2012-12-18 11:04:43',1,NULL),(20,18,1,'2012-12-18 11:08:57',1,NULL),(21,19,1,'2012-12-18 11:11:23',1,NULL),(22,20,1,'2012-12-18 14:27:43',1,NULL),(23,21,1,'2012-12-18 14:35:19',1,NULL),(24,22,1,'2012-12-19 11:23:04',1,NULL),(25,21,2,'2012-12-19 12:00:30',1,''),(26,21,6,'2012-12-19 12:18:52',0,''),(27,23,1,'2012-12-19 12:19:51',1,NULL),(28,20,6,'2012-12-19 12:23:48',1,''),(29,24,6,'2012-12-19 12:31:46',1,NULL),(30,25,6,'2012-12-19 13:47:02',1,NULL),(31,26,6,'2012-12-19 14:04:58',1,NULL),(32,27,6,'2012-12-19 15:01:20',1,NULL),(33,29,6,'2012-12-19 15:44:43',1,NULL),(34,30,6,'2012-12-19 15:46:32',1,NULL),(35,31,6,'2012-12-19 15:48:58',1,NULL),(36,32,6,'2012-12-19 15:50:31',1,NULL),(37,26,7,'2012-12-19 15:51:45',0,''),(38,33,7,'2012-12-19 16:00:55',1,NULL),(39,34,7,'2012-12-20 10:14:41',1,NULL),(40,35,6,'2012-12-20 11:14:56',1,NULL),(41,36,6,'2012-12-20 11:44:00',1,NULL),(42,37,6,'2012-12-20 11:51:35',1,NULL),(43,38,6,'2012-12-20 11:57:21',1,NULL),(44,39,6,'2012-12-20 12:08:09',1,NULL),(45,40,6,'2012-12-20 12:12:39',1,NULL),(46,41,6,'2012-12-20 12:17:29',1,NULL),(47,42,6,'2012-12-20 12:21:56',1,NULL),(48,43,6,'2012-12-20 12:25:11',1,NULL),(49,44,6,'2012-12-20 12:27:37',1,NULL),(50,45,6,'2012-12-20 12:31:46',1,NULL),(51,46,6,'2012-12-20 12:36:03',1,NULL),(52,46,6,'2012-12-20 12:36:42',1,''),(53,47,7,'2012-12-20 12:39:43',1,NULL),(54,47,7,'2012-12-20 12:40:37',1,'');
/*!40000 ALTER TABLE `japzd_jshopping_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_order_item`
--

DROP TABLE IF EXISTS `japzd_jshopping_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_ean` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `product_item_price` decimal(12,2) NOT NULL,
  `product_tax` decimal(12,2) NOT NULL,
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `extra_fields` text NOT NULL,
  `files` text NOT NULL,
  `weight` float(8,4) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`order_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_order_item`
--

LOCK TABLES `japzd_jshopping_order_item` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_order_item` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_order_item` VALUES (1,1,10,'88954','Water 2,5 L','1.00','35.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',2.5000,'thumb_6ab122ff4342c618f743f6e66a66829a.jpg','',0,1,''),(2,2,10,'88954','Water 2,5 L','2.00','35.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',2.5000,'thumb_6ab122ff4342c618f743f6e66a66829a.jpg','',0,1,''),(3,3,10,'88954','Water 2,5 L','2.00','35.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',2.5000,'thumb_6ab122ff4342c618f743f6e66a66829a.jpg','',0,1,''),(4,4,10,'88954','Water 2,5 L','2.00','35.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',2.5000,'thumb_6ab122ff4342c618f743f6e66a66829a.jpg','',0,1,''),(5,5,10,'88954','Water 2,5 L','2.00','35.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',2.5000,'thumb_6ab122ff4342c618f743f6e66a66829a.jpg','',0,1,''),(6,6,9,'012122','Water 1,5L','1.00','20.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',1.5000,'thumb_238351c2bd98aadea04bbae5df6cb102.jpg','',1,1,''),(7,7,11,'','A Backyard Flock for Poultry Meat Production','1.00','25.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_undefined.png','',1,1,''),(8,8,11,'','A Backyard Flock for Poultry Meat Production','1.00','25.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_undefined.png','',1,1,''),(9,9,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(10,9,11,'','A Backyard Flock for Poultry Meat Production','1.00','25.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_undefined.png','',1,1,''),(11,10,13,'','Small Scale Prawn Hatchery Management And Operations','1.00','30.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_reprints.jpg','',0,1,''),(12,11,13,'','Small Scale Prawn Hatchery Management And Operations','1.00','30.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_reprints.jpg','',0,1,''),(13,12,17,'','Rheological Behavior of Frozen and Thawed Low-Moisture','1.00','30.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_reprints1.jpg','',0,1,''),(14,13,13,'','Small Scale Prawn Hatchery Management And Operations','1.00','30.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_reprints.jpg','',0,1,''),(15,14,13,'','Small Scale Prawn Hatchery Management And Operations','1.00','30.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_reprints.jpg','',0,1,''),(16,15,18,'','Loofah: tube bath sponge','1.00','20.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_periodicals.jpg','',0,1,''),(17,16,18,'','Loofah: tube bath sponge','1.00','20.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_periodicals.jpg','',0,1,''),(18,17,17,'','Rheological Behavior of Frozen and Thawed Low-Moisture','1.00','30.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_reprints1.jpg','',0,1,''),(19,18,17,'','Rheological Behavior of Frozen and Thawed Low-Moisture','1.00','30.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_reprints1.jpg','',0,1,''),(20,19,16,'','A recipe book on traditional rice food products of the Philippines','1.00','72.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_books2.jpg','',0,1,''),(21,20,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:0:\"\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(22,21,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:0:\"\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(23,22,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:0:\"\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(24,23,12,'','10 Hakbang sa Paggawa ng Kompost','2.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(25,24,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(26,25,11,'','A Backyard Flock for Poultry Meat Production','1.00','25.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_undefined.png','',1,1,''),(27,26,14,'','A business planning manual: a project feasibility study guidebook for Filipino students & enterprene','1.00','618.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_books.jpg','',0,1,''),(28,27,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(29,29,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(30,30,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(31,31,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(32,32,18,'','Loofah: tube bath sponge','1.00','20.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_periodicals.jpg','',0,1,''),(33,33,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(34,34,17,'','Rheological Behavior of Frozen and Thawed Low-Moisture','1.00','30.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_reprints1.jpg','',0,1,''),(35,34,18,'','Loofah: tube bath sponge','1.00','20.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_periodicals.jpg','',0,1,''),(36,35,16,'','A recipe book on traditional rice food products of the Philippines','1.00','72.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_books2.jpg','',0,1,''),(37,36,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(38,37,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(39,38,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(40,39,18,'','Loofah: tube bath sponge','1.00','20.00','19.00','','','a:0:{}','a:0:{}','','a:0:{}',0.0000,'thumb_TLRC_periodicals.jpg','',0,1,''),(41,40,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(42,41,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(43,42,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(44,43,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(45,44,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(46,45,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(47,46,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,''),(48,47,12,'','10 Hakbang sa Paggawa ng Kompost','1.00','75.00','19.00','','','a:0:{}','a:0:{}','','a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"3\";s:4:\"file\";s:40:\"8_Steps_in_Farming_Eucheuma_Seaweeds.pdf\";s:10:\"file_descr\";s:36:\"8 Steps in Farming Eachuema Seaweeds\";}}',0.0000,'thumb_TLRC_pamph_feasib.jpg','',0,1,'');
/*!40000 ALTER TABLE `japzd_jshopping_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_order_status`
--

DROP TABLE IF EXISTS `japzd_jshopping_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_order_status` (
  `status_id` int(11) NOT NULL auto_increment,
  `status_code` char(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  PRIMARY KEY  (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_order_status`
--

LOCK TABLES `japzd_jshopping_order_status` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_order_status` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_order_status` VALUES (1,'P','Pending','Offen'),(2,'C','Confirmed','Bestätigt'),(3,'X','Cancelled','Abgebrochen'),(4,'R','Refunded','Gutschrift'),(5,'S','Shipped','Gesendet'),(6,'O','Paid','Bezahlt'),(7,'F','Complete','Abgeschlossen');
/*!40000 ALTER TABLE `japzd_jshopping_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_orders`
--

DROP TABLE IF EXISTS `japzd_jshopping_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` decimal(12,2) NOT NULL,
  `order_subtotal` decimal(12,2) NOT NULL,
  `order_tax` decimal(12,2) NOT NULL,
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(12,2) NOT NULL,
  `order_payment` decimal(12,2) NOT NULL,
  `order_discount` decimal(12,2) NOT NULL,
  `shipping_tax` decimal(8,2) NOT NULL,
  `shipping_tax_ext` text NOT NULL,
  `payment_tax` decimal(8,2) NOT NULL,
  `payment_tax_ext` text NOT NULL,
  `order_package` decimal(12,2) NOT NULL,
  `package_tax_ext` text NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_exchange` decimal(14,6) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `order_m_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `firma_name` varchar(255) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(100) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL,
  `file_hash` varchar(64) NOT NULL,
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_orders`
--

LOCK TABLES `japzd_jshopping_orders` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_orders` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_orders` VALUES (1,'00000001',822,'35.00','35.00','5.59','a:1:{s:5:\"19.00\";d:5.5882352941176467453487930470146238803863525390625;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-14 13:33:46','2012-12-14 13:33:46',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','Testing',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','87cd97a00b47344f011c30c0d7a55b6e','f5bf063b728fa78754a0bc97850e607d','','',0,0,1,'en-GB',''),(2,'00000002',822,'70.00','70.00','11.18','a:1:{s:5:\"19.00\";d:11.176470588235293490697586094029247760772705078125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-14 13:35:59','2012-12-14 13:35:59',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','ebfee9706cd5192f372f190badd430dd','64d8d6273ca050d7ed79a0cf4dbc52b8','','',0,0,1,'en-GB',''),(3,'00000003',822,'70.00','70.00','11.18','a:1:{s:5:\"19.00\";d:11.176470588235293490697586094029247760772705078125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',3,0,'2012-12-14 13:38:01','2012-12-14 13:38:01',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','3631ec1907b76a8fd1d3d70b8895e316','1e4b548de53a8655d10ed5da64a98401','','',0,0,1,'en-GB',''),(4,'00000004',822,'70.00','70.00','11.18','a:1:{s:5:\"19.00\";d:11.176470588235293490697586094029247760772705078125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-14 13:38:22','2012-12-14 13:38:22',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','52c2e0279edc0d85e1b3205b8e7dc80c','8aace75de7470da192c591e8578d29d3','','',0,0,1,'en-GB',''),(5,'00000005',822,'70.00','70.00','11.18','a:1:{s:5:\"19.00\";d:11.176470588235293490697586094029247760772705078125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-14 13:38:23','2012-12-14 13:38:23',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','80519f3490b9288bf60d0f1051c0b709','b95cc559db156e7a1b7ad7c84d8ac710','','',0,0,1,'en-GB',''),(6,'00000006',822,'20.00','20.00','3.19','a:1:{s:5:\"19.00\";d:3.19327731092436994941863304120488464832305908203125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-17 10:59:29','2012-12-17 10:59:29',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','386aa717b0bce0064c51c486c49f1d49','998c5d50f92ac684c0656c6cce86f699','','',0,0,1,'en-GB',''),(7,'00000007',822,'25.00','25.00','3.99','a:1:{s:5:\"19.00\";d:3.991596638655462214728686376474797725677490234375;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 09:25:56','2012-12-18 09:25:56',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','6bde475d721419a85e53a5e2ecaa7c80','3c31408c3ba5a32c51061c714becb7b2','','',0,0,1,'en-GB',''),(8,'00000008',822,'25.00','25.00','3.99','a:1:{s:5:\"19.00\";d:3.991596638655462214728686376474797725677490234375;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 09:36:27','2012-12-18 09:36:27',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','1f57bd8e173bc16e56ea587e73b88e93','b1203e400b160ae99f227c8a7037485f','','',0,0,1,'en-GB',''),(9,'00000009',822,'100.00','100.00','15.97','a:1:{s:5:\"19.00\";d:15.9663865546218488589147455058991909027099609375;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 09:40:40','2012-12-18 09:40:40',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','d3c47c86c1ca0837c4b8a501d0508195','1f8f62b58f1b270b33bc5ee4480e8a50','','',0,0,1,'en-GB',''),(10,'00000010',-1,'30.00','30.00','4.79','a:1:{s:5:\"19.00\";d:4.78991596638655448003873971174471080303192138671875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 09:42:40','2012-12-18 09:42:40',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'greg','hermo','',0,'','','','greg@solutionsresource.com','10b lansang street','','','1119','Quezon City','',168,'0915 605 4626','','','','','',1,'greg','hermo','','greg@solutionsresource.com','10b lansang street','','','1119','Quezon City','',168,'0915 605 4626','','','','','','','c9a45cf556ff24c60c738b9fc7da900c','9a23895ea2ebd244e6033b84dc45ffe0','','',0,0,1,'en-GB',''),(11,'00000011',822,'30.00','30.00','4.79','a:1:{s:5:\"19.00\";d:4.78991596638655448003873971174471080303192138671875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 09:43:55','2012-12-18 09:43:55',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','50feefe5aa3318b79105a659d147aeea','4fef4789f4087dc9661a54e1207b8d0d','','',0,0,1,'en-GB',''),(12,'00000012',822,'30.00','30.00','4.79','a:1:{s:5:\"19.00\";d:4.78991596638655448003873971174471080303192138671875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 09:45:06','2012-12-18 09:45:06',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','90363d9bda582f70ea42f2236890abf9','8549b2ba6a321eee72943b362ffe9923','','',0,0,1,'en-GB',''),(13,'00000013',822,'30.00','30.00','4.79','a:1:{s:5:\"19.00\";d:4.78991596638655448003873971174471080303192138671875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 09:47:23','2012-12-18 09:47:23',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','e50cd8e331fa5127a7b6b46ecbd47a76','d0e86f366624d9a4c0d82f9316e86673','','',0,0,1,'en-GB',''),(14,'00000014',822,'30.00','30.00','4.79','a:1:{s:5:\"19.00\";d:4.78991596638655448003873971174471080303192138671875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 10:08:28','2012-12-18 10:08:28',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','test',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','8b2ba93bf6f602706a55651bb1ed121f','daf1bd38fcc2a2d580fb9214a5b44246','','',0,0,1,'en-GB',''),(15,'00000015',-1,'20.00','20.00','3.19','a:1:{s:5:\"19.00\";d:3.19327731092436994941863304120488464832305908203125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',3,0,'2012-12-18 10:50:29','2012-12-18 10:50:29',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg@solutionsresource.com','10b lansang','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg@solutionsresource.com','10b lansang','','','1119','qc','',168,'','','','','','','','15b202750f1e53882ca0b4400d9d39ce','a439997af504a987d287c5eda5730397','','',0,0,1,'en-GB',''),(16,'00000016',-1,'20.00','20.00','3.19','a:1:{s:5:\"19.00\";d:3.19327731092436994941863304120488464832305908203125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 10:58:13','2012-12-18 10:58:13',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg@solutionsresource.com','10b lansang','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg@solutionsresource.com','10b lansang','','','1119','qc','',168,'','','','','','','','287cfa73a22db25e67b2cfedbc87c1e1','04dfcd02b321ff0da18058b49ae6b6f6','','',0,0,1,'en-GB',''),(17,'00000017',822,'30.00','30.00','4.79','a:1:{s:5:\"19.00\";d:4.78991596638655448003873971174471080303192138671875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 11:04:43','2012-12-18 11:04:43',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','test',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','4c58274916f87ea9cffabf0a47d68cdb','0ba052dc36599af5c0425b20c91a15e8','','',0,0,1,'en-GB',''),(18,'00000018',822,'30.00','30.00','4.79','a:1:{s:5:\"19.00\";d:4.78991596638655448003873971174471080303192138671875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 11:08:57','2012-12-18 11:08:57',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','test',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','318cb9dd9487ce73a9929946f8e1e5d2','1d193061203c0d47fa6c8f9239295338','','',0,0,1,'en-GB',''),(19,'00000019',822,'72.00','72.00','11.50','a:1:{s:5:\"19.00\";d:11.4957983193277311073643431882373988628387451171875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-18 11:11:23','2012-12-18 11:11:23',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','asdf',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','8921849dddd88d3d69add55a7e5c1c40','906551722f8d64921aac38fdc7264dd7','','',0,0,1,'en-GB',''),(20,'00000020',822,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,1,'2012-12-18 14:27:43','2012-12-19 12:23:48',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','20_01694c38914ac81c0f14855376fc3b62.pdf','0be3833300359b51a878ffdb6099d5d1','cead13ccfd759236a9c04d25d619a4da','a:1:{i:3;i:1;}','',0,0,1,'en-GB',''),(21,'00000021',822,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,1,'2012-12-18 14:35:19','2012-12-19 12:18:52',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','asdf',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','21_2ace44ae56f9f7e9d295065dcd98cc22.pdf','e1ca3ceb6eaa39757542dd13e578e053','e8c5e46f8acf99abdba37b1ad16080a1','a:1:{i:3;i:1;}','',0,0,1,'en-GB',''),(22,'00000022',-1,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-19 11:23:04','2012-12-19 11:23:04',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','asdf',0,'greg','hermo','',0,'','','','greg@solutionsresource.com','10b','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg@solutionsresource.com','10b','','','1119','qc','',168,'','','','','','','','66d8f93124b3068601909d345956a2d3','9baaf48d04905e95cf26045969bbf6db','','',0,0,1,'en-GB',''),(23,'00000023',822,'150.00','150.00','23.95','a:1:{s:5:\"19.00\";d:23.94957983193277328837211825884878635406494140625;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',1,0,'2012-12-19 12:19:51','2012-12-19 12:19:51',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','hi',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','f65fee557943829c6af6b8d8bfcc65bb','8bbd688b2a4caa5decc517b2e59e1dc5','','',0,0,1,'en-GB',''),(24,'00000024',822,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-19 12:31:46','2012-12-19 12:31:46',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','asdf',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','2c2ae9d7824320b98f49a32efdbd5702','088cd4a90baeb940bb573e2d5fe60b33','','',0,0,1,'en-GB',''),(25,'00000025',822,'25.00','25.00','3.99','a:1:{s:5:\"19.00\";d:3.991596638655462214728686376474797725677490234375;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,1,'2012-12-19 13:47:02','2012-12-19 13:47:02',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','25_378232beb2f6319767df262600910aa2.pdf','643c2dba45cb77e4f8c24b003498a788','633b5d1cdc31b95ef3c24d4af8deb41d','','',0,0,1,'en-GB',''),(26,'00000026',822,'618.00','618.00','98.67','a:1:{s:5:\"19.00\";d:98.67226890756302282170508988201618194580078125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',7,1,'2012-12-19 14:04:58','2012-12-19 15:51:45',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','asdf',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','26_e57c3e28a24b0c4f01b49a92046af5e6.pdf','de048a557a781f3da9c2b2ec233fd9ed','3f56696a78e55a936deb9b6e0d6e5662','','',0,0,1,'en-GB',''),(27,'00000027',822,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-19 14:36:20','2012-12-19 14:36:20',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','3a694200668cdcfd240fd4ebf874359b','22f43faa0bbf3c1c8f7a90e783f3922d','','',0,0,1,'en-GB',''),(29,'00000029',822,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-19 15:44:43','2012-12-19 15:44:43',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','asdf',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','1bd37d6daaeb8049e2e79e3309130179','102562260497a1e5744e4c78cc196fd1','','',0,0,1,'en-GB',''),(30,'00000030',822,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-19 15:46:32','2012-12-19 15:46:32',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','2',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','cfd3bba6f5237de7782fe3b9bc31e7a1','e8e7e29bca32741a29b9177c9093df41','','',0,0,1,'en-GB',''),(31,'00000031',822,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-19 15:48:58','2012-12-19 15:48:58',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','3',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','d0900a2cc31fa220a00f95c0245afea4','932e5cc2b9e3f3320e9a280160b8b63e','','',0,0,1,'en-GB',''),(32,'00000032',822,'20.00','20.00','3.19','a:1:{s:5:\"19.00\";d:3.19327731092436994941863304120488464832305908203125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,1,'2012-12-19 13:50:31','2012-12-19 13:50:31',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','asdf',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','32_6e8bcf5d32359eb0c9e1d3fe3ccd91e3.pdf','3d13a5fc2bdf4da0ad2a371ea9aec508','a4d0c7b29ac34bca5eebcb0237d17ffa','','',0,0,1,'en-GB',''),(33,'00000033',822,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',7,0,'2012-12-17 13:00:55','2012-12-17 13:00:55',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','asdf',1,'John','Pel','',0,'','','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',1,'John','Pel','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','','','9742c0ef2f1c6cb1e5e49064286ca03e','6c4927a673347093b259ba7776a192ff','','',0,0,1,'en-GB',''),(34,'00000034',823,'50.00','50.00','7.98','a:1:{s:5:\"19.00\";d:7.98319327731092442945737275294959545135498046875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',7,0,'2012-12-20 10:14:41','2012-12-20 10:14:41',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','4b62d4c9c983efb0320bb2f566d9133b','b3e09f2cd22872d42ed32ca7e80dbd4d','','',0,0,1,'en-GB',''),(35,'00000035',823,'72.00','72.00','11.50','a:1:{s:5:\"19.00\";d:11.4957983193277311073643431882373988628387451171875;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 11:14:56','2012-12-20 11:14:56',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','ab5e25a32561d2a4a5f1d1e716c30e82','116393cc3f8160539f62a49ae0579dfc','','',0,0,1,'en-GB',''),(36,'00000036',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 11:44:00','2012-12-20 11:44:00',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','20477d8698cf0b5d780c146b08fadd51','fce8d7685e1ace94555c9ee5b7742a57','','',0,0,1,'en-GB',''),(37,'00000037',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 11:51:35','2012-12-20 11:51:35',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','cfb33a3bf2762e4461243943f3cc8d36','2b6131158ee029e6fc01dbcb824da8da','','',0,0,1,'en-GB',''),(38,'00000038',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 11:57:21','2012-12-20 11:57:21',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','394976c3e9e67017cbf2eb6a2f9dc9b9','e54c574cbdc37690410bd4571f031efe','','',0,0,1,'en-GB',''),(39,'00000039',823,'20.00','20.00','3.19','a:1:{s:5:\"19.00\";d:3.19327731092436994941863304120488464832305908203125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 12:08:09','2012-12-20 12:08:09',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','6ba670b3843450479741c06376a19807','e3716354b8c0530bb67810bbf214e65b','','',0,0,1,'en-GB',''),(40,'00000040',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 12:12:39','2012-12-20 12:12:39',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','ca7cba9e81762e1745b57dbb4c54a5bb','f948ac976e9c5fb0030f5024b4d1dc53','','',0,0,1,'en-GB',''),(41,'00000041',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 12:17:29','2012-12-20 12:17:29',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','19aabde29e6b27fd2b4ad0d95290a2b4','b4b3a0c2179a5ee979b3d2d8e5460539','','',0,0,1,'en-GB',''),(42,'00000042',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 12:21:56','2012-12-20 12:21:56',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','ad23e58e1eb2c072b894cdd81a31f44b','8440bde357cf655c44b4d65759d0e965','','',0,0,1,'en-GB',''),(43,'00000043',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 12:25:11','2012-12-20 12:25:11',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','cb169a296e8ef2f40b5137841b576371','775792bc6af6730587a478baa5345627','','',0,0,1,'en-GB',''),(44,'00000044',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 12:27:37','2012-12-20 12:27:37',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','a7bbd2cbfe1876d758667f469d4f50d6','3ab34974e247368cef8b98a62c02bbe1','','',0,0,1,'en-GB',''),(45,'00000045',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,0,'2012-12-20 12:31:46','2012-12-20 12:31:46',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','','a52b8cfedb1ffaedb0c2f34bf4e0156a','b6af3f53dd2f75557ebe4a142805e6c3','','',0,0,1,'en-GB',''),(46,'00000046',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',6,1,'2012-12-20 12:36:03','2012-12-20 12:36:03',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','46_fdce767a8a133d28b3f6c74f7a24b21d.pdf','1acb54cc20d9dc8437d0c9707375f3b6','8e33a6fa7c3398a21a52db5133b329cd','','',0,0,1,'en-GB',''),(47,'00000047',823,'75.00','75.00','11.97','a:1:{s:5:\"19.00\";d:11.974789915966386644186059129424393177032470703125;}','0.00','0.00','0.00','0.00','a:0:{}','19.00','a:1:{s:5:\"19.00\";d:0;}','0.00','a:0:{}','PHP','PHP','1.000000',7,1,'2012-12-20 12:39:43','2012-12-20 12:39:43',0,0,3,'','','','0000-00-00 00:00:00',0,'202.90.156.240','',0,'greg','hermo','',0,'','','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,'greg','hermo','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','','47_0f09cb0b790b745103a30e780e313f6f.pdf','96b148b7c5ebba868f156e29cde03542','64ac1fb5bc4a6bba7b8391f959c19196','','',0,0,1,'en-GB','');
/*!40000 ALTER TABLE `japzd_jshopping_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_payment_method`
--

DROP TABLE IF EXISTS `japzd_jshopping_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL auto_increment,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  PRIMARY KEY  (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_payment_method`
--

LOCK TABLES `japzd_jshopping_payment_method` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_payment_method` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_payment_method` VALUES (1,'bank','pm_bank',0,1,'',1,'4.00',0,1,'',0,'Cash on delivery','','Nachnahme',''),(2,'PO','pm_purchase_order',0,2,'',1,'0.00',0,1,'',1,'Advance payment','','Vorauskasse',''),(3,'paypal','pm_paypal',1,3,'testmode=1\nemail_received=gardin_1344575780_biz@yahoo.com\ntransaction_end_status=7\ntransaction_pending_status=1\ntransaction_failed_status=3\ncheckdatareturn=0\nuse_ssl=1\naddress_override=0\n',2,'0.00',1,1,'',0,'Paypal','','Paypal',''),(4,'debit','pm_debit',0,4,'',1,'0.00',0,1,'',0,'Debit','Please insert your bankdata.','Lastschrift','Bitte tragen Sie hier Ihre Bankdaten für den Abbuchungsauftrag ein.'),(5,'ST','pm_sofortueberweisung',0,5,'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n',2,'0.00',0,1,'',0,'Sofortueberweisung','','Sofortueberweisung','');
/*!40000 ALTER TABLE `japzd_jshopping_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_product_labels`
--

DROP TABLE IF EXISTS `japzd_jshopping_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_product_labels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_product_labels`
--

LOCK TABLES `japzd_jshopping_product_labels` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_product_labels` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_product_labels` VALUES (1,'New','new.png'),(2,'Sale','sale.png');
/*!40000 ALTER TABLE `japzd_jshopping_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products`
--

DROP TABLE IF EXISTS `japzd_jshopping_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products` (
  `product_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(128) NOT NULL,
  `product_date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL default '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL,
  `product_tax_id` tinyint(3) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `product_template` varchar(64) NOT NULL default 'default',
  `product_url` varchar(255) NOT NULL,
  `product_old_price` decimal(12,2) NOT NULL,
  `product_buy_price` decimal(12,2) NOT NULL,
  `product_price` decimal(18,6) NOT NULL,
  `min_price` decimal(12,2) NOT NULL,
  `different_prices` tinyint(1) NOT NULL,
  `product_weight` decimal(14,4) NOT NULL,
  `product_thumb_image` varchar(255) NOT NULL,
  `product_name_image` varchar(255) NOT NULL,
  `product_full_image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL,
  `product_is_add_price` tinyint(1) NOT NULL,
  `add_price_unit_id` int(3) NOT NULL,
  `average_rating` float(4,2) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `hits` int(11) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `basic_price_unit_id` int(3) NOT NULL,
  `label_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `access` int(3) NOT NULL default '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `extra_field_1` varchar(32) NOT NULL,
  `extra_field_2` varchar(32) NOT NULL,
  PRIMARY KEY  (`product_id`),
  KEY `product_manufacturer_id` (`product_manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products`
--

LOCK TABLES `japzd_jshopping_products` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products` VALUES (1,0,'xt00100',120,0,'','2011-12-26 12:35:39','2011-12-26 13:12:10',1,1,1,'default','','0.00','0.00','50.000000','50.00',1,'1120.0000','thumb_9fedd69376f8f6f7e7e6c4908aa562a5.jpg','9fedd69376f8f6f7e7e6c4908aa562a5.jpg','full_9fedd69376f8f6f7e7e6c4908aa562a5.jpg',1,0,0,0.00,0,0,15,'0.0000',0,0,0,1,'Convertible','convertible','The 3 Series convertible, for the first time, is available with a 3-piece folding aluminum hardtop roof.','<p>The 3 Series convertible, for the first time, is available with a 3-piece folding aluminum hardtop  roof. The new convertible is also the center of many new technological advancements for BMW as well as the recipient of many existing safety and performance technologies that have been improved upon for the new model. The new 3 Series convertible improves upon BMW\'s \"Comfort Access\" option, by allowing the user to completely raise and lower the folding roof by simply pressing and holding the respective buttons on the key fob.</p>','','','','4','165'),(2,0,'xt00102',10000,0,'','2011-12-26 13:22:48','2011-12-26 15:31:16',1,1,1,'default','','0.00','0.00','120.000000','102.00',1,'9.0000','thumb_67c57c86a9a4a36c2219240c36d56436.jpg','67c57c86a9a4a36c2219240c36d56436.jpg','full_67c57c86a9a4a36c2219240c36d56436.jpg',1,1,0,8.50,3,0,13,'0.0000',0,0,0,1,'Coupe','coupe','The two-door iteration of the 3-Series became available in August 2006 and premiered as a 2007 model.','<p>The two-door iteration of the 3-Series became available in August 2006 and premiered as a 2007 model. It is the second BMW coupe offered with BMW xDrive, BMW\'s moniker for all-wheel-drive, after the 325ix of the late \'80s and early \'90s. The coupe\'s body is its own design and no longer derived from the saloon with two less doors like its predecessors, being longer and narrower than the E90 counterpart.</p>','','','','3','120'),(3,0,'9781741105704',12000,0,'','2011-12-26 15:38:54','2011-12-26 16:10:07',1,1,1,'default','','65.00','0.00','47.600000','40.46',1,'1500.0000','thumb_34e8560c8f5168fca957249ee1155744.jpg','34e8560c8f5168fca957249ee1155744.jpg','full_34e8560c8f5168fca957249ee1155744.jpg',2,1,0,6.33,3,0,5,'0.0000',0,2,0,1,'Saloon (E90)','saloon-e90','The saloon (sedan) model of the 3 series was the first model sold of the 5th generation BMW 3 series','<p>The saloon (sedan) model of the 3 series was the first model sold of the 5th generation BMW 3 series. Debuting in the US in 2006, the E90 came in two trims, the 325i/x and 330i/x models. Later, the US E90 received an engine boost with the debuts of the 2007 328i/x and 335i/x models.<br /> BMW released an M3 variant of the E90 saloon for the 2008 model year. The M3 features the same V8 Engine as the Coupe. It separated itself from the standard E90 by utilizing the E92 coupe\'s front fascia.</p>','','','','5','170'),(4,0,'9780007331680',100,0,'','2011-12-26 15:42:25','2011-12-26 15:43:00',1,1,1,'default','','0.00','0.00','70.000000','70.00',0,'1800.0000','thumb_ef8c670fbde778d44656d530a2038362.jpg','ef8c670fbde778d44656d530a2038362.jpg','full_ef8c670fbde778d44656d530a2038362.jpg',1,0,0,6.00,3,0,4,'0.0000',0,0,0,1,'Touring (E91)','touring-e91','The Sports Touring model of the 3-Series is available with both rear-wheel drive and xDrive AWD.','<p>The Sports Touring model of the 3-Series is available with both rear-wheel drive and xDrive AWD. This model features a large (optional) Panoramic roof, which stretches far enough for passengers in the rear to enjoy.</p>','','','','3','190'),(5,0,'10000001',133,0,'','2011-12-26 15:46:47','2011-12-26 15:48:12',1,1,1,'default','','0.00','0.00','141.690000','141.69',0,'120.0000','thumb_db6b1b47578673a4945ccc3a0566f678.jpg','db6b1b47578673a4945ccc3a0566f678.jpg','full_db6b1b47578673a4945ccc3a0566f678.jpg',2,0,0,3.00,2,0,4,'0.0000',0,0,0,1,'M1','','','','','','','',''),(6,0,'55889966',122,0,'','2011-12-26 15:49:46','2011-12-26 15:49:46',1,1,1,'default','','0.00','0.00','69.000000','69.00',0,'150.0000','thumb_a27e5e49d03b538340aeec1350722382.jpg','a27e5e49d03b538340aeec1350722382.jpg','full_a27e5e49d03b538340aeec1350722382.jpg',1,0,0,0.00,0,0,1,'0.0000',0,0,0,1,'M2','','','','','','','',''),(7,0,'1312313',12,0,'','2011-12-26 15:55:33','2011-12-26 15:58:36',1,1,1,'default','','0.00','0.00','7.000000','7.00',0,'0.0000','thumb_3ee58838349bf67da57aaf6c1248fc0c.jpg','3ee58838349bf67da57aaf6c1248fc0c.jpg','full_3ee58838349bf67da57aaf6c1248fc0c.jpg',1,0,0,5.00,2,0,5,'0.0000',0,0,0,1,'mp3','mp3','mp3','','','','','',''),(8,0,'11455',12,0,'','2011-12-26 16:00:40','2011-12-26 16:00:40',1,1,1,'default','','0.00','0.00','78.000000','78.00',0,'0.3000','thumb_3731bd14eb4d84fa1724fabee6fdece2.jpg','3731bd14eb4d84fa1724fabee6fdece2.jpg','full_3731bd14eb4d84fa1724fabee6fdece2.jpg',2,0,0,6.50,2,0,3,'0.0000',0,0,0,1,'Video','video','','','','','','',''),(9,0,'012122',12,0,'','2011-12-26 16:04:54','2011-12-26 16:07:12',1,1,1,'default','','0.00','0.00','20.000000','20.00',0,'1.5000','thumb_238351c2bd98aadea04bbae5df6cb102.jpg','238351c2bd98aadea04bbae5df6cb102.jpg','full_238351c2bd98aadea04bbae5df6cb102.jpg',0,0,0,7.50,2,1,7,'1.5000',2,0,0,1,'Water 1,5L','water-15l','Cool water Water 1,5L','','','','','',''),(10,0,'88954',10000,0,'','2011-12-26 16:11:38','2012-12-14 11:08:02',1,1,2,'default','','0.00','0.00','35.000000','28.00',1,'2.5000','thumb_6ab122ff4342c618f743f6e66a66829a.jpg','6ab122ff4342c618f743f6e66a66829a.jpg','full_6ab122ff4342c618f743f6e66a66829a.jpg',0,1,3,8.50,4,0,24,'2.5000',2,1,0,1,'Water 2,5 L','water-25-l','','','','','','',''),(11,0,'',1,0,'','2012-12-17 18:03:13','2012-12-18 13:55:28',1,1,2,'default','','0.00','0.00','25.000000','25.00',0,'0.0000','thumb_TLRC_undefined.png','TLRC_undefined.png','full_TLRC_undefined.png',0,0,3,0.00,0,1,12,'0.0000',1,1,0,1,'A Backyard Flock for Poultry Meat Production','','A Backyard Flock for Poultry Meat Production','<table class=\"form\" style=\"font-family: Verdana; font-size: 14px; border: 1px solid #000099;\" width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Title:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">A Backyard Flock for Poultry Meat Production</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Personal Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Brown, Leroy C.</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Corporate Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Publisher:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\">Univ. of Maine Cooperative Extension; US</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">ISBN:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Edition:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">xxx</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">No. of Pages:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">5  pp.</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Date of Publication:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">000</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Country of Origin:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">United States</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Descriptors:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">POULTRY</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Price:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"><strong>Php  25.0</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','',''),(12,0,'',1,1,'','2012-12-17 18:06:46','2012-12-19 11:22:36',1,1,2,'default','','0.00','0.00','75.000000','75.00',0,'0.0000','thumb_TLRC_pamph_feasib.jpg','TLRC_pamph_feasib.jpg','full_TLRC_pamph_feasib.jpg',0,0,3,10.00,1,0,60,'0.0000',1,0,0,1,'10 Hakbang sa Paggawa ng Kompost','','10 Hakbang sa Paggawa ng Kompost','<table class=\"form\" style=\"font-family: Verdana; font-size: 14px; border: 1px solid #000099;\" width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Title:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">10 Hakbang sa Paggawa ng Kompost</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Personal Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Corporate Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Department of Agriculture; Agriculture and Fisheries Information</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Publisher:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\">Department of Agriculture - RFU#1</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">ISBN:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Edition:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">XXX</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">No. of Pages:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">25  pp.</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Date of Publication:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">000</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Country of Origin:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Philippines</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Descriptors:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">COMPOST</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Price:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"><strong>Php  75.0<br /><br /></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','',''),(13,0,'',1,0,'','2012-12-17 18:08:23','2012-12-18 14:45:20',1,1,2,'default','','0.00','0.00','30.000000','30.00',0,'0.0000','thumb_TLRC_reprints.jpg','TLRC_reprints.jpg','full_TLRC_reprints.jpg',0,0,3,0.00,0,0,5,'0.0000',1,0,0,1,'Small Scale Prawn Hatchery Management And Operations','','Small Scale Prawn Hatchery Management And Operations','<table class=\"form\" style=\"font-family: Verdana; font-size: 14px; border: 1px solid #000099;\" width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Title:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Small Scale Prawn Hatchery Management And Operations</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Personal Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Pudaden, Rosario</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Corporate Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Publisher:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\">SEAFDEC</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">ISBN:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Edition:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">No. of Pages:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">6  pp.</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Date of Publication:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Country of Origin:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Philippines</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Descriptors:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">SHRIMP|FISHERIES</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Price:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"><strong>Php  30.0<br /><br /></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','',''),(14,0,'',1,0,'','2012-12-17 18:17:57','2012-12-17 18:17:57',1,1,2,'default','','0.00','0.00','618.000000','618.00',0,'0.0000','thumb_TLRC_books.jpg','TLRC_books.jpg','full_TLRC_books.jpg',0,0,3,0.00,0,0,4,'0.0000',1,0,0,1,'A business planning manual: a project feasibility study guidebook for Filipino students & enterpreneurs.','','A business planning manual: a project feasibility study guidebook for Filipino students & enterpreneurs.','<table class=\"form\" style=\"font-family: Verdana; font-size: 14px; border: 1px solid #000099;\" width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Title:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">A business planning manual: a project feasibility study guidebook for Filipino students &amp; enterpreneurs.</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Personal Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Cuyugan, Jorge H.</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Corporate Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Publisher:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\">Bright Concepts</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">ISBN:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Edition:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">xxx</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">No. of Pages:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">309  pp.</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Date of Publication:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">000</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Country of Origin:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Philippines</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Descriptors:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">PROJECT MANAGEMENT|FEASIBILITY STUDY</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Price:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"><strong>Php  618.0</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','',''),(15,0,'',1,0,'','2012-12-17 18:19:14','2012-12-17 18:19:14',1,1,2,'default','','0.00','0.00','110.000000','110.00',0,'0.0000','thumb_TLRC_books1.jpg','TLRC_books1.jpg','full_TLRC_books1.jpg',0,0,3,0.00,0,0,0,'0.0000',1,0,0,1,'A handbook for raising small numbers of sheep','','A handbook for raising small numbers of sheep','<table class=\"form\" style=\"font-family: Verdana; font-size: 14px; border: 1px solid #000099;\" width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Title:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">A handbook for raising small numbers of sheep</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Personal Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Phillips, Ralph L. [and others]</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Corporate Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Publisher:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\">University of California</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">ISBN:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Edition:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">No. of Pages:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">55  pp.</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Date of Publication:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Country of Origin:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Philippines</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Descriptors:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">SHEEP|LIVESTOCK</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Price:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"><strong>Php  110.0</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','',''),(16,0,'',1,0,'','2012-12-17 18:20:20','2012-12-17 18:20:20',1,1,2,'default','','0.00','0.00','72.000000','72.00',0,'0.0000','thumb_TLRC_books2.jpg','TLRC_books2.jpg','full_TLRC_books2.jpg',0,0,3,0.00,0,0,4,'0.0000',1,0,0,1,'A recipe book on traditional rice food products of the Philippines','','A recipe book on traditional rice food products of the Philippines','<table class=\"form\" style=\"font-family: Verdana; font-size: 14px; border: 1px solid #000099;\" width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Title:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">A recipe book on traditional rice food products of the Philippines</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Personal Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Barroga, Karen Eloisa T.| ed.</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Corporate Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Publisher:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\">PhilRice; PH</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">ISBN:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Edition:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">xxx</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">No. of Pages:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">24  pp.</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Date of Publication:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">1999</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Country of Origin:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Philippines</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Descriptors:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">RICE DELICACIES</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Price:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"><strong>Php  72.0</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','',''),(17,0,'',1,0,'','2012-12-17 18:21:54','2012-12-17 18:21:54',1,1,2,'default','','0.00','0.00','30.000000','30.00',0,'0.0000','thumb_TLRC_reprints1.jpg','TLRC_reprints1.jpg','full_TLRC_reprints1.jpg',0,0,3,0.00,0,0,9,'0.0000',1,0,0,1,'Rheological Behavior of Frozen and Thawed Low-Moisture','','Rheological Behavior of Frozen and Thawed Low-Moisture','<table class=\"form\" style=\"font-family: Verdana; font-size: 14px; border: 1px solid #000099;\" width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Title:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Rheological Behavior of Frozen and Thawed Low-Moisture</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Personal Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Diefes, H.A.|Rizvi, S.H.|Bartsch, J.A.</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Corporate Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Publisher:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\">Asean Food Handling Bureau; MY</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">ISBN:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Edition:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">xxx</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">No. of Pages:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">6  pp.</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Date of Publication:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">c1993</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Country of Origin:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Malaysia</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Descriptors:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">CHEESE|MOZARELLA|STORAGE TREATMENT</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Price:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"><strong>Php  30.0<br /><br /></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','',''),(18,0,'',1,0,'','2012-12-17 18:23:44','2012-12-17 18:23:44',1,1,2,'default','','0.00','0.00','20.000000','20.00',0,'0.0000','thumb_TLRC_periodicals.jpg','TLRC_periodicals.jpg','full_TLRC_periodicals.jpg',0,0,3,0.00,0,0,5,'0.0000',1,0,0,1,'Loofah: tube bath sponge','','Loofah: tube bath sponge','<table class=\"form\" style=\"font-family: Verdana; font-size: 14px; border: 1px solid #000099;\" width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Title:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Loofah: tube bath sponge</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Personal Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Corporate Author:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Technology and Livelihood Resource Center</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Publisher:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\">Technology and Livelihood Resource Center</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">ISBN:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"> </td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Edition:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">xxx</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">No. of Pages:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">4  pp.</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Date of Publication:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">2004</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Country of Origin:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">Philippines</td>\r\n</tr>\r\n<tr class=\"even\" style=\"background-color: #ebebdb;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Descriptors:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\">LOOFAH|TUBE BATH SPONGE</td>\r\n</tr>\r\n<tr class=\"odd\" style=\"background-color: #fcfaf6;\">\r\n<td class=\"formLabel\" style=\"font-family: Verdana; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\" width=\"30%\">Price:</td>\r\n<td class=\"formField\" style=\"font-family: Verdana; font-size: 13px;\" width=\"50%\"><strong>Php  20.0</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','','');
/*!40000 ALTER TABLE `japzd_jshopping_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_attr`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `old_price` decimal(12,2) NOT NULL,
  `count` int(11) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL,
  `attr_1` int(11) NOT NULL,
  `attr_2` int(11) NOT NULL,
  PRIMARY KEY  (`product_attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_attr`
--

LOCK TABLES `japzd_jshopping_products_attr` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_jshopping_products_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_attr2`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_attr2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_attr2` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_attr2`
--

LOCK TABLES `japzd_jshopping_products_attr2` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_attr2` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_attr2` VALUES (16,1,2,3,'+','0.00'),(15,1,2,4,'+','10.00'),(14,1,1,2,'+','0.00'),(13,1,1,1,'+','0.00'),(30,2,1,1,'+','0.00'),(29,2,1,2,'+','5.00');
/*!40000 ALTER TABLE `japzd_jshopping_products_attr2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_extra_field_groups`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_extra_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL auto_increment,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_extra_field_groups`
--

LOCK TABLES `japzd_jshopping_products_extra_field_groups` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_extra_field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_jshopping_products_extra_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_extra_field_values`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_extra_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL auto_increment,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_extra_field_values`
--

LOCK TABLES `japzd_jshopping_products_extra_field_values` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_extra_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_jshopping_products_extra_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_extra_fields`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_extra_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL auto_increment,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `multilist` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_extra_fields`
--

LOCK TABLES `japzd_jshopping_products_extra_fields` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_extra_fields` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_extra_fields` VALUES (1,0,'a:1:{i:0;s:1:\"1\";}',1,0,0,1,'Doors',''),(2,0,'a:1:{i:0;s:1:\"1\";}',1,0,0,2,'Power (hp)','');
/*!40000 ALTER TABLE `japzd_jshopping_products_extra_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_files`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_files` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_files`
--

LOCK TABLES `japzd_jshopping_products_files` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_files` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_files` VALUES (1,7,'11_stadium_arcadium_x.mp3','stadium_arcadium','','',0),(2,7,'11_stadium_arcadium_x.mp3','stadium_arcadium','','',1),(3,12,'8_Steps_in_Farming_Eucheuma_Seaweeds.jpg','PREVIEW - 8 Steps in Farming Eachuema Seaweeds','8_Steps_in_Farming_Eucheuma_Seaweeds.pdf','8 Steps in Farming Eachuema Seaweeds',0),(6,11,'8_Steps_in_Farming_Eucheuma_Seaweeds1.jpg','','','',1);
/*!40000 ALTER TABLE `japzd_jshopping_products_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_free_attr`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_free_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_free_attr` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_free_attr`
--

LOCK TABLES `japzd_jshopping_products_free_attr` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_free_attr` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_free_attr` VALUES (2,2,1);
/*!40000 ALTER TABLE `japzd_jshopping_products_free_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_images`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_images` (
  `image_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `image_thumb` varchar(255) NOT NULL default '',
  `image_name` varchar(255) NOT NULL default '',
  `image_full` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `ordering` tinyint(4) NOT NULL,
  PRIMARY KEY  (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_images`
--

LOCK TABLES `japzd_jshopping_products_images` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_images` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_images` VALUES (1,1,'thumb_9fedd69376f8f6f7e7e6c4908aa562a5.jpg','9fedd69376f8f6f7e7e6c4908aa562a5.jpg','full_9fedd69376f8f6f7e7e6c4908aa562a5.jpg','',1),(2,2,'thumb_67c57c86a9a4a36c2219240c36d56436.jpg','67c57c86a9a4a36c2219240c36d56436.jpg','full_67c57c86a9a4a36c2219240c36d56436.jpg','',1),(3,2,'thumb_df4480b863687511f7868966225b8a92.jpg','df4480b863687511f7868966225b8a92.jpg','full_df4480b863687511f7868966225b8a92.jpg','',2),(4,3,'thumb_34e8560c8f5168fca957249ee1155744.jpg','34e8560c8f5168fca957249ee1155744.jpg','full_34e8560c8f5168fca957249ee1155744.jpg','',1),(5,4,'thumb_ef8c670fbde778d44656d530a2038362.jpg','ef8c670fbde778d44656d530a2038362.jpg','full_ef8c670fbde778d44656d530a2038362.jpg','',1),(6,5,'thumb_db6b1b47578673a4945ccc3a0566f678.jpg','db6b1b47578673a4945ccc3a0566f678.jpg','full_db6b1b47578673a4945ccc3a0566f678.jpg','',1),(7,6,'thumb_a27e5e49d03b538340aeec1350722382.jpg','a27e5e49d03b538340aeec1350722382.jpg','full_a27e5e49d03b538340aeec1350722382.jpg','',1),(8,7,'thumb_3ee58838349bf67da57aaf6c1248fc0c.jpg','3ee58838349bf67da57aaf6c1248fc0c.jpg','full_3ee58838349bf67da57aaf6c1248fc0c.jpg','',1),(9,8,'thumb_3731bd14eb4d84fa1724fabee6fdece2.jpg','3731bd14eb4d84fa1724fabee6fdece2.jpg','full_3731bd14eb4d84fa1724fabee6fdece2.jpg','',1),(10,9,'thumb_238351c2bd98aadea04bbae5df6cb102.jpg','238351c2bd98aadea04bbae5df6cb102.jpg','full_238351c2bd98aadea04bbae5df6cb102.jpg','',1),(11,10,'thumb_6ab122ff4342c618f743f6e66a66829a.jpg','6ab122ff4342c618f743f6e66a66829a.jpg','full_6ab122ff4342c618f743f6e66a66829a.jpg','',1),(12,10,'thumb_663a6f3491c2ab53ece779e468f57cad.jpg','663a6f3491c2ab53ece779e468f57cad.jpg','full_663a6f3491c2ab53ece779e468f57cad.jpg','',2),(13,11,'thumb_TLRC_undefined.png','TLRC_undefined.png','full_TLRC_undefined.png','',1),(14,12,'thumb_TLRC_pamph_feasib.jpg','TLRC_pamph_feasib.jpg','full_TLRC_pamph_feasib.jpg','',1),(15,13,'thumb_TLRC_reprints.jpg','TLRC_reprints.jpg','full_TLRC_reprints.jpg','',1),(16,14,'thumb_TLRC_books.jpg','TLRC_books.jpg','full_TLRC_books.jpg','',1),(17,15,'thumb_TLRC_books1.jpg','TLRC_books1.jpg','full_TLRC_books1.jpg','',1),(18,16,'thumb_TLRC_books2.jpg','TLRC_books2.jpg','full_TLRC_books2.jpg','',1),(19,17,'thumb_TLRC_reprints1.jpg','TLRC_reprints1.jpg','full_TLRC_reprints1.jpg','',1),(20,18,'thumb_TLRC_periodicals.jpg','TLRC_periodicals.jpg','full_TLRC_periodicals.jpg','',1);
/*!40000 ALTER TABLE `japzd_jshopping_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_prices`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_prices` (
  `price_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL,
  PRIMARY KEY  (`price_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_prices`
--

LOCK TABLES `japzd_jshopping_products_prices` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_prices` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_prices` VALUES (28,2,'15.000000',1000,10000),(27,2,'10.000000',100,1000),(26,2,'5.000000',11,100),(25,2,'0.000000',1,10),(34,3,'15.000000',101,1000),(33,3,'10.000000',11,100),(32,3,'0.000000',1,10),(49,10,'20.000000',101,1000),(48,10,'10.000000',11,100),(47,10,'0.000000',1,10);
/*!40000 ALTER TABLE `japzd_jshopping_products_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_relations`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_relations` (
  `product_id` int(11) NOT NULL default '0',
  `product_related_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_relations`
--

LOCK TABLES `japzd_jshopping_products_relations` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_relations` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_relations` VALUES (3,2),(3,1);
/*!40000 ALTER TABLE `japzd_jshopping_products_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_reviews`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY  (`review_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_reviews`
--

LOCK TABLES `japzd_jshopping_products_reviews` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_reviews` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_reviews` VALUES (1,2,42,'admin','admin@mail.de','2011-12-26','wow very cool\r\n',7,1,'127.0.0.1'),(2,2,42,'dunkan','admin@mail.de','2011-12-26','very good',10,1,'127.0.0.1'),(3,2,42,'Kate','admin@mail.de','2011-12-26','it\'s cool man',0,1,'127.0.0.1'),(4,3,42,'admin','admin@mail.de','2011-12-26','bla bla',10,1,'127.0.0.1'),(5,3,42,'qwerty','admin@mail.de','2011-12-26','qwerrtt',2,1,'127.0.0.1'),(6,3,42,'admin123','admin@mail.de','2011-12-26','ererwfsdsdf',7,1,'127.0.0.1'),(7,4,42,'admin','admin@mail.de','2011-12-26','oppaa',5,1,'127.0.0.1'),(8,4,42,'admin123','admin@mail.de','2011-12-26','testst',4,1,'127.0.0.1'),(9,4,42,'admin11','admin@mail.de','2011-12-26','123123',9,1,'127.0.0.1'),(10,5,42,'admin','admin@mail.de','2011-12-26','wer',2,1,'127.0.0.1'),(11,5,42,'admin','admin@mail.de','2011-12-26','rtyrtyrty',4,1,'127.0.0.1'),(12,7,42,'admin','admin@mail.de','2011-12-26','wow',5,1,'127.0.0.1'),(13,7,42,'vasja','admin@mail.de','2011-12-26','super puper',0,1,'127.0.0.1'),(14,8,42,'admin','admin@mail.de','2011-12-26','opaa',4,1,'127.0.0.1'),(15,8,42,'admin','admin@mail.de','2011-12-26','qwertyytyutyutyth',9,1,'127.0.0.1'),(16,9,42,'admin','admin@mail.de','2011-12-26','i will drink this right now!',9,1,'127.0.0.1'),(17,9,42,'admin123','admin@mail.de','2011-12-26','hey drinki! i will empty you!',6,1,'127.0.0.1'),(18,10,42,'admin','admin@mail.de','2011-12-26','dfgdfg',8,1,'127.0.0.1'),(19,10,42,'admin123','admin@mail.de','2011-12-26','wrwerwer',0,1,'127.0.0.1'),(20,10,42,'admin111','admin@mail.de','2011-12-26','werwer',0,1,'127.0.0.1'),(21,10,42,'admin11','admin@mail.de','2011-12-26','123erg gdg ',9,1,'127.0.0.1'),(22,12,822,'admin','greg@solutionsresource.com','2012-12-18','nice product',10,1,'202.90.156.240');
/*!40000 ALTER TABLE `japzd_jshopping_products_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_to_categories`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  `product_ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_to_categories`
--

LOCK TABLES `japzd_jshopping_products_to_categories` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_to_categories` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_to_categories` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,6,1),(6,4,1),(7,7,1),(8,7,2),(9,8,1),(10,8,2),(11,12,1),(12,15,1),(13,13,1),(14,12,2),(15,12,3),(16,12,4),(17,13,2),(18,14,1);
/*!40000 ALTER TABLE `japzd_jshopping_products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_products_videos`
--

DROP TABLE IF EXISTS `japzd_jshopping_products_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_products_videos` (
  `video_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `video_name` varchar(255) NOT NULL default '',
  `video_code` text NOT NULL,
  `video_preview` varchar(255) NOT NULL,
  PRIMARY KEY  (`video_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_products_videos`
--

LOCK TABLES `japzd_jshopping_products_videos` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_products_videos` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_products_videos` VALUES (1,13,'TPSC5ES_P01_C01_L00.wmv','','');
/*!40000 ALTER TABLE `japzd_jshopping_products_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_shipping_ext_calc`
--

DROP TABLE IF EXISTS `japzd_jshopping_shipping_ext_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_shipping_ext_calc`
--

LOCK TABLES `japzd_jshopping_shipping_ext_calc` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_shipping_ext_calc` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_shipping_ext_calc` VALUES (1,'StandartWeight','sm_standart_weight','StandartWeight','','',1,1);
/*!40000 ALTER TABLE `japzd_jshopping_shipping_ext_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_shipping_method`
--

DROP TABLE IF EXISTS `japzd_jshopping_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL auto_increment,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY  (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_shipping_method`
--

LOCK TABLES `japzd_jshopping_shipping_method` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_shipping_method` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_shipping_method` VALUES (1,'Standard','','Standardversand','',1,'','',1),(2,'Express','','Express','',1,'','',2);
/*!40000 ALTER TABLE `japzd_jshopping_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_shipping_method_price`
--

DROP TABLE IF EXISTS `japzd_jshopping_shipping_method_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL auto_increment,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL,
  `shipping_stand_price` decimal(12,2) NOT NULL,
  `package_tax_id` int(11) NOT NULL,
  `package_stand_price` decimal(12,2) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`sh_pr_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_shipping_method_price`
--

LOCK TABLES `japzd_jshopping_shipping_method_price` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_shipping_method_price` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_shipping_method_price` VALUES (1,1,1,'10.00',1,'0.00',0,''),(2,2,1,'25.00',1,'0.00',0,'');
/*!40000 ALTER TABLE `japzd_jshopping_shipping_method_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_shipping_method_price_countries`
--

DROP TABLE IF EXISTS `japzd_jshopping_shipping_method_price_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  PRIMARY KEY  (`sh_method_country_id`),
  KEY `country_id` (`country_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=479 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_shipping_method_price_countries`
--

LOCK TABLES `japzd_jshopping_shipping_method_price_countries` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_shipping_method_price_countries` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_shipping_method_price_countries` VALUES (1,239,1),(2,238,1),(3,237,1),(4,236,1),(5,235,1),(6,234,1),(7,233,1),(8,232,1),(9,231,1),(10,230,1),(11,229,1),(12,228,1),(13,227,1),(14,226,1),(15,225,1),(16,224,1),(17,223,1),(18,222,1),(19,221,1),(20,220,1),(21,219,1),(22,218,1),(23,217,1),(24,216,1),(25,215,1),(26,214,1),(27,213,1),(28,212,1),(29,211,1),(30,210,1),(31,209,1),(32,208,1),(33,207,1),(34,206,1),(35,205,1),(36,204,1),(37,203,1),(38,202,1),(39,201,1),(40,200,1),(41,199,1),(42,198,1),(43,197,1),(44,196,1),(45,195,1),(46,194,1),(47,193,1),(48,192,1),(49,191,1),(50,190,1),(51,189,1),(52,188,1),(53,187,1),(54,186,1),(55,185,1),(56,184,1),(57,183,1),(58,182,1),(59,181,1),(60,180,1),(61,179,1),(62,178,1),(63,177,1),(64,176,1),(65,175,1),(66,174,1),(67,173,1),(68,172,1),(69,171,1),(70,170,1),(71,169,1),(72,168,1),(73,167,1),(74,166,1),(75,165,1),(76,164,1),(77,163,1),(78,162,1),(79,161,1),(80,160,1),(81,159,1),(82,158,1),(83,157,1),(84,156,1),(85,155,1),(86,154,1),(87,153,1),(88,152,1),(89,151,1),(90,150,1),(91,149,1),(92,148,1),(93,147,1),(94,146,1),(95,145,1),(96,144,1),(97,143,1),(98,142,1),(99,141,1),(100,140,1),(101,139,1),(102,138,1),(103,137,1),(104,136,1),(105,135,1),(106,134,1),(107,133,1),(108,132,1),(109,131,1),(110,130,1),(111,129,1),(112,128,1),(113,127,1),(114,126,1),(115,125,1),(116,124,1),(117,123,1),(118,122,1),(119,121,1),(120,120,1),(121,119,1),(122,118,1),(123,117,1),(124,116,1),(125,115,1),(126,114,1),(127,113,1),(128,112,1),(129,111,1),(130,110,1),(131,109,1),(132,108,1),(133,107,1),(134,106,1),(135,105,1),(136,104,1),(137,103,1),(138,102,1),(139,101,1),(140,100,1),(141,99,1),(142,98,1),(143,97,1),(144,96,1),(145,95,1),(146,94,1),(147,93,1),(148,92,1),(149,91,1),(150,90,1),(151,89,1),(152,88,1),(153,87,1),(154,86,1),(155,85,1),(156,84,1),(157,83,1),(158,82,1),(159,81,1),(160,80,1),(161,79,1),(162,78,1),(163,77,1),(164,76,1),(165,75,1),(166,74,1),(167,73,1),(168,72,1),(169,71,1),(170,70,1),(171,69,1),(172,68,1),(173,67,1),(174,66,1),(175,65,1),(176,64,1),(177,63,1),(178,62,1),(179,61,1),(180,60,1),(181,59,1),(182,58,1),(183,57,1),(184,56,1),(185,55,1),(186,54,1),(187,53,1),(188,52,1),(189,51,1),(190,50,1),(191,49,1),(192,48,1),(193,47,1),(194,46,1),(195,45,1),(196,44,1),(197,43,1),(198,42,1),(199,41,1),(200,40,1),(201,39,1),(202,38,1),(203,37,1),(204,36,1),(205,35,1),(206,34,1),(207,33,1),(208,32,1),(209,31,1),(210,30,1),(211,29,1),(212,28,1),(213,27,1),(214,26,1),(215,25,1),(216,24,1),(217,23,1),(218,22,1),(219,21,1),(220,20,1),(221,19,1),(222,18,1),(223,17,1),(224,16,1),(225,15,1),(226,14,1),(227,13,1),(228,12,1),(229,11,1),(230,10,1),(231,9,1),(232,8,1),(233,7,1),(234,6,1),(235,5,1),(236,4,1),(237,3,1),(238,2,1),(239,1,1),(240,239,2),(241,238,2),(242,237,2),(243,236,2),(244,235,2),(245,234,2),(246,233,2),(247,232,2),(248,231,2),(249,230,2),(250,229,2),(251,228,2),(252,227,2),(253,226,2),(254,225,2),(255,224,2),(256,223,2),(257,222,2),(258,221,2),(259,220,2),(260,219,2),(261,218,2),(262,217,2),(263,216,2),(264,215,2),(265,214,2),(266,213,2),(267,212,2),(268,211,2),(269,210,2),(270,209,2),(271,208,2),(272,207,2),(273,206,2),(274,205,2),(275,204,2),(276,203,2),(277,202,2),(278,201,2),(279,200,2),(280,199,2),(281,198,2),(282,197,2),(283,196,2),(284,195,2),(285,194,2),(286,193,2),(287,192,2),(288,191,2),(289,190,2),(290,189,2),(291,188,2),(292,187,2),(293,186,2),(294,185,2),(295,184,2),(296,183,2),(297,182,2),(298,181,2),(299,180,2),(300,179,2),(301,178,2),(302,177,2),(303,176,2),(304,175,2),(305,174,2),(306,173,2),(307,172,2),(308,171,2),(309,170,2),(310,169,2),(311,168,2),(312,167,2),(313,166,2),(314,165,2),(315,164,2),(316,163,2),(317,162,2),(318,161,2),(319,160,2),(320,159,2),(321,158,2),(322,157,2),(323,156,2),(324,155,2),(325,154,2),(326,153,2),(327,152,2),(328,151,2),(329,150,2),(330,149,2),(331,148,2),(332,147,2),(333,146,2),(334,145,2),(335,144,2),(336,143,2),(337,142,2),(338,141,2),(339,140,2),(340,139,2),(341,138,2),(342,137,2),(343,136,2),(344,135,2),(345,134,2),(346,133,2),(347,132,2),(348,131,2),(349,130,2),(350,129,2),(351,128,2),(352,127,2),(353,126,2),(354,125,2),(355,124,2),(356,123,2),(357,122,2),(358,121,2),(359,120,2),(360,119,2),(361,118,2),(362,117,2),(363,116,2),(364,115,2),(365,114,2),(366,113,2),(367,112,2),(368,111,2),(369,110,2),(370,109,2),(371,108,2),(372,107,2),(373,106,2),(374,105,2),(375,104,2),(376,103,2),(377,102,2),(378,101,2),(379,100,2),(380,99,2),(381,98,2),(382,97,2),(383,96,2),(384,95,2),(385,94,2),(386,93,2),(387,92,2),(388,91,2),(389,90,2),(390,89,2),(391,88,2),(392,87,2),(393,86,2),(394,85,2),(395,84,2),(396,83,2),(397,82,2),(398,81,2),(399,80,2),(400,79,2),(401,78,2),(402,77,2),(403,76,2),(404,75,2),(405,74,2),(406,73,2),(407,72,2),(408,71,2),(409,70,2),(410,69,2),(411,68,2),(412,67,2),(413,66,2),(414,65,2),(415,64,2),(416,63,2),(417,62,2),(418,61,2),(419,60,2),(420,59,2),(421,58,2),(422,57,2),(423,56,2),(424,55,2),(425,54,2),(426,53,2),(427,52,2),(428,51,2),(429,50,2),(430,49,2),(431,48,2),(432,47,2),(433,46,2),(434,45,2),(435,44,2),(436,43,2),(437,42,2),(438,41,2),(439,40,2),(440,39,2),(441,38,2),(442,37,2),(443,36,2),(444,35,2),(445,34,2),(446,33,2),(447,32,2),(448,31,2),(449,30,2),(450,29,2),(451,28,2),(452,27,2),(453,26,2),(454,25,2),(455,24,2),(456,23,2),(457,22,2),(458,21,2),(459,20,2),(460,19,2),(461,18,2),(462,17,2),(463,16,2),(464,15,2),(465,14,2),(466,13,2),(467,12,2),(468,11,2),(469,10,2),(470,9,2),(471,8,2),(472,7,2),(473,6,2),(474,5,2),(475,4,2),(476,3,2),(477,2,2),(478,1,2);
/*!40000 ALTER TABLE `japzd_jshopping_shipping_method_price_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_shipping_method_price_weight`
--

DROP TABLE IF EXISTS `japzd_jshopping_shipping_method_price_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL auto_increment,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`sh_pr_weight_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_shipping_method_price_weight`
--

LOCK TABLES `japzd_jshopping_shipping_method_price_weight` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_shipping_method_price_weight` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_jshopping_shipping_method_price_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_taxes`
--

DROP TABLE IF EXISTS `japzd_jshopping_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_taxes` (
  `tax_id` int(11) NOT NULL auto_increment,
  `tax_name` varchar(50) NOT NULL default '',
  `tax_value` decimal(12,2) NOT NULL default '0.00',
  PRIMARY KEY  (`tax_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_taxes`
--

LOCK TABLES `japzd_jshopping_taxes` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_taxes` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_taxes` VALUES (1,'Normal','19.00');
/*!40000 ALTER TABLE `japzd_jshopping_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_taxes_ext`
--

DROP TABLE IF EXISTS `japzd_jshopping_taxes_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_taxes_ext` (
  `id` int(11) NOT NULL auto_increment,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_taxes_ext`
--

LOCK TABLES `japzd_jshopping_taxes_ext` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_taxes_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_jshopping_taxes_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_unit`
--

DROP TABLE IF EXISTS `japzd_jshopping_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_unit` (
  `id` int(11) NOT NULL auto_increment,
  `qty` int(11) NOT NULL default '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_unit`
--

LOCK TABLES `japzd_jshopping_unit` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_unit` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_unit` VALUES (1,1,'Kg','Kg'),(2,1,'Liter','Liter'),(3,1,'St.','pcs.');
/*!40000 ALTER TABLE `japzd_jshopping_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_usergroups`
--

DROP TABLE IF EXISTS `japzd_jshopping_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL auto_increment,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  PRIMARY KEY  (`usergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_usergroups`
--

LOCK TABLES `japzd_jshopping_usergroups` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_usergroups` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_usergroups` VALUES (1,'Default','0.00','Default',1);
/*!40000 ALTER TABLE `japzd_jshopping_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_users`
--

DROP TABLE IF EXISTS `japzd_jshopping_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) default NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  KEY `u_name` (`u_name`),
  KEY `usergroup_id` (`usergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_users`
--

LOCK TABLES `japzd_jshopping_users` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_users` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_users` VALUES (822,1,3,0,'admin',1,'John','Pel','',0,'','','greg@solutionsresource.com','Manda','','','1234','Manda','',168,'7462731','','','','','',0,0,'','','','','','','','','','',168,'','','','','',''),(823,1,3,0,'grg021',0,'greg','hermo','',0,'','','greg.hermo@gmail.com','commonwealth','','','1119','qc','',168,'','','','','','',0,0,'','','','','','','','','','',168,'','','','','','');
/*!40000 ALTER TABLE `japzd_jshopping_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_jshopping_vendors`
--

DROP TABLE IF EXISTS `japzd_jshopping_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_jshopping_vendors` (
  `id` int(11) NOT NULL auto_increment,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_jshopping_vendors`
--

LOCK TABLES `japzd_jshopping_vendors` WRITE;
/*!40000 ALTER TABLE `japzd_jshopping_vendors` DISABLE KEYS */;
INSERT INTO `japzd_jshopping_vendors` VALUES (1,'eTRC Library','Technology Resource Center','http://etrc.idxtech.net','','Address','City','Postal Code ','State',168,'First name ','Last name','','00000000','00000000','email@email.com','test','test','test','test','test','test','test','test','','','Additional information',0,1,1);
/*!40000 ALTER TABLE `japzd_jshopping_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_languages`
--

DROP TABLE IF EXISTS `japzd_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_languages` (
  `lang_id` int(11) unsigned NOT NULL auto_increment,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL default '',
  `published` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_languages`
--

LOCK TABLES `japzd_languages` WRITE;
/*!40000 ALTER TABLE `japzd_languages` DISABLE KEYS */;
INSERT INTO `japzd_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `japzd_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_menu`
--

DROP TABLE IF EXISTS `japzd_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL default '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL default '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL default '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL default '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL default '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL default '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL default '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL default '',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_menu`
--

LOCK TABLES `japzd_menu` WRITE;
/*!40000 ALTER TABLE `japzd_menu` DISABLE KEYS */;
INSERT INTO `japzd_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,109,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',25,30,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',26,27,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',28,29,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',31,36,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',32,33,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',34,35,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',37,42,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',38,39,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',40,41,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',57,58,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',47,48,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',49,54,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',50,51,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',52,53,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',45,46,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',55,56,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"eTRC Library | Technology Resource Center\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',43,44,1,'*',0),(102,'main','COM_WIDGETKIT','com-widgetkit','','com-widgetkit','index.php?option=com_widgetkit','component',0,1,1,10006,0,0,'0000-00-00 00:00:00',0,1,'components/com_widgetkit/images/widgetkit_16.png',0,'',59,60,0,'',1),(103,'main','JCE','jce','','jce','index.php?option=com_jce','component',0,1,1,10009,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/logo.png',0,'',61,70,0,'',1),(104,'main','WF_MENU_CPANEL','wf-menu-cpanel','','jce/wf-menu-cpanel','index.php?option=com_jce','component',0,103,2,10009,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-cpanel.png',0,'',62,63,0,'',1),(105,'main','WF_MENU_CONFIG','wf-menu-config','','jce/wf-menu-config','index.php?option=com_jce&view=config','component',0,103,2,10009,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-config.png',0,'',64,65,0,'',1),(106,'main','WF_MENU_PROFILES','wf-menu-profiles','','jce/wf-menu-profiles','index.php?option=com_jce&view=profiles','component',0,103,2,10009,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-profiles.png',0,'',66,67,0,'',1),(107,'main','WF_MENU_INSTALL','wf-menu-install','','jce/wf-menu-install','index.php?option=com_jce&view=installer','component',0,103,2,10009,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-install.png',0,'',68,69,0,'',1),(108,'mainmenu','About Us','2012-12-13-01-10-48','','2012-12-13-01-10-48','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',73,74,0,'*',0),(109,'mainmenu','News','2012-12-13-01-10-55','','2012-12-13-01-10-55','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',75,76,0,'*',0),(110,'mainmenu','Contact Us','2012-12-13-01-11-03','','2012-12-13-01-11-03','index.php?option=com_contact&view=contact&id=1','component',1,1,1,8,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',77,78,0,'*',0),(111,'sitemap','Home','2012-12-13-02-04-11','','2012-12-13-02-04-11','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"101\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',11,12,0,'*',0),(112,'sitemap','About Us','2012-12-13-02-04-22','','2012-12-13-02-04-22','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"108\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',13,14,0,'*',0),(113,'sitemap','Business Guides','2012-12-13-02-04-33','','2012-12-13-02-04-33','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',19,20,0,'*',0),(114,'sitemap','TRC','2012-12-13-02-04-42','','2012-12-13-02-04-42','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',17,18,0,'*',0),(115,'sitemap','FAQ','2012-12-13-02-04-53','','2012-12-13-02-04-53','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',23,24,0,'*',0),(116,'sitemap','Link to Us','2012-12-13-02-05-04','','2012-12-13-02-05-04','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',15,16,0,'*',0),(117,'sitemap','Contact Us','2012-12-13-02-05-18','','2012-12-13-02-05-18','index.php?Itemid=','alias',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"110\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',21,22,0,'*',0),(119,'mainmenu','Products','products','','products','index.php?option=com_jshopping&controller=products&task=&category_id=&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,1,1,10017,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"eTRC Library Products\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',71,72,0,'*',0),(120,'main','JoomShopping','joomshopping','','joomshopping','index.php?option=com_jshopping','component',0,1,1,10017,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_logo_s.png',0,'',79,96,0,'',1),(121,'main','categories','categories','','joomshopping/categories','index.php?option=com_jshopping&controller=categories&catid=0','component',0,120,2,10017,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_categories_s.png',0,'',80,81,0,'',1),(122,'main','products','products','','joomshopping/products','index.php?option=com_jshopping&controller=products&category_id=0','component',0,120,2,10017,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_products_s.png',0,'',82,83,0,'',1),(123,'main','orders','orders','','joomshopping/orders','index.php?option=com_jshopping&controller=orders','component',0,120,2,10017,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_orders_s.png',0,'',84,85,0,'',1),(124,'main','clients','clients','','joomshopping/clients','index.php?option=com_jshopping&controller=users','component',0,120,2,10017,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_users_s.png',0,'',86,87,0,'',1),(125,'main','options','options','','joomshopping/options','index.php?option=com_jshopping&controller=other','component',0,120,2,10017,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_options_s.png',0,'',88,89,0,'',1),(126,'main','configuration','configuration','','joomshopping/configuration','index.php?option=com_jshopping&controller=config','component',0,120,2,10017,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_configuration_s.png',0,'',90,91,0,'',1),(127,'main','install-and-update','install-and-update','','joomshopping/install-and-update','index.php?option=com_jshopping&controller=update','component',0,120,2,10017,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_update_s.png',0,'',92,93,0,'',1),(128,'main','about-as','about-as','','joomshopping/about-as','index.php?option=com_jshopping&controller=info','component',0,120,2,10017,0,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_info_s.png',0,'',94,95,0,'',1),(129,'top-menu','DOST Home','2012-12-14-03-42-47','','2012-12-14-03-42-47','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"images\\/dostlogo.png\",\"menu_text\":1}',97,98,0,'*',0),(130,'top-menu','DOST Mail','2012-12-14-03-43-15','','2012-12-14-03-43-15','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',99,100,0,'*',0),(131,'top-menu','DOST Agencies','2012-12-14-03-43-24','','2012-12-14-03-43-24','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',101,102,0,'*',0),(132,'top-menu','TRC','2012-12-14-03-43-32','','2012-12-14-03-43-32','','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',103,104,0,'*',0),(133,'hidden','Login','login','','login','index.php?option=com_users&view=login','component',1,1,1,25,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"\\/\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\\/\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',105,106,0,'*',0),(134,'user-panel','My Account','my-account','','my-account','index.php?option=com_jshopping&controller=user&task=&category_id=&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=','component',1,1,1,10017,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',107,108,0,'*',0);
/*!40000 ALTER TABLE `japzd_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_menu_types`
--

DROP TABLE IF EXISTS `japzd_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_menu_types`
--

LOCK TABLES `japzd_menu_types` WRITE;
/*!40000 ALTER TABLE `japzd_menu_types` DISABLE KEYS */;
INSERT INTO `japzd_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'sitemap','Sitemap',''),(3,'top-menu','Top Menu',''),(4,'hidden','Hidden',''),(5,'user-panel','User Panel','');
/*!40000 ALTER TABLE `japzd_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_messages`
--

DROP TABLE IF EXISTS `japzd_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` tinyint(3) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL default '0',
  `priority` tinyint(1) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_messages`
--

LOCK TABLES `japzd_messages` WRITE;
/*!40000 ALTER TABLE `japzd_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_messages_cfg`
--

DROP TABLE IF EXISTS `japzd_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_messages_cfg`
--

LOCK TABLES `japzd_messages_cfg` WRITE;
/*!40000 ALTER TABLE `japzd_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_modules`
--

DROP TABLE IF EXISTS `japzd_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) NOT NULL default '',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_modules`
--

LOCK TABLES `japzd_modules` WRITE;
/*!40000 ALTER TABLE `japzd_modules` DISABLE KEYS */;
INSERT INTO `japzd_modules` VALUES (1,'Main Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,'Widgetkit','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_widgetkit',1,1,'',0,'*'),(88,'Widgetkit Twitter','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_widgetkit_twitter',1,1,'',0,'*'),(89,'logo','','<div><img src=\"images/logo.png\" border=\"0\" alt=\"logo\" width=\"200\" /></div>',1,'logo',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(90,'welcome to etrc','','<div class=\"float-left width40\" style=\"padding-left: 20px;\">\r\n<h1>Welcome to eTRC!</h1>\r\n<h3>To access our business and livelihood materials, please sign up to create your personal account.</h3>\r\n</div>\r\n<div class=\"float-right width40\"><img src=\"images/stack-of-books.png\" border=\"0\" alt=\"etrc\" /></div>\r\n<div class=\"clearfix\"> </div>\r\n<div class=\"yellowbg\">\r\n<h3 style=\"text-align: center;\"><a data-lightbox=\"width:600;height:420;\" href=\"http://www.youtube.com/watch?v=RWGydmut0w4&amp;autoplay=1\" style=\"color: #fff;\">How to access eLibrary</a> | <a data-lightbox=\"width:600;height:420;\" href=\"http://www.youtube.com/watch?v=AtgKrYP4qHQ&amp;autoplay=1\" style=\"color: #fff;\">How to load a Kabuhayan Prepaid Card</a></h3>\r\n</div>',1,'top-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"mod-line\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(91,'Login','','',1,'headerbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"101\",\"logout\":\"101\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"etrc_template:line\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),(92,'Sitemap','','',1,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"sitemap\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"sitemap\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(93,'Contact Details','','<div><img class=\"float-left\" src=\"images/map_32.png\" border=\"0\" alt=\"\" style=\"padding-right: 10px;\" />Jacinta Bldg. 2, Guadalupe Nuevo, <br />EDSA, Makati City</div>',1,'bottom-b',822,'2012-12-18 06:11:13','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(94,'phils','','<p class=\"footerflag\"><img class=\"float-left\" src=\"images/flag.png\" border=\"0\" alt=\"flag\" /> <strong>Republic Of the Philppines</strong><br />Department of Science &amp; Technology</p>\r\n<p>{loadposition foot}</p>',1,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(95,'Footer','','',1,'foot',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footer',1,0,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(96,'how to access','','<h3 style=\"text-align: center;\">How to access eLibrary | How to load a Kabuhayan Prepaid Card</h3>',1,'top-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"yellowbg\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(97,'signup','','<p>Don’t have eLibrary ID? <em>Sign up now!</em> </p>',1,'headerbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"signup\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(100,'Jshopping Last Products','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_jshopping_latest_products',1,1,'',0,'*'),(101,'Jshopping Search','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_jshopping_search',1,1,'',0,'*'),(102,'Product Search','','',1,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_jshopping_search',1,1,'{\"advanced_search\":\"1\",\"category_id\":\"\",\"moduleclass_sfx\":\"mod-line psearch\"}',0,'*'),(103,'Latest Products','','',1,'innertop',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_jshopping_latest_products',1,1,'{\"count_products\":\"5\",\"show_image\":\"1\",\"catids\":[\"\"],\"moduleclass_sfx\":\"mod-line products badge-new\"}',0,'*'),(104,'Jshopping Cart','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_jshopping_cart',1,1,'',0,'*'),(105,'Shopping Cart','','',2,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_jshopping_cart',1,1,'{\"moduleclass_sfx\":\"mod-line icon-cart\"}',0,'*'),(106,'Breadcrumb','','',1,'breadcrumbs',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,0,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(107,'Jshopping Categories','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_jshopping_categories',1,1,'',0,'*'),(108,'Product Category','','',3,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_jshopping_categories',1,1,'{\"show_image\":\"0\",\"sort\":\"id\",\"ordering\":\"asc\",\"moduleclass_sfx\":\"mod-line\"}',0,'*'),(109,'Location','','',1,'bottom-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_widgetkit',1,1,'{\"widget_id\":\"1\",\"moduleclass_sfx\":\"\"}',0,'*'),(110,'Top Menu','','',1,'toolbar-r',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"top-menu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"topmenu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(111,'Location','','',5,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_widgetkit',1,1,'{\"widget_id\":\"1\",\"moduleclass_sfx\":\"mod-line\"}',0,'*'),(112,'powered by','','<p style=\"text-align: right;\"><em style=\"color: #555;\">Powered by <a href=\"http://solutionsresource.com/\">www.solutionsresource.com</a></em></p>',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(113,'JT BxSlider Jshopping Label Products','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jt_jshopping_label_products',1,1,'',0,'*'),(114,'Latest Products','','',1,'innertop',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jt_jshopping_label_products',1,1,'{\"jt_id_sfx\":\"1\",\"jquery\":1,\"jt_script_bx\":1,\"jt_load_jquery\":\"1\",\"jt_mode\":\"horizontal\",\"jt_width\":\"110\",\"jt_height\":\"180\",\"jt_display_slide_qty\":\"5\",\"jt_move_slide_qty\":\"1\",\"count_products\":\"15\",\"show_image\":1,\"label_id\":\"\",\"jt_label_prod\":1,\"jt_short_desc\":0,\"jt_review_mark\":0,\"jt_count_commentar\":0,\"jt_item_detal\":0,\"jt_buttom_text\":\"Detail\",\"jt_speed\":\"500\",\"jt_controls\":\"true\",\"jt_auto\":\"false\",\"jt_autohover\":\"false\",\"jt_pause\":\"3000\",\"jt_auto_delay\":\"0\",\"jt_pager\":\"false\",\"jt_pager_type\":\"full\",\"jt_pager_location\":\"bottom\",\"jt_pager_saparator\":\"\\/\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"mod-line products badge-new\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*');
/*!40000 ALTER TABLE `japzd_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_modules_menu`
--

DROP TABLE IF EXISTS `japzd_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_modules_menu`
--

LOCK TABLES `japzd_modules_menu` WRITE;
/*!40000 ALTER TABLE `japzd_modules_menu` DISABLE KEYS */;
INSERT INTO `japzd_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(89,0),(90,101),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(102,0),(103,101),(105,0),(106,-101),(108,119),(109,0),(110,0),(111,110),(112,0),(114,0);
/*!40000 ALTER TABLE `japzd_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_newsfeeds`
--

DROP TABLE IF EXISTS `japzd_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `link` varchar(200) NOT NULL default '',
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(10) unsigned NOT NULL default '1',
  `cache_time` int(10) unsigned NOT NULL default '3600',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL default '',
  `params` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_newsfeeds`
--

LOCK TABLES `japzd_newsfeeds` WRITE;
/*!40000 ALTER TABLE `japzd_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_overrider`
--

DROP TABLE IF EXISTS `japzd_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_overrider` (
  `id` int(10) NOT NULL auto_increment COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_overrider`
--

LOCK TABLES `japzd_overrider` WRITE;
/*!40000 ALTER TABLE `japzd_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redirect_links`
--

DROP TABLE IF EXISTS `japzd_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redirect_links` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redirect_links`
--

LOCK TABLES `japzd_redirect_links` WRITE;
/*!40000 ALTER TABLE `japzd_redirect_links` DISABLE KEYS */;
INSERT INTO `japzd_redirect_links` VALUES (1,'http://etrc.idxtech.net/index.php/sign-up','','','',1,0,'2012-12-13 03:11:28','0000-00-00 00:00:00'),(2,'http://etrc.idxtech.net/index.php/component/redshop/1/0/training/P-test?Itemid=0','','http://etrc.idxtech.net/index.php/component/redshop/1/training?Itemid=','',1,0,'2012-12-14 02:29:04','0000-00-00 00:00:00'),(3,'http://etrc.idxtech.net/index.php/images/logo.png','','http://etrc.idxtech.net/index.php/','',1,0,'2012-12-14 07:35:11','0000-00-00 00:00:00'),(4,'http://etrc.idxtech.net/index.php/products/multimedia-clips=javascript:alert(\'Hello\')','','','',3,0,'2012-12-17 08:26:16','0000-00-00 00:00:00'),(5,'http://etrc.idxtech.net/index.php/products/multimedia-clips.javascript:alert(\"test\")','','','',1,0,'2012-12-17 08:30:40','0000-00-00 00:00:00'),(6,'http://etrc.idxtech.net/index.php/products/multimedia-clips.','','','',1,0,'2012-12-17 08:30:48','0000-00-00 00:00:00'),(7,'http://etrc.idxtech.net/index.php/products/product/view/15/index.php','','http://etrc.idxtech.net/index.php/products/product/view/15/12','',4,0,'2012-12-18 03:52:28','0000-00-00 00:00:00'),(8,'http://etrc.idxtech.net/index.php/products/product/view/15/$this->config->demo_product_live_path.','','http://etrc.idxtech.net/index.php/products/product/view/15/12?','',1,0,'2012-12-18 05:20:33','0000-00-00 00:00:00'),(9,'http://etrc.idxtech.net/index.php/products/product/view/15/close.gif','','http://etrc.idxtech.net/index.php/products/product/view/15/12','',12,0,'2012-12-18 05:38:38','0000-00-00 00:00:00'),(10,'http://etrc.idxtech.net/index.php/products/product/view/15/loading.gif','','http://etrc.idxtech.net/index.php/products/product/view/15/12','',12,0,'2012-12-18 05:38:38','0000-00-00 00:00:00'),(11,'http://etrc.idxtech.net/index.php/products/product/view/13/index.php','','http://etrc.idxtech.net/index.php/products/product/view/13/13','',11,0,'2012-12-18 07:02:46','0000-00-00 00:00:00'),(12,'http://etrc.idxtech.net/index.php/my-orders','','','',2,0,'2012-12-19 04:15:11','0000-00-00 00:00:00'),(13,'http://etrc.idxtech.net/index.php/products/product/view/12/index.php','','http://etrc.idxtech.net/index.php/products/product/view/12/16','',3,0,'2012-12-19 04:48:21','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `japzd_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_accessmanager`
--

DROP TABLE IF EXISTS `japzd_redshop_accessmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_accessmanager` (
  `id` int(11) NOT NULL auto_increment,
  `section_name` varchar(256) NOT NULL,
  `gid` int(11) NOT NULL,
  `view` enum('1','0') default NULL,
  `add` enum('1','0') default NULL,
  `edit` enum('1','0') default NULL,
  `delete` enum('1','0') default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Access Manager';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_accessmanager`
--

LOCK TABLES `japzd_redshop_accessmanager` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_accessmanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_accessmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_attribute_set`
--

DROP TABLE IF EXISTS `japzd_redshop_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_attribute_set` (
  `attribute_set_id` int(11) NOT NULL auto_increment,
  `attribute_set_name` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`attribute_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Attribute set detail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_attribute_set`
--

LOCK TABLES `japzd_redshop_attribute_set` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_attribute_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_cart`
--

DROP TABLE IF EXISTS `japzd_redshop_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_cart` (
  `session_id` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `section` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `time` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Cart';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_cart`
--

LOCK TABLES `japzd_redshop_cart` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_catalog`
--

DROP TABLE IF EXISTS `japzd_redshop_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_catalog` (
  `catalog_id` int(11) NOT NULL auto_increment,
  `catalog_name` varchar(250) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`catalog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Catalog';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_catalog`
--

LOCK TABLES `japzd_redshop_catalog` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_catalog_colour`
--

DROP TABLE IF EXISTS `japzd_redshop_catalog_colour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_catalog_colour` (
  `colour_id` int(11) NOT NULL auto_increment,
  `sample_id` int(11) NOT NULL,
  `code_image` varchar(250) NOT NULL,
  `is_image` tinyint(4) NOT NULL,
  PRIMARY KEY  (`colour_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Catalog Colour';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_catalog_colour`
--

LOCK TABLES `japzd_redshop_catalog_colour` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_catalog_colour` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_catalog_colour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_catalog_request`
--

DROP TABLE IF EXISTS `japzd_redshop_catalog_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_catalog_request` (
  `catalog_user_id` int(11) NOT NULL auto_increment,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `registerDate` int(11) NOT NULL,
  `block` tinyint(4) NOT NULL,
  `reminder_1` tinyint(4) NOT NULL,
  `reminder_2` tinyint(4) NOT NULL,
  `reminder_3` tinyint(4) NOT NULL,
  PRIMARY KEY  (`catalog_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Catalog Request';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_catalog_request`
--

LOCK TABLES `japzd_redshop_catalog_request` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_catalog_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_catalog_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_catalog_sample`
--

DROP TABLE IF EXISTS `japzd_redshop_catalog_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_catalog_sample` (
  `sample_id` int(11) NOT NULL auto_increment,
  `sample_name` varchar(100) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`sample_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Catalog Sample';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_catalog_sample`
--

LOCK TABLES `japzd_redshop_catalog_sample` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_catalog_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_catalog_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_category`
--

DROP TABLE IF EXISTS `japzd_redshop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_category` (
  `category_id` int(11) NOT NULL auto_increment,
  `category_name` varchar(250) NOT NULL,
  `category_short_description` longtext NOT NULL,
  `category_description` longtext NOT NULL,
  `category_template` int(11) NOT NULL,
  `category_more_template` varchar(255) NOT NULL,
  `products_per_page` int(11) NOT NULL,
  `category_thumb_image` varchar(250) NOT NULL,
  `category_full_image` varchar(250) NOT NULL,
  `metakey` varchar(250) NOT NULL,
  `metadesc` longtext NOT NULL,
  `metalanguage_setting` text NOT NULL,
  `metarobot_info` text NOT NULL,
  `pagetitle` text NOT NULL,
  `pageheading` longtext NOT NULL,
  `sef_url` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `category_pdate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `ordering` int(11) NOT NULL,
  `category_back_full_image` varchar(250) NOT NULL,
  `compare_template_id` varchar(255) NOT NULL,
  `append_to_global_seo` enum('append','prepend','replace') NOT NULL default 'append',
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='redSHOP Category';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_category`
--

LOCK TABLES `japzd_redshop_category` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_category` DISABLE KEYS */;
INSERT INTO `japzd_redshop_category` VALUES (1,'Training','','',0,'0',5,'','','','','','','','','',1,'2012-12-13 08:38:25',0,'','0','append'),(2,'Print and Video Materials','','',0,'0',5,'','','','','','','','','',1,'2012-12-13 08:38:36',0,'','0','append'),(3,'eLibrary Services','','',0,'0',5,'','','','','','','','','',1,'2012-12-13 08:38:47',0,'','0','append'),(4,'eLibrary Services','','',0,'0',5,'','','','','','','','','',1,'2012-12-13 08:38:47',0,'','0','append');
/*!40000 ALTER TABLE `japzd_redshop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_category_xref`
--

DROP TABLE IF EXISTS `japzd_redshop_category_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_category_xref` (
  `category_parent_id` int(11) NOT NULL default '0',
  `category_child_id` int(11) NOT NULL default '0',
  KEY `category_xref_category_parent_id` (`category_parent_id`),
  KEY `category_xref_category_child_id` (`category_child_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Category relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_category_xref`
--

LOCK TABLES `japzd_redshop_category_xref` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_category_xref` DISABLE KEYS */;
INSERT INTO `japzd_redshop_category_xref` VALUES (0,1),(0,2),(0,3),(0,4);
/*!40000 ALTER TABLE `japzd_redshop_category_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_container`
--

DROP TABLE IF EXISTS `japzd_redshop_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_container` (
  `container_id` int(11) NOT NULL auto_increment,
  `container_name` varchar(250) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `container_desc` longtext NOT NULL,
  `creation_date` double NOT NULL,
  `min_del_time` int(11) NOT NULL,
  `max_del_time` int(11) NOT NULL,
  `container_volume` double NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  PRIMARY KEY  (`container_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Container';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_container`
--

LOCK TABLES `japzd_redshop_container` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_container` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_container_product_xref`
--

DROP TABLE IF EXISTS `japzd_redshop_container_product_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_container_product_xref` (
  `container_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  UNIQUE KEY `container_id` (`container_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Container Product Relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_container_product_xref`
--

LOCK TABLES `japzd_redshop_container_product_xref` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_container_product_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_container_product_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_country`
--

DROP TABLE IF EXISTS `japzd_redshop_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_country` (
  `country_id` int(11) NOT NULL auto_increment,
  `country_name` varchar(64) default NULL,
  `country_3_code` char(3) default NULL,
  `country_2_code` char(2) default NULL,
  `country_jtext` varchar(255) NOT NULL,
  PRIMARY KEY  (`country_id`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=MyISAM AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 COMMENT='Country records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_country`
--

LOCK TABLES `japzd_redshop_country` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_country` DISABLE KEYS */;
INSERT INTO `japzd_redshop_country` VALUES (1,'Afghanistan','AFG','AF',''),(2,'Albania','ALB','AL',''),(3,'Algeria','DZA','DZ',''),(4,'American Samoa','ASM','AS',''),(5,'Andorra','AND','AD',''),(6,'Angola','AGO','AO',''),(7,'Anguilla','AIA','AI',''),(8,'Antarctica','ATA','AQ',''),(9,'Antigua and Barbuda','ATG','AG',''),(10,'Argentina','ARG','AR',''),(11,'Armenia','ARM','AM',''),(12,'Aruba','ABW','AW',''),(13,'Australia','AUS','AU',''),(14,'Austria','AUT','AT',''),(15,'Azerbaijan','AZE','AZ',''),(16,'Bahamas','BHS','BS',''),(17,'Bahrain','BHR','BH',''),(18,'Bangladesh','BGD','BD',''),(19,'Barbados','BRB','BB',''),(20,'Belarus','BLR','BY',''),(21,'Belgium','BEL','BE',''),(22,'Belize','BLZ','BZ',''),(23,'Benin','BEN','BJ',''),(24,'Bermuda','BMU','BM',''),(25,'Bhutan','BTN','BT',''),(26,'Bolivia','BOL','BO',''),(27,'Bosnia and Herzegowina','BIH','BA',''),(28,'Botswana','BWA','BW',''),(29,'Bouvet Island','BVT','BV',''),(30,'Brazil','BRA','BR',''),(31,'British Indian Ocean Territory','IOT','IO',''),(32,'Brunei Darussalam','BRN','BN',''),(33,'Bulgaria','BGR','BG',''),(34,'Burkina Faso','BFA','BF',''),(35,'Burundi','BDI','BI',''),(36,'Cambodia','KHM','KH',''),(37,'Cameroon','CMR','CM',''),(38,'Canada','CAN','CA',''),(39,'Cape Verde','CPV','CV',''),(40,'Cayman Islands','CYM','KY',''),(41,'Central African Republic','CAF','CF',''),(42,'Chad','TCD','TD',''),(43,'Chile','CHL','CL',''),(44,'China','CHN','CN',''),(45,'Christmas Island','CXR','CX',''),(46,'Cocos (Keeling) Islands','CCK','CC',''),(47,'Colombia','COL','CO',''),(48,'Comoros','COM','KM',''),(49,'Congo','COG','CG',''),(50,'Cook Islands','COK','CK',''),(51,'Costa Rica','CRI','CR',''),(52,'Cote D\'Ivoire','CIV','CI',''),(53,'Croatia','HRV','HR',''),(54,'Cuba','CUB','CU',''),(55,'Cyprus','CYP','CY',''),(56,'Czech Republic','CZE','CZ',''),(57,'Denmark','DNK','DK',''),(58,'Djibouti','DJI','DJ',''),(59,'Dominica','DMA','DM',''),(60,'Dominican Republic','DOM','DO',''),(62,'Ecuador','ECU','EC',''),(63,'Egypt','EGY','EG',''),(64,'El Salvador','SLV','SV',''),(65,'Equatorial Guinea','GNQ','GQ',''),(66,'Eritrea','ERI','ER',''),(67,'Estonia','EST','EE',''),(68,'Ethiopia','ETH','ET',''),(69,'Falkland Islands (Malvinas)','FLK','FK',''),(70,'Faroe Islands','FRO','FO',''),(71,'Fiji','FJI','FJ',''),(72,'Finland','FIN','FI',''),(73,'France','FRA','FR',''),(75,'French Guiana','GUF','GF',''),(76,'French Polynesia','PYF','PF',''),(77,'French Southern Territories','ATF','TF',''),(78,'Gabon','GAB','GA',''),(79,'Gambia','GMB','GM',''),(80,'Georgia','GEO','GE',''),(81,'Germany','DEU','DE',''),(82,'Ghana','GHA','GH',''),(83,'Gibraltar','GIB','GI',''),(84,'Greece','GRC','GR',''),(85,'Greenland','GRL','GL',''),(86,'Grenada','GRD','GD',''),(87,'Guadeloupe','GLP','GP',''),(88,'Guam','GUM','GU',''),(89,'Guatemala','GTM','GT',''),(90,'Guinea','GIN','GN',''),(91,'Guinea-bissau','GNB','GW',''),(92,'Guyana','GUY','GY',''),(93,'Haiti','HTI','HT',''),(94,'Heard and Mc Donald Islands','HMD','HM',''),(95,'Honduras','HND','HN',''),(96,'Hong Kong','HKG','HK',''),(97,'Hungary','HUN','HU',''),(98,'Iceland','ISL','IS',''),(99,'India','IND','IN',''),(100,'Indonesia','IDN','ID',''),(101,'Iran (Islamic Republic of)','IRN','IR',''),(102,'Iraq','IRQ','IQ',''),(103,'Ireland','IRL','IE',''),(104,'Israel','ISR','IL',''),(105,'Italy','ITA','IT',''),(106,'Jamaica','JAM','JM',''),(107,'Japan','JPN','JP',''),(108,'Jordan','JOR','JO',''),(109,'Kazakhstan','KAZ','KZ',''),(110,'Kenya','KEN','KE',''),(111,'Kiribati','KIR','KI',''),(112,'Korea, Democratic People\'s Republic of','PRK','KP',''),(113,'Korea, Republic of','KOR','KR',''),(114,'Kuwait','KWT','KW',''),(115,'Kyrgyzstan','KGZ','KG',''),(116,'Lao People\'s Democratic Republic','LAO','LA',''),(117,'Latvia','LVA','LV',''),(118,'Lebanon','LBN','LB',''),(119,'Lesotho','LSO','LS',''),(120,'Liberia','LBR','LR',''),(121,'Libyan Arab Jamahiriya','LBY','LY',''),(122,'Liechtenstein','LIE','LI',''),(123,'Lithuania','LTU','LT',''),(124,'Luxembourg','LUX','LU',''),(125,'Macau','MAC','MO',''),(126,'Macedonia, The Former Yugoslav Republic of','MKD','MK',''),(127,'Madagascar','MDG','MG',''),(128,'Malawi','MWI','MW',''),(129,'Malaysia','MYS','MY',''),(130,'Maldives','MDV','MV',''),(131,'Mali','MLI','ML',''),(132,'Malta','MLT','MT',''),(133,'Marshall Islands','MHL','MH',''),(134,'Martinique','MTQ','MQ',''),(135,'Mauritania','MRT','MR',''),(136,'Mauritius','MUS','MU',''),(137,'Mayotte','MYT','YT',''),(138,'Mexico','MEX','MX',''),(139,'Micronesia, Federated States of','FSM','FM',''),(140,'Moldova, Republic of','MDA','MD',''),(141,'Monaco','MCO','MC',''),(142,'Mongolia','MNG','MN',''),(143,'Montserrat','MSR','MS',''),(144,'Morocco','MAR','MA',''),(145,'Mozambique','MOZ','MZ',''),(146,'Myanmar','MMR','MM',''),(147,'Namibia','NAM','NA',''),(148,'Nauru','NRU','NR',''),(149,'Nepal','NPL','NP',''),(150,'Netherlands','NLD','NL',''),(151,'Netherlands Antilles','ANT','AN',''),(152,'New Caledonia','NCL','NC',''),(153,'New Zealand','NZL','NZ',''),(154,'Nicaragua','NIC','NI',''),(155,'Niger','NER','NE',''),(156,'Nigeria','NGA','NG',''),(157,'Niue','NIU','NU',''),(158,'Norfolk Island','NFK','NF',''),(159,'Northern Mariana Islands','MNP','MP',''),(160,'Norway','NOR','NO',''),(161,'Oman','OMN','OM',''),(162,'Pakistan','PAK','PK',''),(163,'Palau','PLW','PW',''),(164,'Panama','PAN','PA',''),(165,'Papua New Guinea','PNG','PG',''),(166,'Paraguay','PRY','PY',''),(167,'Peru','PER','PE',''),(168,'Philippines','PHL','PH',''),(169,'Pitcairn','PCN','PN',''),(170,'Poland','POL','PL',''),(171,'Portugal','PRT','PT',''),(172,'Puerto Rico','PRI','PR',''),(173,'Qatar','QAT','QA',''),(174,'Reunion','REU','RE',''),(175,'Romania','ROM','RO',''),(176,'Russian Federation','RUS','RU',''),(177,'Rwanda','RWA','RW',''),(178,'Saint Kitts and Nevis','KNA','KN',''),(179,'Saint Lucia','LCA','LC',''),(180,'Saint Vincent and the Grenadines','VCT','VC',''),(181,'Samoa','WSM','WS',''),(182,'San Marino','SMR','SM',''),(183,'Sao Tome and Principe','STP','ST',''),(184,'Saudi Arabia','SAU','SA',''),(185,'Senegal','SEN','SN',''),(186,'Seychelles','SYC','SC',''),(187,'Sierra Leone','SLE','SL',''),(188,'Singapore','SGP','SG',''),(189,'Slovakia (Slovak Republic)','SVK','SK',''),(190,'Slovenia','SVN','SI',''),(191,'Solomon Islands','SLB','SB',''),(192,'Somalia','SOM','SO',''),(193,'South Africa','ZAF','ZA',''),(194,'South Georgia and the South Sandwich Islands','SGS','GS',''),(195,'Spain','ESP','ES',''),(196,'Sri Lanka','LKA','LK',''),(197,'St. Helena','SHN','SH',''),(198,'St. Pierre and Miquelon','SPM','PM',''),(199,'Sudan','SDN','SD',''),(200,'Suriname','SUR','SR',''),(201,'Svalbard and Jan Mayen Islands','SJM','SJ',''),(202,'Swaziland','SWZ','SZ',''),(203,'Sweden','SWE','SE',''),(204,'Switzerland','CHE','CH',''),(205,'Syrian Arab Republic','SYR','SY',''),(206,'Taiwan','TWN','TW',''),(207,'Tajikistan','TJK','TJ',''),(208,'Tanzania, United Republic of','TZA','TZ',''),(209,'Thailand','THA','TH',''),(210,'Togo','TGO','TG',''),(211,'Tokelau','TKL','TK',''),(212,'Tonga','TON','TO',''),(213,'Trinidad and Tobago','TTO','TT',''),(214,'Tunisia','TUN','TN',''),(215,'Turkey','TUR','TR',''),(216,'Turkmenistan','TKM','TM',''),(217,'Turks and Caicos Islands','TCA','TC',''),(218,'Tuvalu','TUV','TV',''),(219,'Uganda','UGA','UG',''),(220,'Ukraine','UKR','UA',''),(221,'United Arab Emirates','ARE','AE',''),(222,'United Kingdom','GBR','GB',''),(223,'United States','USA','US',''),(224,'United States Minor Outlying Islands','UMI','UM',''),(225,'Uruguay','URY','UY',''),(226,'Uzbekistan','UZB','UZ',''),(227,'Vanuatu','VUT','VU',''),(228,'Vatican City State (Holy See)','VAT','VA',''),(229,'Venezuela','VEN','VE',''),(230,'Viet Nam','VNM','VN',''),(231,'Virgin Islands (British)','VGB','VG',''),(232,'Virgin Islands (U.S.)','VIR','VI',''),(233,'Wallis and Futuna Islands','WLF','WF',''),(234,'Western Sahara','ESH','EH',''),(235,'Yemen','YEM','YE',''),(237,'The Democratic Republic of Congo','DRC','DC',''),(238,'Zambia','ZMB','ZM',''),(239,'Zimbabwe','ZWE','ZW',''),(241,'Jersey','XJE','XJ',''),(242,'St. Barthelemy','XSB','XB',''),(245,'Aland Islands','ALA','AX',''),(246,'Guernsey','GGY','GG',''),(247,'Saint Martin (French part)','MAF','MF',''),(248,'Timor-Leste','TLS','TL',''),(249,'Serbia','SRB','RS',''),(250,'Isle of Man','IMN','IM',''),(251,'Montenegro','MNE','ME',''),(252,'Palestinian Territory, Occupied','PSE','PS','');
/*!40000 ALTER TABLE `japzd_redshop_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_coupons`
--

DROP TABLE IF EXISTS `japzd_redshop_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_coupons` (
  `coupon_id` int(16) NOT NULL auto_increment,
  `coupon_code` varchar(32) NOT NULL default '',
  `percent_or_total` tinyint(4) NOT NULL,
  `coupon_value` decimal(12,2) NOT NULL default '0.00',
  `start_date` double NOT NULL,
  `end_date` double NOT NULL,
  `coupon_type` tinyint(4) NOT NULL COMMENT '0 - Global, 1 - User Specific',
  `userid` int(11) NOT NULL,
  `coupon_left` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `free_shipping` tinyint(4) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Coupons';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_coupons`
--

LOCK TABLES `japzd_redshop_coupons` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_coupons_transaction`
--

DROP TABLE IF EXISTS `japzd_redshop_coupons_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_coupons_transaction` (
  `transaction_coupon_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_value` decimal(10,3) NOT NULL,
  `userid` int(11) NOT NULL,
  `trancation_date` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  PRIMARY KEY  (`transaction_coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Coupons Transaction';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_coupons_transaction`
--

LOCK TABLES `japzd_redshop_coupons_transaction` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_coupons_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_coupons_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_cron`
--

DROP TABLE IF EXISTS `japzd_redshop_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_cron` (
  `id` int(11) NOT NULL auto_increment,
  `date` date NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Cron Job';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_cron`
--

LOCK TABLES `japzd_redshop_cron` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_cron` DISABLE KEYS */;
INSERT INTO `japzd_redshop_cron` VALUES (1,'2012-12-14',1);
/*!40000 ALTER TABLE `japzd_redshop_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_currency`
--

DROP TABLE IF EXISTS `japzd_redshop_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_currency` (
  `currency_id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(64) default NULL,
  `currency_code` char(3) default NULL,
  PRIMARY KEY  (`currency_id`),
  KEY `idx_currency_name` (`currency_name`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='redSHOP Currency Detail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_currency`
--

LOCK TABLES `japzd_redshop_currency` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_currency` DISABLE KEYS */;
INSERT INTO `japzd_redshop_currency` VALUES (1,'Andorran Peseta','ADP'),(2,'United Arab Emirates Dirham','AED'),(3,'Afghanistan Afghani','AFA'),(4,'Albanian Lek','ALL'),(5,'Netherlands Antillian Guilder','ANG'),(6,'Angolan Kwanza','AOK'),(7,'Argentine Peso','ARS'),(9,'Australian Dollar','AUD'),(10,'Aruban Florin','AWG'),(11,'Barbados Dollar','BBD'),(12,'Bangladeshi Taka','BDT'),(14,'Bulgarian Lev','BGL'),(15,'Bahraini Dinar','BHD'),(16,'Burundi Franc','BIF'),(17,'Bermudian Dollar','BMD'),(18,'Brunei Dollar','BND'),(19,'Bolivian Boliviano','BOB'),(20,'Brazilian Real','BRL'),(21,'Bahamian Dollar','BSD'),(22,'Bhutan Ngultrum','BTN'),(23,'Burma Kyat','BUK'),(24,'Botswanian Pula','BWP'),(25,'Belize Dollar','BZD'),(26,'Canadian Dollar','CAD'),(27,'Swiss Franc','CHF'),(28,'Chilean Unidades de Fomento','CLF'),(29,'Chilean Peso','CLP'),(30,'Yuan (Chinese) Renminbi','CNY'),(31,'Colombian Peso','COP'),(32,'Costa Rican Colon','CRC'),(33,'Czech Koruna','CZK'),(34,'Cuban Peso','CUP'),(35,'Cape Verde Escudo','CVE'),(36,'Cyprus Pound','CYP'),(40,'Danish Krone','DKK'),(41,'Dominican Peso','DOP'),(42,'Algerian Dinar','DZD'),(43,'Ecuador Sucre','ECS'),(44,'Egyptian Pound','EGP'),(46,'Ethiopian Birr','ETB'),(47,'Euro','EUR'),(49,'Fiji Dollar','FJD'),(50,'Falkland Islands Pound','FKP'),(52,'British Pound','GBP'),(53,'Ghanaian Cedi','GHC'),(54,'Gibraltar Pound','GIP'),(55,'Gambian Dalasi','GMD'),(56,'Guinea Franc','GNF'),(58,'Guatemalan Quetzal','GTQ'),(59,'Guinea-Bissau Peso','GWP'),(60,'Guyanan Dollar','GYD'),(61,'Hong Kong Dollar','HKD'),(62,'Honduran Lempira','HNL'),(63,'Haitian Gourde','HTG'),(64,'Hungarian Forint','HUF'),(65,'Indonesian Rupiah','IDR'),(66,'Irish Punt','IEP'),(67,'Israeli Shekel','ILS'),(68,'Indian Rupee','INR'),(69,'Iraqi Dinar','IQD'),(70,'Iranian Rial','IRR'),(73,'Jamaican Dollar','JMD'),(74,'Jordanian Dinar','JOD'),(75,'Japanese Yen','JPY'),(76,'Kenyan Schilling','KES'),(77,'Kampuchean (Cambodian) Riel','KHR'),(78,'Comoros Franc','KMF'),(79,'North Korean Won','KPW'),(80,'(South) Korean Won','KRW'),(81,'Kuwaiti Dinar','KWD'),(82,'Cayman Islands Dollar','KYD'),(83,'Lao Kip','LAK'),(84,'Lebanese Pound','LBP'),(85,'Sri Lanka Rupee','LKR'),(86,'Liberian Dollar','LRD'),(87,'Lesotho Loti','LSL'),(89,'Libyan Dinar','LYD'),(90,'Moroccan Dirham','MAD'),(91,'Malagasy Franc','MGF'),(92,'Mongolian Tugrik','MNT'),(93,'Macau Pataca','MOP'),(94,'Mauritanian Ouguiya','MRO'),(95,'Maltese Lira','MTL'),(96,'Mauritius Rupee','MUR'),(97,'Maldive Rufiyaa','MVR'),(98,'Malawi Kwacha','MWK'),(99,'Mexican Peso','MXP'),(100,'Malaysian Ringgit','MYR'),(101,'Mozambique Metical','MZM'),(102,'Nigerian Naira','NGN'),(103,'Nicaraguan Cordoba','NIC'),(105,'Norwegian Kroner','NOK'),(106,'Nepalese Rupee','NPR'),(107,'New Zealand Dollar','NZD'),(108,'Omani Rial','OMR'),(109,'Panamanian Balboa','PAB'),(110,'Peruvian Nuevo Sol','PEN'),(111,'Papua New Guinea Kina','PGK'),(112,'Philippine Peso','PHP'),(113,'Pakistan Rupee','PKR'),(114,'Polish Złoty','PLN'),(116,'Paraguay Guarani','PYG'),(117,'Qatari Rial','QAR'),(118,'Romanian Leu','RON'),(119,'Rwanda Franc','RWF'),(120,'Saudi Arabian Riyal','SAR'),(121,'Solomon Islands Dollar','SBD'),(122,'Seychelles Rupee','SCR'),(123,'Sudanese Pound','SDP'),(124,'Swedish Krona','SEK'),(125,'Singapore Dollar','SGD'),(126,'St. Helena Pound','SHP'),(127,'Sierra Leone Leone','SLL'),(128,'Somali Schilling','SOS'),(129,'Suriname Guilder','SRG'),(130,'Sao Tome and Principe Dobra','STD'),(131,'Russian Ruble','RUB'),(132,'El Salvador Colon','SVC'),(133,'Syrian Potmd','SYP'),(134,'Swaziland Lilangeni','SZL'),(135,'Thai Bath','THB'),(136,'Tunisian Dinar','TND'),(137,'Tongan Pa\'anga','TOP'),(138,'East Timor Escudo','TPE'),(139,'Turkish Lira','TRY'),(140,'Trinidad and Tobago Dollar','TTD'),(141,'Taiwan Dollar','TWD'),(142,'Tanzanian Schilling','TZS'),(143,'Uganda Shilling','UGS'),(144,'US Dollar','USD'),(145,'Uruguayan Peso','UYP'),(146,'Venezualan Bolivar','VEB'),(147,'Vietnamese Dong','VND'),(148,'Vanuatu Vatu','VUV'),(149,'Samoan Tala','WST'),(150,'Democratic Yemeni Dinar','YDD'),(151,'Yemeni Rial','YER'),(152,'New Yugoslavia Dinar','YUD'),(153,'South African Rand','ZAR'),(154,'Zambian Kwacha','ZMK'),(155,'Zaire Zaire','ZRZ'),(156,'Zimbabwe Dollar','ZWD'),(157,'Slovak Koruna','SKK'),(158,'Armenian Dram','AMD');
/*!40000 ALTER TABLE `japzd_redshop_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_customer_question`
--

DROP TABLE IF EXISTS `japzd_redshop_customer_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_customer_question` (
  `question_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `question_date` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  PRIMARY KEY  (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Customer Question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_customer_question`
--

LOCK TABLES `japzd_redshop_customer_question` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_customer_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_customer_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_discount`
--

DROP TABLE IF EXISTS `japzd_redshop_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_discount` (
  `discount_id` int(11) NOT NULL auto_increment,
  `amount` int(11) NOT NULL,
  `condition` tinyint(1) NOT NULL default '1',
  `discount_amount` decimal(10,4) NOT NULL,
  `discount_type` tinyint(4) NOT NULL,
  `start_date` double NOT NULL,
  `end_date` double NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Discount';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_discount`
--

LOCK TABLES `japzd_redshop_discount` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_discount_product`
--

DROP TABLE IF EXISTS `japzd_redshop_discount_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_discount_product` (
  `discount_product_id` int(11) NOT NULL auto_increment,
  `amount` int(11) NOT NULL,
  `condition` tinyint(1) NOT NULL default '1',
  `discount_amount` decimal(10,2) NOT NULL,
  `discount_type` tinyint(4) NOT NULL,
  `start_date` double NOT NULL,
  `end_date` double NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`discount_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_discount_product`
--

LOCK TABLES `japzd_redshop_discount_product` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_discount_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_discount_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_discount_product_shoppers`
--

DROP TABLE IF EXISTS `japzd_redshop_discount_product_shoppers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_discount_product_shoppers` (
  `discount_product_id` int(11) NOT NULL,
  `shopper_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_discount_product_shoppers`
--

LOCK TABLES `japzd_redshop_discount_product_shoppers` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_discount_product_shoppers` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_discount_product_shoppers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_discount_shoppers`
--

DROP TABLE IF EXISTS `japzd_redshop_discount_shoppers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_discount_shoppers` (
  `discount_id` int(11) NOT NULL,
  `shopper_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_discount_shoppers`
--

LOCK TABLES `japzd_redshop_discount_shoppers` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_discount_shoppers` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_discount_shoppers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_economic_accountgroup`
--

DROP TABLE IF EXISTS `japzd_redshop_economic_accountgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_economic_accountgroup` (
  `accountgroup_id` int(11) NOT NULL auto_increment,
  `accountgroup_name` varchar(255) NOT NULL,
  `economic_vat_account` varchar(255) NOT NULL,
  `economic_nonvat_account` varchar(255) NOT NULL,
  `economic_discount_nonvat_account` varchar(255) NOT NULL,
  `economic_shipping_vat_account` varchar(255) NOT NULL,
  `economic_shipping_nonvat_account` varchar(255) NOT NULL,
  `economic_discount_product_number` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `economic_service_nonvat_account` varchar(255) NOT NULL,
  `economic_discount_vat_account` varchar(255) NOT NULL,
  PRIMARY KEY  (`accountgroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Economic Account Group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_economic_accountgroup`
--

LOCK TABLES `japzd_redshop_economic_accountgroup` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_economic_accountgroup` DISABLE KEYS */;
INSERT INTO `japzd_redshop_economic_accountgroup` VALUES (1,'default account group','4001','4000','4000','4001','4000','191919',1,'','4001');
/*!40000 ALTER TABLE `japzd_redshop_economic_accountgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_fields`
--

DROP TABLE IF EXISTS `japzd_redshop_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_fields` (
  `field_id` int(11) NOT NULL auto_increment,
  `field_title` varchar(250) NOT NULL,
  `field_name` varchar(20) NOT NULL,
  `field_type` varchar(20) NOT NULL,
  `field_desc` longtext NOT NULL,
  `field_class` varchar(20) NOT NULL,
  `field_section` varchar(20) NOT NULL,
  `field_maxlength` int(11) NOT NULL,
  `field_cols` int(11) NOT NULL,
  `field_rows` int(11) NOT NULL,
  `field_size` tinyint(4) NOT NULL,
  `field_show_in_front` tinyint(4) NOT NULL,
  `required` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  `display_in_product` tinyint(4) NOT NULL,
  `display_in_checkout` tinyint(4) NOT NULL,
  PRIMARY KEY  (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_fields`
--

LOCK TABLES `japzd_redshop_fields` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_fields_data`
--

DROP TABLE IF EXISTS `japzd_redshop_fields_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_fields_data` (
  `data_id` int(11) NOT NULL auto_increment,
  `fieldid` int(11) default NULL,
  `data_txt` longtext,
  `itemid` int(11) default NULL,
  `section` varchar(20) default NULL,
  `alt_text` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  PRIMARY KEY  (`data_id`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Fields Data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_fields_data`
--

LOCK TABLES `japzd_redshop_fields_data` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_fields_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_fields_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_fields_value`
--

DROP TABLE IF EXISTS `japzd_redshop_fields_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_fields_value` (
  `value_id` int(11) NOT NULL auto_increment,
  `field_id` int(11) NOT NULL,
  `field_value` varchar(250) NOT NULL,
  `field_name` varchar(250) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `image_link` text NOT NULL,
  PRIMARY KEY  (`value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Fields Value';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_fields_value`
--

LOCK TABLES `japzd_redshop_fields_value` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_fields_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_fields_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_giftcard`
--

DROP TABLE IF EXISTS `japzd_redshop_giftcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_giftcard` (
  `giftcard_id` int(11) NOT NULL auto_increment,
  `giftcard_name` varchar(255) NOT NULL,
  `giftcard_price` decimal(10,3) NOT NULL,
  `giftcard_value` decimal(10,3) NOT NULL,
  `giftcard_validity` int(11) NOT NULL,
  `giftcard_date` int(11) NOT NULL,
  `giftcard_bgimage` varchar(255) NOT NULL,
  `giftcard_image` varchar(255) NOT NULL,
  `published` int(11) NOT NULL,
  `giftcard_desc` longtext NOT NULL,
  `customer_amount` int(11) NOT NULL,
  `accountgroup_id` int(11) NOT NULL,
  PRIMARY KEY  (`giftcard_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Giftcard';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_giftcard`
--

LOCK TABLES `japzd_redshop_giftcard` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_giftcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_giftcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_mail`
--

DROP TABLE IF EXISTS `japzd_redshop_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_mail` (
  `mail_id` int(11) NOT NULL auto_increment,
  `mail_name` varchar(255) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_section` varchar(255) NOT NULL,
  `mail_order_status` varchar(11) NOT NULL,
  `mail_body` longtext NOT NULL,
  `published` tinyint(4) NOT NULL,
  `mail_bcc` varchar(255) NOT NULL,
  PRIMARY KEY  (`mail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='redSHOP Mail Center';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_mail`
--

LOCK TABLES `japzd_redshop_mail` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_mail` DISABLE KEYS */;
INSERT INTO `japzd_redshop_mail` VALUES (1,'Ask Question','Ask Question About Product','ask_question_mail','0','<p>To Admin,</p>\r\n<p>Product  : {product_name}</p>\r\n<p>Please check this link : {product_link}</p>\r\n<p> </p>\r\n<p>{user_question}</p>\r\n<p>{answer}</p>\r\n<p> </p>',1,''),(10,'Reset Password Mail','Reset Password','status_of_password_reset','0','<p>Hello, request has been made to reset your {username} account password. To reset your password, you will need to submit this token in order to verify that the request was legitimate.</p>\r\n<p>The token is {reset_token}</p>\r\n<p>Click on the URL below to enter the token and proceed with resetting your password.</p>\r\n<p><a href=\"{password_complete_url}\">Reset Password</a></p>\r\n<p> </p>\r\n<p>Thank you.</p>',1,''),(11,'Send to friend','Send to friend','product','0','<p>Hi {friend_name} ,</p>\r\n<p>New Product  : {product_name}</p>\r\n<p>{product_desc} Please check this link : {product_url}</p>\r\n<p> </p>\r\n<p> </p>',1,''),(12,'Tax exempt approval mail','Tax exempt approval mail subject','tax_exempt_approval_mail','0','<p>Hello,</p>\r\n<p>Tax exempt has been approved</p>',1,''),(13,'Tax exempt disapproval mail','Tax exempt disapproval mail subject','tax_exempt_disapproval_mail','0','<p>Hello,</p>\r\n<p>Tax exempt  has been disapproved.</p>',1,''),(14,'Tax exempt waiting approval mail','Tax exempt waiting approval mail subject','tax_exempt_waiting_approval_mail','0','<p>Tax exempt waiting approval mail contents...</p>\r\n<p>Thanks.</p>',1,''),(15,'Registration mail','Registration mail','register','0','<p>Hi,</p>\r\n<p>Thanks for your registration with our site.</p>\r\n<p>Thanks,</p>',1,''),(16,'Catlog First Reminder','Catlog First Reminder','catalog_first_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\r\n<p style=\"margin-left: 0.5in; margin-bottom: 0in; text-align: left;\"><strong><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\">Dear {name}. <br /></span></span></strong></p>\r\n<p style=\"margin-left: 0.5in; margin-bottom: 0in; text-align: left;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span> My name is xyz, in charge of customer support here at abc. We sent you our catalogue the other day, and I would just like to know if you had a chance to look at it...? In any case, I am ready by the phone / e-mail if you need any assistance whatsoever. </span></span></span></p>\r\n<p style=\"margin-left: 0.5in; margin-bottom: 0in; text-align: left;\"><strong><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Kind regards,</span></span></span></strong></p>\r\n<p style=\"margin-left: 0.5in; margin-bottom: 0in; text-align: left;\"><strong><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Name<br /></span></span></span></strong></p>\r\n<p style=\"margin-left: 0.5in; margin-bottom: 0in;\"> </p>',1,''),(17,'Catlog Second Reminder','Catlog Second Reminder','catalog_second_reminder','0','<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"><strong><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}, </span></span></span></strong></p>\r\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span> I just wish to inform you that we are currently running a campaign for all the clients who received our catalogue earlier. This means that in the next 4 days, you get </span></span></span><span style=\"color: #ff0000;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>5% </span></span></span></span><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>off everything you buy, and since our products are already competitively priced, it is a really good offer. You can use the code: XXX when you order to get the discount, but remember you have 4 days from now to decide!</span></span></span></p>\r\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"> </p>\r\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"><strong>Regards,</strong></p>\r\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"><strong>xyz. </strong></p>',1,''),(18,'Catlog Sample First Reminder','Catlog Sample First Reminder','colour_sample_first_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\r\n<p style=\"margin-left: 0.5in; margin-bottom: 0in;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}. My name is xyz, in charge of customer support here at xyz. You have requested some colour samples, and I will send them to you as soon as possible. If you have any questions, please do not hesitate to contact me. </span></span></span><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\">Kind regards, xyz</span></span></p>',1,''),(19,'Catlog Sample Second Reminder','Catlog Sample Second Reminder','colour_sample_second_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\r\n<p style=\"margin-left: 0.5in; margin-bottom: 0in;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}. I sent you some sample colour material the other day, and I would just like to know if you had a chance to look at it...? In any case, I am ready by the phone / e-mail if you need any assistance whatsoever. Kind regards, xyz</span></span></span></p>',1,''),(20,'Catlog Sample Third Reminder','Catlog Sample Third Reminder','colour_sample_third_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\r\n<p style=\"margin-left: 0.5in; margin-bottom: 0in;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}. I just wish to inform you that we are currently running a campaign for all the clients who received sample colour material from us earlier. This means that in the next 4 days, you get 5% off everything you buy, and since our products are already competitively priced, it is a really good offer. You can use the code: XXX when you order to get the discount, but remember you have 4 days from now to decide!</span></span></span></p>',1,''),(21,'Order Mail','Order Mail for {order_id}','order','0','<table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><img style=\"margin: 0px;\" alt=\"globus\" src=\"images/stories/globus.gif\" width=\"77\" height=\"80\" /><br /></td>\r\n<td>\r\n<table style=\"width: 100%;\" align=\"right\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"right\">ABC Company -- abc.com</td>\r\n</tr>\r\n<tr>\r\n<td align=\"right\">abccompany.com</td>\r\n</tr>\r\n<tr>\r\n<td align=\"right\">Street Address</td>\r\n</tr>\r\n<tr>\r\n<td align=\"right\">Address line 2</td>\r\n</tr>\r\n<tr>\r\n<td align=\"right\">County</td>\r\n</tr>\r\n<tr>\r\n<td align=\"right\">Country</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td align=\"right\">Telephone Number : 11325-3251</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td align=\"right\">E-mail : abccompany@abc.om</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" style=\"font-weight: bold;\">{order_mail_intro_text_title}</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">{order_mail_intro_text}</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc;\">\r\n<th align=\"left\">{order_information_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{order_id_lbl} : {order_id}</td>\r\n</tr>\r\n<tr>\r\n<td>{order_number_lbl} : {order_number}</td>\r\n</tr>\r\n<tr>\r\n<td>{order_date_lbl} : {order_date}</td>\r\n</tr>\r\n<tr>\r\n<td>{order_status_lbl} : {order_status}</td>\r\n</tr>\r\n<tr>\r\n<td>{customer_note_lbl} :</td>\r\n</tr>\r\n<tr>\r\n<td>{customer_note}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc;\">\r\n<th align=\"left\">{billing_address_information_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{billing_address}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc;\">\r\n<th align=\"left\">{shipping_address_information_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{shipping_address}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc;\">\r\n<th align=\"left\">{order_detail_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"2\">\r\n<tbody>\r\n<tr>\r\n<td>{product_name_lbl}</td>\r\n<td>{note_lbl}</td>\r\n<td>{price_lbl}</td>\r\n<td>{quantity_lbl}</td>\r\n<td align=\"right\">{total_price_lbl}</td>\r\n</tr>\r\n<!--{product_loop_start}-->\r\n<tr>\r\n<td>{product_name}<br />{product_s_desc}<br/>{product_attribute}<br />{product_accessory}{product_userfields}</td>\r\n<td>{product_wrapper}</td>\r\n<td>{product_price}</td>\r\n<td>{product_quantity}</td>\r\n<td align=\"right\">{product_total_price}</td>\r\n</tr>\r\n<!--{product_loop_end}-->\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"2\">\r\n<tbody>\r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{order_subtotal_lbl} : </strong></td>\r\n<td align=\"right\">{product_subtotal}</td>\r\n</tr>\r\n{if vat}  \r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{vat_lbl}</strong></td>\r\n<td align=\"right\">{order_tax}</td>\r\n</tr>\r\n{vat end if} {if discount}  \r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{discount_lbl}</strong></td>\r\n<td align=\"right\">{order_discount}</td>\r\n</tr>\r\n{discount end if}   \r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{shipping_lbl}</strong></td>\r\n<td align=\"right\">{shipping_excl_vat}</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td colspan=\"2\" align=\"left\">\r\n<hr />\r\n</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{total_lbl} :</strong></td>\r\n<td align=\"right\">{order_total}</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td colspan=\"2\" align=\"left\">\r\n<hr />\r\n<br /> \r\n<hr />\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc;\">\r\n<th align=\"left\">{payment_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{order_payment_status}</td>\r\n</tr>\r\n<tr>\r\n<td>{payment_extrainfo}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc;\">\r\n<th align=\"left\">{shipping_method_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{shipping_method}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc;\">\r\n<th align=\"left\">{order_detail_link_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{order_detail_link}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>',1,''),(22,'Order Status Change Shipped','Order Status Change Shipped','order_status','S','<p style=\"text-align: left;\">Hi {fullname},</p>\r\n<p style=\"text-align: left;\">Shipped order status mail...</p>\r\n<p style=\"text-align: left;\">Order details are as follows :</p>\r\n<p style=\"text-align: left;\">Order ID : {order_id}</p>\r\n<p style=\"text-align: left;\">Order Number : {order_number}</p>\r\n<p style=\"text-align: left;\">Order Date : {order_date}</p>\r\n<p style=\"text-align: left;\">{customer_note_lbl} : {customer_note}</p>\r\n<p style=\"text-align: left;\">{order_detail_link_lbl} : {order_detail_link}</p>',1,''),(23,'Order Status Change Refunded','Order Status Change Refunded','order_status','R','<p style=\"text-align: left;\">Hi {fullname},</p>\r\n<p style=\"text-align: left;\">Refunded order status mail...</p>\r\n<p style=\"text-align: left;\">Order details are as follows :</p>\r\n<p style=\"text-align: left;\">Order ID : {order_id}</p>\r\n<p style=\"text-align: left;\">Order Number : {order_number}</p>\r\n<p style=\"text-align: left;\">Order Date : {order_date}</p>\r\n<p style=\"text-align: left;\">{customer_note_lbl} : {customer_note}</p>\r\n<p style=\"text-align: left;\">{order_detail_link_lbl} : {order_detail_link}</p>',1,''),(24,'Order Status Change Pending','Order Status Change Pending','order_status','P','<p style=\"text-align: left;\">Hi {fullname},</p>\r\n<p style=\"text-align: left;\">Pending order status mail...</p>\r\n<p style=\"text-align: left;\">Order details are as follows :</p>\r\n<p style=\"text-align: left;\">Order ID : {order_id}</p>\r\n<p style=\"text-align: left;\">Order Number : {order_number}</p>\r\n<p style=\"text-align: left;\">Order Date : {order_date}</p>\r\n<p style=\"text-align: left;\">{customer_note_lbl} : {customer_note}</p>\r\n<p style=\"text-align: left;\">{order_detail_link_lbl} : {order_detail_link}</p>',1,''),(25,'Order Status Change Confirmed','Order Status Change Confirmed','order_status','C','<p style=\"text-align: left;\">Hi {fullname},</p>\r\n<p style=\"text-align: left;\">Confirmed order status mail...</p>\r\n<p style=\"text-align: left;\">Order details are as follows :</p>\r\n<p style=\"text-align: left;\">Order ID : {order_id}</p>\r\n<p style=\"text-align: left;\">Order Number : {order_number}</p>\r\n<p style=\"text-align: left;\">Order Date : {order_date}</p>\r\n<p style=\"text-align: left;\">{customer_note_lbl} : {customer_note}</p>\r\n<p style=\"text-align: left;\">{order_detail_link_lbl} : {order_detail_link}</p>',1,''),(26,'Order Status Change Cancelled','Order Status Change Cancelled','order_status','X','<p style=\"text-align: left;\">Hi {fullname},</p>\r\n<p style=\"text-align: left;\">Cancelled order status mail...</p>\r\n<p style=\"text-align: left;\">Order details are as follows :</p>\r\n<p style=\"text-align: left;\">Order ID : {order_id}</p>\r\n<p style=\"text-align: left;\">Order Number : {order_number}</p>\r\n<p style=\"text-align: left;\">Order Date : {order_date}</p>\r\n<p style=\"text-align: left;\">{customer_note_lbl} : {customer_note}</p>\r\n<p style=\"text-align: left;\">{order_detail_link_lbl} : {order_detail_link}</p>',1,''),(27,'catalog coupon reminder','catalog coupon reminder','catalog_coupon_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\r\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}. I just wish to inform you that we are currently running a campaign for all the clients who received our catalogue earlier. This means that in the next 4 days, you get </span></span></span><span style=\"color: #ff0000;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>{discount} </span></span></span></span><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>off everything you buy, and since our products are already competitively priced, it is a really good offer. You can use the code: {coupon_code} when you order to get the discount, but remember you have 4 days from now to decide!</span></span></span></p>',1,''),(28,'Order mail Imglobal','Order mail Imglobal Subject','order_imglobal','0','<p>Hi,</p>\r\n<p>Your order will be confirmed after payment received.</p>\r\n<p style=\"text-align: left;\">Order Payment Status : {order_payment_status}</p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\">Thanks You.</p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\">Order Payment Status : {order_payment_status}</p>',1,''),(29,'Order mail Bank transfer','Order mail Bank transfer subject','order_bank','0','<p>Thanks for choosing bank transfer. your order will be confirmed after payment received.</p>\r\n<p style=\"text-align: left;\">Order Payment Status : {order_payment_status}</p>\r\n<p style=\"text-align: left;\"> </p>\r\n<p style=\"text-align: left;\">Thanks You.</p>',1,''),(30,'First Mail After Order Purchased','Mail After Order Purchased','first_mail_after_order_purchased','0','<p>Hi {name}, <br />You made an order with us 7 days ago and to show our appreciation of you as a customer we send you discount code to use the next time you visit our store</p>\r\n<p>{url}</p>\r\n<p>discount amount : {coupon_amount}</p>\r\n<p>discount coupon code : {coupon_code}</p>\r\n<p>valid upto : {coupon_duration}</p>\r\n<p>Thank you.</p>',1,''),(32,'Second Mail After Order Purchased','Second Mail After Order Purchased','second_mail_after_order_purchased','0','<p>Hi {name}, <br />You made an order with us 10 days ago and to show our appreciation of you as a customer we send you discount code to use the next time you visit our store</p>\r\n<p>{url}</p>\r\n<p>discount amount : {coupon_amount}</p>\r\n<p>discount coupon code : {coupon_code}</p>\r\n<p>valid upto : {coupon_duration}</p>\r\n<p>Thank you.</p>',1,''),(33,'Third Mail After Order Purchased','Third Mail After Order Purchased','third_mail_after_order_purchased','0','<p>Hi {name}, <br />You made an order with us 21 days ago and to show our appreciation of you as a customer we send you discount code to use the next time you visit our store</p>\r\n<p>{url}</p>\r\n<p>discount amount : {coupon_amount}</p>\r\n<p>discount coupon code : {coupon_code}</p>\r\n<p>valid upto : {coupon_duration}</p>\r\n<p>Thank you.</p>',1,''),(50,'Economic Invoice','Invoice','economic_inoice','0','Hi {name},<br><br>Attached is your invoice.<br><br>Thanks<br>',1,''),(34,'Catalog Send Mail','Catalog Request','catalog','0','<p>Dear, <strong>{name}</strong></p>\r\n<p>We get your request for catalog. Here, you can found attached catalogs.</p>\r\n<p> </p>\r\n<p>Thank you.</p>',1,''),(54,'My wishlist mail','My wishlist','mywishlist_mail','0','hi,{name}<!--{product_loop_start}--><table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\"><tbody><tr valign=\"top\"><td width=\"40%\"><div style=\"float: left; width: 195px; height: 230px; text-align: center;\">{product_thumb_image}<div>{product_name}</div><div>{product_price}</div></div></td></tr></tbody></table><!--{product_loop_end}-->Regards,{from_name}',1,''),(64,'Order Special Discount Mail','Admin applied discount (special offer)','order_special_discount','0','You got {special_discount} that is {special_discount_amount}.<table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\"><tbody><tr><td><br /></td><td><table style=\"width: 100%;\" align=\"right\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr><td align=\"right\">ABC Company -- abc.com</td></tr><tr><td align=\"right\">abccompany.com</td></tr><tr><td align=\"right\">Street Address</td></tr><tr><td align=\"right\">Address line 2</td></tr><tr><td align=\"right\">County</td></tr><tr><td align=\"right\">Country</td></tr><tr><td></td></tr><tr><td align=\"right\">Telephone Number : 11325-3251</td></tr><tr><td></td></tr><tr><td align=\"right\">E-mail : abccompany@abc.om</td></tr></tbody></table></td></tr><tr><td style=\"font-weight: bold\" colspan=\"2\">Some Title</td></tr><tr><td colspan=\"2\">Some Intro text...Lorem Ipsum is simply dummy 			text of the printing and typesetting industry. Lorem Ipsum has been 			the industrys standard dummy text ever since the 1500s, when an 			unknown printer took a galley of type and scrambled it to make a type 			specimen book. It has survived not only five centuries...</td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Order Information</th></tr><tr></tr><tr><td>Order id : {order_id}</td></tr><tr><td>Order Number : {order_number}</td></tr><tr><td>Order Date : {order_date}</td></tr><tr><td>Order Status : {order_status}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Billing Address Information</th></tr><tr></tr><tr><td>{billing_address}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Shipping Address Information</th></tr><tr></tr><tr><td>{shipping_address}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Order Details</th></tr><tr></tr><tr><td><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"2\"><tbody><tr><td>Product Name</td><td>Note</td><td>Price</td><td>Quantity</td><td align=\"right\">Total Price</td></tr><!--{product_loop_start}--><tr><td>{product_name}        {product_sku}</td><td>{product_wrapper}</td><td>{product_price}</td><td>{product_quantity}</td><td align=\"right\">{product_total_price}</td></tr><!--{product_loop_end}--></tbody></table></td></tr><tr><td></td></tr><tr><td><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"2\"><tbody><tr align=\"left\"><td align=\"left\"><strong>Order Subtotal : </strong></td><td align=\"right\">{product_subtotal}</td></tr><tr align=\"left\"><td align=\"left\"><strong>TAX : </strong></td><td align=\"right\">{order_tax}</td></tr><tr align=\"left\"><td align=\"left\"><strong>Discount : </strong></td><td align=\"right\">{order_discount}</td></tr><tr align=\"left\"><td align=\"left\"><strong>{special_discount_lbl} </strong></td><td align=\"right\">{special_discount_amount}</td></tr><tr align=\"left\"><td align=\"left\"><strong>Shipping : </strong></td><td align=\"right\">{order_shipping}</td></tr><tr align=\"left\"><td colspan=\"2\" align=\"left\"><hr /></td></tr><tr align=\"left\"><td align=\"left\"><strong>Total :</strong></td><td align=\"right\">{order_total}</td></tr><tr align=\"left\"><td colspan=\"2\" align=\"left\"><hr /></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>',1,''),(74,'News letter ','News Letter confirmation','newsletter_confirmation','0','<p>hi {name},</p>\r\n<p>Confirm your News letter {link}.</p>',1,''),(94,'Giftcard Mail','Giftcard Mail','giftcard_mail','0','<table><tr><td ><span>{giftcard_price_lbl}</span></td><td>{giftcard_price}</td></tr><tr><td ><span>{giftcard_reciver_name_lbl}</span></td><td>{giftcard_reciver_name}</td></tr><tr><td>{giftcard_reciver_email_lbl}</td><td>{giftcard_reciver_email}</td></tr><tr><td></td><td>{giftcard_desc}</td></tr><tr><td></td><td>{giftcard_price}</td></tr><tr><td>{giftcard_validity_from}{giftcard_validity_to}</td></tr><tr><td>{giftcard_image}</td></tr><tr><td>{giftcard_validity}</td></tr></table>',1,''),(84,'NewsLetter cancellation ','NewsLetter cancellation ','newsletter_cancellation','0','NewsLetter cancellationNewsLetter cancellation NewsLetter cancellation NewsLetter cancellationNewsLetter cancellation NewsLetter cancellation',1,''),(85,'Invoice Mail','Invoice Mail','invoice_mail','0','<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc\">\r\n<th align=\"left\">{order_information_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{order_id_lbl} : {order_id}</td>\r\n</tr>\r\n<tr>\r\n<td>{order_number_lbl} : {order_number}</td>\r\n</tr>\r\n<tr>\r\n<td>{order_date_lbl} : {order_date}</td>\r\n</tr>\r\n<tr>\r\n<td>{order_status_lbl} : {order_status}</td>\r\n</tr>\r\n<tr>\r\n<td>{customer_note_lbl} : {customer_note}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc\">\r\n<th align=\"left\">{billing_address_information_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{billing_address}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc\">\r\n<th align=\"left\">{shipping_address_information_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{shipping_address}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc\">\r\n<th align=\"left\">{order_detail_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td>{product_name_lbl}</td>\r\n<td>{note_lbl}</td>\r\n<td>{price_lbl}</td>\r\n<td>{quantity_lbl}</td>\r\n<td align=\"right\">{total_price_lbl}</td>\r\n</tr>\r\n<!--{product_loop_start}-->\r\n<tr>\r\n<td>{product_name}({product_number})<br />{product_userfields}<br />{product_attribute}<br />{product_accessory}</td>\r\n<td>{product_wrapper}</td>\r\n<td>{product_price}</td>\r\n<td>{product_quantity}</td>\r\n<td align=\"right\">{product_total_price}</td>\r\n</tr>\r\n<!--{product_loop_end}-->\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{order_subtotal_lbl} : </strong></td>\r\n<td align=\"right\">{product_subtotal}</td>\r\n</tr>\r\n{if vat}\r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{vat_lbl} : </strong></td>\r\n<td align=\"right\">{order_tax}</td>\r\n</tr>\r\n{vat end if} {if discount}\r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{discount_lbl} : </strong></td>\r\n<td align=\"right\">{order_discount}</td>\r\n</tr>\r\n{discount end if}\r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{shipping_lbl} : </strong></td>\r\n<td align=\"right\">{shipping_excl_vat}</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td colspan=\"2\" align=\"left\">\r\n<hr />\r\n</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{total_lbl} :</strong></td>\r\n<td align=\"right\">{order_total}</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td colspan=\"2\" align=\"left\">\r\n<hr />\r\n<br /> \r\n<hr />\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc\">\r\n<th align=\"left\">Payment Status</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{order_payment_status}<br />{shipping_method_lbl}: {shipping_method}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc\">\r\n<th align=\"left\">{order_detail_link_lbl}</th>\r\n</tr>\r\n<tr>\r\n</tr>\r\n<tr>\r\n<td>{order_detail_link}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>',1,''),(86,'Product Subscription Mail','Mail for product Subscription ','subscription_renewal_mail','0','<h1>Product Subscription Renew</h1>\r\n<h3>Dear,</h3>\r\n<p><span>{firstname} {lastname}</span></p>\r\n<p>Your Subscription for <strong>{product_name}</strong> is going to expired on <span>{subsciption_enddate}</span></p>\r\n<h2>Your Subscription Detail is as below</h2>\r\n<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Subscribe Product :</td>\r\n<td>{product_name}</td>\r\n</tr>\r\n<tr>\r\n<td>Subscription Period :</td>\r\n<td>{subscription_period}</td>\r\n</tr>\r\n<tr>\r\n<td>Subscription Price : </td>\r\n<td>{subscription_price}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Click here <em>{product_link}</em> and renew it</p>',1,''),(105,'Quotation Mail','Quotation Mail for {quotation_id} - {quotation_status} - {quotation_total}','quotation_mail','0','<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc\">\r\n<th align=\"left\">{quotation_information_lbl}</th>\r\n</tr>\r\n<tr>\r\n<td>{quotation_id_lbl} : {quotation_id}</td>\r\n</tr>\r\n<tr>\r\n<td>{quotation_number_lbl} : {quotation_number}</td>\r\n</tr>\r\n<tr>\r\n<td>{quotation_date_lbl} : {quotation_date}</td>\r\n</tr>\r\n<tr>\r\n<td>{quotation_status_lbl} : {quotation_status}</td>\r\n</tr>\r\n<tr>\r\n<td>{quotation_note_lbl} : {quotation_note}</td>\r\n</tr>\r\n<tr>\r\n<td>{quotation_detail_link}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc\">\r\n<th align=\"left\">{billing_address_information_lbl}</th>\r\n</tr>\r\n<tr>\r\n<td>{billing_address}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr style=\"background-color: #cccccc\">\r\n<th align=\"left\">{quotation_detail_lbl}</th>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td>{product_name_lbl}</td>\r\n<td>{note_lbl}</td>\r\n<td>{price_lbl}</td>\r\n<td>{quantity_lbl}</td>\r\n<td align=\"right\">{total_price_lbl}</td>\r\n</tr>\r\n<!--{product_loop_start}-->\r\n<tr>\r\n<td>{product_name}{product_s_desc}({product_number})<br />{product_userfields}<br />{product_attribute}<br />{product_accessory}</td>\r\n<td>{product_wrapper}<br />{product_thumb_image}</td>\r\n<td>{product_price}</td>\r\n<td>{product_quantity}</td>\r\n<td align=\"right\">{product_total_price}</td>\r\n</tr>\r\n<!--{product_loop_end}-->\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\r\n<tbody>\r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{quotation_subtotal_lbl} : </strong></td>\r\n<td align=\"right\">{quotation_subtotal}</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td colspan=\"2\" align=\"left\">\r\n<hr />\r\n</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td align=\"left\"><strong>{total_lbl} :</strong></td>\r\n<td align=\"right\">{quotation_total}</td>\r\n</tr>\r\n<tr align=\"left\">\r\n<td colspan=\"2\" align=\"left\">\r\n<hr />\r\n<br /> \r\n<hr />\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>',1,''),(150,'Catalogue Order Mail','Catalogue Order Mail:','catalogue_order','0','<table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\"><tbody><tr><td><br /></td><td><table style=\"width: 100%;\" align=\"right\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr><td align=\"right\">ABC Company -- abc.com</td></tr><tr><td align=\"right\">abccompany.com</td></tr><tr><td align=\"right\">Street Address</td></tr><tr><td align=\"right\">Address line 2</td></tr><tr><td align=\"right\">County</td></tr><tr><td align=\"right\">Country</td></tr><tr><td></td></tr><tr><td align=\"right\">Telephone Number : 11325-3251</td></tr><tr><td></td></tr><tr><td align=\"right\">E-mail : abccompany@abc.om</td></tr></tbody></table></td></tr><tr><td style=\"font-weight: bold\" colspan=\"2\">Some Title</td></tr><tr><td colspan=\"2\">Some Intro text...Lorem Ipsum is simply dummy    text of the printing and typesetting industry. Lorem Ipsum has been    the industry\'s standard dummy text ever since the 1500s, when an    unknown printer took a galley of type and scrambled it to make a type    specimen book. It has survived not only five centuries...</td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">{order_information_lbl}</th></tr><tr></tr><tr><td>{order_id_lbl} : {order_id}</td></tr><tr><td>{order_number_lbl} : {order_number}</td></tr><tr><td>{order_date_lbl} : {order_date}</td></tr><tr><td>{order_status_lbl} : {order_status}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">{billing_address_information_lbl}</th></tr><tr></tr><tr><td>{billing_address}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">{shipping_address_information_lbl}</th></tr><tr></tr><tr><td>{shipping_address}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">{order_detail_lbl}</th></tr><tr></tr><tr><td><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"2\"><tbody><tr><td>{product_name_lbl}</td><td>{note_lbl}</td><td>{quantity_lbl}</td></tr><!--{product_loop_start}--><tr><td>{pro_name}<br /> {product_userfields}</td><td>{pro_note}</td><td>{pro_quantity}</td></tr><!--{product_loop_end}--></tbody></table></td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Payment Status</th></tr><tr></tr><tr><td>{order_payment_status}{shipping_method_lbl}{shipping_method}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Order url</th></tr><tr></tr><tr><td>{order_detail_link}</td></tr></tbody></table></td></tr></tbody></table>',1,''),(160,'Quotation User Register Mail','Quotation User Register Mail:','quotation_user_register','0','<table><tr><td>Username</td><td> : </td><td>{username}</td></tr><tr><td>Password</td><td> : </td><td>{password}</td></tr><tr><td>Click here</td><td> : </td><td>{link}</td></tr></table>',1,''),(175,'RequestTaxExemptMail','RequestTaxExemptMail:','request_tax_exempt_mail','0','<table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\"><tbody><tr><td>Vat Number</td><td>{vat_number}</td></tr><tr><td>User Name</td><td>{username}</td></tr><tr><td>Company Name</td><td>{company_name}</td></tr><tr><td>Country</td><td>{country}</td></tr><tr><td>State</td><td>{state}</td></tr><tr><td>Phone</td><td>{phone}</td></tr><tr><td>Zipcode</td><td>{zipcode}</td></tr><tr><td>Address</td><td>{address}</td></tr><tr><td>City</td><td>{city}</td></tr></tbody></table>',1,''),(185,'Downloadable Email','Link to download your newly purchased product(s)','downloadable_product_mail','0','<p>Dear {fullname},</p><p>Thanks for your recent purchase at our store. Here are the link(s) where you can download file/product that you have purchased.</p><p style=\"padding-left: 30px;\">Order Date : {order_date}<br />Order # : {order_number}<br />Download Links :</p><p>{product_serial_loop_start}</p><p style=\"padding-left: 150px;\">{product_name} - {token}</p><p>{product_serial_loop_end}</p><p>Once again, thank you for shopping!</p>',1,''),(186,'Review','Review About Product','review_mail','0','<p>To Admin,</p><p>Username: {username}</p><p>Product : {product_name}</p><p>Please check this link : {product_link}</p><p>Title : {title}</p><p>Comment : {comment}</p>',1,'');
/*!40000 ALTER TABLE `japzd_redshop_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_manufacturer`
--

DROP TABLE IF EXISTS `japzd_redshop_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_manufacturer` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `manufacturer_name` varchar(250) NOT NULL,
  `manufacturer_desc` longtext NOT NULL,
  `manufacturer_email` varchar(250) NOT NULL,
  `product_per_page` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metalanguage_setting` text NOT NULL,
  `metarobot_info` text NOT NULL,
  `pagetitle` text NOT NULL,
  `pageheading` text NOT NULL,
  `sef_url` text NOT NULL,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `manufacturer_url` varchar(255) NOT NULL,
  `excluding_category_list` text NOT NULL,
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Manufacturer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_manufacturer`
--

LOCK TABLES `japzd_redshop_manufacturer` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_manufacturer` DISABLE KEYS */;
INSERT INTO `japzd_redshop_manufacturer` VALUES (1,'eTRC','','greg@solutionsresource.com',0,14,'','','','','','','',1,0,'','');
/*!40000 ALTER TABLE `japzd_redshop_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_mass_discount`
--

DROP TABLE IF EXISTS `japzd_redshop_mass_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_mass_discount` (
  `mass_discount_id` int(11) NOT NULL auto_increment,
  `discount_product` longtext NOT NULL,
  `category_id` longtext NOT NULL,
  `manufacturer_id` longtext NOT NULL,
  `discount_type` tinyint(4) NOT NULL,
  `discount_amount` double(10,2) NOT NULL,
  `discount_startdate` int(11) NOT NULL,
  `discount_enddate` int(11) NOT NULL,
  `discount_name` longtext NOT NULL,
  PRIMARY KEY  (`mass_discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Page Viewer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_mass_discount`
--

LOCK TABLES `japzd_redshop_mass_discount` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_mass_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_mass_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_media`
--

DROP TABLE IF EXISTS `japzd_redshop_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_media` (
  `media_id` int(11) NOT NULL auto_increment,
  `media_name` varchar(250) NOT NULL,
  `media_alternate_text` varchar(255) NOT NULL,
  `media_section` varchar(20) NOT NULL,
  `section_id` int(11) NOT NULL,
  `media_type` varchar(250) NOT NULL,
  `media_mimetype` varchar(20) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Media';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_media`
--

LOCK TABLES `japzd_redshop_media` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_media` DISABLE KEYS */;
INSERT INTO `japzd_redshop_media` VALUES (1,'1355449614_00_SR_-_Landing.jpg','','product',1,'images','image/jpeg',1,0);
/*!40000 ALTER TABLE `japzd_redshop_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_media_download`
--

DROP TABLE IF EXISTS `japzd_redshop_media_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_media_download` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `media_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Media Additional Downloadable Files';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_media_download`
--

LOCK TABLES `japzd_redshop_media_download` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_media_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_media_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_newsletter`
--

DROP TABLE IF EXISTS `japzd_redshop_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_newsletter` (
  `newsletter_id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `template_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`newsletter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Newsletter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_newsletter`
--

LOCK TABLES `japzd_redshop_newsletter` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_newsletter` DISABLE KEYS */;
INSERT INTO `japzd_redshop_newsletter` VALUES (1,'News Letter Demo','News Letter Demo','User Name : {username} Email : {email}',29,1);
/*!40000 ALTER TABLE `japzd_redshop_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_newsletter_subscription`
--

DROP TABLE IF EXISTS `japzd_redshop_newsletter_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_newsletter_subscription` (
  `subscription_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `newsletter_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `checkout` tinyint(4) NOT NULL,
  `published` int(11) NOT NULL,
  PRIMARY KEY  (`subscription_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Newsletter subscribers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_newsletter_subscription`
--

LOCK TABLES `japzd_redshop_newsletter_subscription` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_newsletter_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_newsletter_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_newsletter_tracker`
--

DROP TABLE IF EXISTS `japzd_redshop_newsletter_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_newsletter_tracker` (
  `tracker_id` int(11) NOT NULL auto_increment,
  `newsletter_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `subscriber_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `read` tinyint(4) NOT NULL,
  `date` double NOT NULL,
  PRIMARY KEY  (`tracker_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Newsletter Tracker';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_newsletter_tracker`
--

LOCK TABLES `japzd_redshop_newsletter_tracker` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_newsletter_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_newsletter_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_order_acc_item`
--

DROP TABLE IF EXISTS `japzd_redshop_order_acc_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_order_acc_item` (
  `order_item_acc_id` int(11) NOT NULL auto_increment,
  `order_item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_acc_item_sku` varchar(255) NOT NULL,
  `order_acc_item_name` varchar(255) NOT NULL,
  `order_acc_price` decimal(15,4) NOT NULL,
  `order_acc_vat` decimal(15,4) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_acc_item_price` decimal(15,4) NOT NULL,
  `product_acc_final_price` decimal(15,4) NOT NULL,
  `product_attribute` text NOT NULL,
  PRIMARY KEY  (`order_item_acc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Order Accessory Item Detail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_order_acc_item`
--

LOCK TABLES `japzd_redshop_order_acc_item` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_order_acc_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_order_acc_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_order_attribute_item`
--

DROP TABLE IF EXISTS `japzd_redshop_order_attribute_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_order_attribute_item` (
  `order_att_item_id` int(11) NOT NULL auto_increment,
  `order_item_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `section` varchar(250) NOT NULL,
  `parent_section_id` int(11) NOT NULL,
  `section_name` varchar(250) NOT NULL,
  `section_price` decimal(15,4) NOT NULL,
  `section_vat` decimal(15,4) NOT NULL,
  `section_oprand` char(1) NOT NULL,
  `is_accessory_att` tinyint(4) NOT NULL,
  `stockroom_id` varchar(255) NOT NULL,
  `stockroom_quantity` varchar(255) NOT NULL,
  PRIMARY KEY  (`order_att_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP order Attribute item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_order_attribute_item`
--

LOCK TABLES `japzd_redshop_order_attribute_item` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_order_attribute_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_order_attribute_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_order_item`
--

DROP TABLE IF EXISTS `japzd_redshop_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `user_info_id` varchar(32) default NULL,
  `supplier_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `order_item_sku` varchar(64) NOT NULL default '',
  `order_item_name` varchar(255) NOT NULL,
  `product_quantity` int(11) default NULL,
  `product_item_price` decimal(15,4) default NULL,
  `product_item_price_excl_vat` decimal(15,4) default NULL,
  `product_final_price` decimal(12,4) NOT NULL default '0.0000',
  `order_item_currency` varchar(16) default NULL,
  `order_status` varchar(250) default NULL,
  `customer_note` text NOT NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `product_attribute` text,
  `product_accessory` text NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `container_id` int(11) NOT NULL,
  `stockroom_id` varchar(255) NOT NULL,
  `stockroom_quantity` varchar(255) NOT NULL,
  `is_split` tinyint(1) NOT NULL,
  `attribute_image` text NOT NULL,
  `wrapper_id` int(11) NOT NULL,
  `wrapper_price` decimal(10,2) NOT NULL,
  `is_giftcard` tinyint(4) NOT NULL,
  `giftcard_user_name` varchar(255) NOT NULL,
  `giftcard_user_email` varchar(255) NOT NULL,
  `product_item_old_price` decimal(10,4) NOT NULL,
  `product_purchase_price` decimal(10,4) NOT NULL,
  `discount_calc_data` text NOT NULL,
  PRIMARY KEY  (`order_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Order Item Detail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_order_item`
--

LOCK TABLES `japzd_redshop_order_item` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_order_payment`
--

DROP TABLE IF EXISTS `japzd_redshop_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_order_payment` (
  `payment_order_id` bigint(20) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `payment_method_id` int(11) default NULL,
  `order_payment_code` varchar(30) NOT NULL default '',
  `order_payment_cardname` blob NOT NULL,
  `order_payment_number` blob,
  `order_payment_ccv` blob NOT NULL,
  `order_payment_amount` double(10,2) NOT NULL,
  `order_payment_expire` int(11) default NULL,
  `order_payment_name` varchar(255) default NULL,
  `payment_method_class` varchar(256) default NULL,
  `order_payment_trans_id` text NOT NULL,
  `authorize_status` varchar(255) default NULL,
  `order_transfee` double(10,2) NOT NULL,
  PRIMARY KEY  (`payment_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Order Payment Detail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_order_payment`
--

LOCK TABLES `japzd_redshop_order_payment` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_order_status`
--

DROP TABLE IF EXISTS `japzd_redshop_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_order_status` (
  `order_status_id` int(11) NOT NULL auto_increment,
  `order_status_code` varchar(64) NOT NULL,
  `order_status_name` varchar(64) default NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`order_status_id`),
  UNIQUE KEY `order_status_code` (`order_status_code`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='redSHOP Orders Status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_order_status`
--

LOCK TABLES `japzd_redshop_order_status` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_order_status` DISABLE KEYS */;
INSERT INTO `japzd_redshop_order_status` VALUES (1,'P','Pending',1),(2,'C','Confirmed',1),(3,'X','Cancelled',1),(4,'R','Refunded',1),(5,'S','Shipped',1),(6,'RD','Ready for delivery',1),(7,'RD1','Ready for 1st delivery',1),(8,'RD2','Ready for 2nd delivery',1),(9,'ACCP','Awaiting credit card payment',1),(10,'APP','Awaiting paypal payment',1),(11,'ABT','Awaiting bank transfer',1),(12,'PR','Payment received',1),(13,'RC','Reclamation',1),(14,'PS','Partially shipped',1),(15,'RT','Returned',1),(16,'PRT','Partially Returned',1),(17,'PRC','Partially Reclamation',1);
/*!40000 ALTER TABLE `japzd_redshop_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_order_status_log`
--

DROP TABLE IF EXISTS `japzd_redshop_order_status_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_order_status_log` (
  `order_status_log_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `order_status` varchar(5) NOT NULL,
  `order_payment_status` varchar(25) NOT NULL,
  `date_changed` int(11) NOT NULL,
  `customer_note` text NOT NULL,
  PRIMARY KEY  (`order_status_log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Orders Status history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_order_status_log`
--

LOCK TABLES `japzd_redshop_order_status_log` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_order_status_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_order_status_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_order_users_info`
--

DROP TABLE IF EXISTS `japzd_redshop_order_users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_order_users_info` (
  `order_info_id` int(11) NOT NULL auto_increment,
  `users_info_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `address_type` varchar(255) NOT NULL,
  `vat_number` varchar(250) NOT NULL,
  `tax_exempt` tinyint(4) NOT NULL,
  `shopper_group_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country_code` varchar(11) NOT NULL,
  `state_code` varchar(11) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `tax_exempt_approved` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `is_company` tinyint(4) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `ean_number` varchar(250) NOT NULL,
  `requesting_tax_exempt` tinyint(4) NOT NULL,
  `thirdparty_email` varchar(255) NOT NULL,
  PRIMARY KEY  (`order_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Order User Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_order_users_info`
--

LOCK TABLES `japzd_redshop_order_users_info` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_order_users_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_order_users_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_orderbarcode_log`
--

DROP TABLE IF EXISTS `japzd_redshop_orderbarcode_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_orderbarcode_log` (
  `log_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `search_date` datetime NOT NULL,
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_orderbarcode_log`
--

LOCK TABLES `japzd_redshop_orderbarcode_log` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_orderbarcode_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_orderbarcode_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_ordernumber_track`
--

DROP TABLE IF EXISTS `japzd_redshop_ordernumber_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_ordernumber_track` (
  `trackdatetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Order number track';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_ordernumber_track`
--

LOCK TABLES `japzd_redshop_ordernumber_track` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_ordernumber_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_ordernumber_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_orders`
--

DROP TABLE IF EXISTS `japzd_redshop_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `order_number` varchar(32) default NULL,
  `barcode` varchar(13) NOT NULL,
  `user_info_id` varchar(32) default NULL,
  `order_total` decimal(15,2) NOT NULL default '0.00',
  `order_subtotal` decimal(15,5) default NULL,
  `order_tax` decimal(10,2) default NULL,
  `order_tax_details` text NOT NULL,
  `order_shipping` decimal(10,2) default NULL,
  `order_shipping_tax` decimal(10,2) default NULL,
  `coupon_discount` decimal(12,2) NOT NULL default '0.00',
  `order_discount` decimal(12,2) NOT NULL default '0.00',
  `special_discount_amount` decimal(12,2) NOT NULL,
  `payment_dicount` decimal(12,2) NOT NULL,
  `order_status` varchar(5) default NULL,
  `order_payment_status` varchar(25) NOT NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `ship_method_id` varchar(255) default NULL,
  `customer_note` text NOT NULL,
  `ip_address` varchar(15) NOT NULL default '',
  `encr_key` varchar(255) NOT NULL,
  `split_payment` int(11) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `mail1_status` tinyint(1) NOT NULL,
  `mail2_status` tinyint(1) NOT NULL,
  `mail3_status` tinyint(1) NOT NULL,
  `special_discount` decimal(10,2) NOT NULL,
  `payment_discount` decimal(10,2) NOT NULL,
  `is_booked` tinyint(1) NOT NULL,
  `order_label_create` tinyint(1) NOT NULL,
  `vm_order_number` varchar(32) NOT NULL,
  `requisition_number` varchar(255) NOT NULL,
  `bookinvoice_number` int(11) NOT NULL,
  `bookinvoice_date` int(11) NOT NULL,
  `referral_code` varchar(50) NOT NULL,
  `customer_message` varchar(255) NOT NULL,
  `shop_id` varchar(255) NOT NULL,
  `order_discount_vat` decimal(10,3) NOT NULL,
  `track_no` varchar(250) NOT NULL,
  `payment_oprand` varchar(50) NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `analytics_status` int(1) NOT NULL,
  `tax_after_discount` decimal(10,3) NOT NULL,
  `recuuring_subcription_id` varchar(500) NOT NULL,
  PRIMARY KEY  (`order_id`),
  KEY `idx_orders_user_id` (`user_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_user_info_id` (`user_info_id`),
  KEY `idx_orders_ship_method_id` (`ship_method_id`),
  KEY `vm_order_number` (`vm_order_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Order Detail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_orders`
--

LOCK TABLES `japzd_redshop_orders` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_pageviewer`
--

DROP TABLE IF EXISTS `japzd_redshop_pageviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_pageviewer` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(250) NOT NULL,
  `section` varchar(250) NOT NULL,
  `section_id` int(11) NOT NULL,
  `hit` int(11) NOT NULL,
  `created_date` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='redSHOP Page Viewer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_pageviewer`
--

LOCK TABLES `japzd_redshop_pageviewer` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_pageviewer` DISABLE KEYS */;
INSERT INTO `japzd_redshop_pageviewer` VALUES (1,0,'jo0q5ke0n2ciqd41vs3nads574','category',1,0,1355388071),(2,0,'jo0q5ke0n2ciqd41vs3nads574','product',1,0,1355388077),(3,0,'jo0q5ke0n2ciqd41vs3nads574','manufacturers',0,0,1355388084),(4,0,'jo0q5ke0n2ciqd41vs3nads574','category',2,0,1355388104),(5,0,'c235b553377518616f6cf62598520270','category',1,0,1355448768),(6,0,'c235b553377518616f6cf62598520270','product',1,0,1355448792),(7,0,'a9li0nursehv6phbccn08rh800','category',0,0,1355449076),(8,0,'a9li0nursehv6phbccn08rh800','category',1,0,1355449647),(9,0,'a9li0nursehv6phbccn08rh800','product',1,0,1355449651),(10,0,'a9li0nursehv6phbccn08rh800','manufacturers',0,0,1355449672),(11,0,'a9li0nursehv6phbccn08rh800','manufacturers',1,0,1355449987);
/*!40000 ALTER TABLE `japzd_redshop_pageviewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_payment_method`
--

DROP TABLE IF EXISTS `japzd_redshop_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_payment_method` (
  `payment_method_id` int(11) NOT NULL auto_increment,
  `plugin` varchar(100) NOT NULL,
  `payment_method_name` varchar(255) default NULL,
  `payment_class` varchar(50) NOT NULL default '',
  `payment_method_code` varchar(8) default NULL,
  `published` tinyint(1) default NULL,
  `is_creditcard` tinyint(1) NOT NULL default '0',
  `payment_discount_is_percent` tinyint(4) NOT NULL,
  `payment_price` float(10,2) NOT NULL,
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `shopper_group` varchar(250) NOT NULL,
  `accepted_credict_card` varchar(255) NOT NULL,
  `payment_oprand` varchar(50) NOT NULL,
  PRIMARY KEY  (`payment_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Payment Method';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_payment_method`
--

LOCK TABLES `japzd_redshop_payment_method` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product`
--

DROP TABLE IF EXISTS `japzd_redshop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `product_parent_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_on_sale` tinyint(4) NOT NULL,
  `product_special` tinyint(4) NOT NULL,
  `product_download` tinyint(4) NOT NULL,
  `product_template` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` double NOT NULL,
  `discount_price` double NOT NULL,
  `discount_stratdate` int(11) NOT NULL,
  `discount_enddate` int(11) NOT NULL,
  `product_number` varchar(250) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `product_s_desc` longtext NOT NULL,
  `product_desc` longtext NOT NULL,
  `product_volume` double NOT NULL,
  `product_tax_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `product_thumb_image` varchar(250) NOT NULL,
  `product_full_image` varchar(250) NOT NULL,
  `publish_date` datetime NOT NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `visited` int(11) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metalanguage_setting` text NOT NULL,
  `metarobot_info` text NOT NULL,
  `pagetitle` text NOT NULL,
  `pageheading` text NOT NULL,
  `sef_url` text NOT NULL,
  `cat_in_sefurl` int(11) NOT NULL,
  `weight` float(10,3) NOT NULL,
  `expired` tinyint(4) NOT NULL,
  `not_for_sale` tinyint(4) NOT NULL,
  `use_discount_calc` tinyint(4) NOT NULL,
  `discount_calc_method` varchar(255) NOT NULL,
  `min_order_product_quantity` int(11) NOT NULL,
  `attribute_set_id` int(11) NOT NULL,
  `product_length` decimal(10,2) NOT NULL,
  `product_height` decimal(10,2) NOT NULL,
  `product_width` decimal(10,2) NOT NULL,
  `product_diameter` decimal(10,2) NOT NULL,
  `product_availability_date` int(11) NOT NULL,
  `use_range` tinyint(4) NOT NULL,
  `product_tax_group_id` int(11) NOT NULL,
  `product_download_days` int(11) NOT NULL,
  `product_download_limit` int(11) NOT NULL,
  `product_download_clock` int(11) NOT NULL,
  `product_download_clock_min` int(11) NOT NULL,
  `accountgroup_id` int(11) NOT NULL,
  `quantity_selectbox_value` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `max_order_product_quantity` int(11) NOT NULL,
  `product_download_infinite` tinyint(4) NOT NULL,
  `product_back_full_image` varchar(250) NOT NULL,
  `product_back_thumb_image` varchar(250) NOT NULL,
  `product_preview_image` varchar(250) NOT NULL,
  `product_preview_back_image` varchar(250) NOT NULL,
  `preorder` varchar(255) NOT NULL,
  `append_to_global_seo` enum('append','prepend','replace') NOT NULL default 'append',
  PRIMARY KEY  (`product_id`),
  KEY `product_number` (`product_number`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product`
--

LOCK TABLES `japzd_redshop_product` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product` DISABLE KEYS */;
INSERT INTO `japzd_redshop_product` VALUES (1,0,1,0,0,0,1,9,'Java Intermediate',10,0,-28800,51263,'5','file','','',0,0,1,'','','2012-12-13 16:40:58','2012-12-14 01:53:41',3,'','','','','','','',1,0.000,0,0,0,'0',1,0,'0.00','0.00','0.00','0.00',0,0,1,0,0,0,0,0,'',822,'2012-12-14 01:53:41',0,1,'1355449718_.','1355449718_.','1355449718_.','1355449718_.','global','append');
/*!40000 ALTER TABLE `japzd_redshop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_accessory`
--

DROP TABLE IF EXISTS `japzd_redshop_product_accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_accessory` (
  `accessory_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `child_product_id` int(11) NOT NULL,
  `accessory_price` double NOT NULL,
  `oprand` char(1) NOT NULL,
  `setdefault_selected` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY  (`accessory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Accessory';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_accessory`
--

LOCK TABLES `japzd_redshop_product_accessory` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_accessory` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_accessory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_attribute`
--

DROP TABLE IF EXISTS `japzd_redshop_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_attribute` (
  `attribute_id` int(11) NOT NULL auto_increment,
  `attribute_name` varchar(250) NOT NULL,
  `attribute_required` tinyint(4) NOT NULL,
  `allow_multiple_selection` tinyint(1) NOT NULL,
  `hide_attribute_price` tinyint(1) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `attribute_set_id` int(11) NOT NULL,
  `display_type` varchar(255) NOT NULL,
  `attribute_published` int(11) NOT NULL default '1',
  PRIMARY KEY  (`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Attribute';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_attribute`
--

LOCK TABLES `japzd_redshop_product_attribute` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_attribute_price`
--

DROP TABLE IF EXISTS `japzd_redshop_product_attribute_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_attribute_price` (
  `price_id` int(11) NOT NULL auto_increment,
  `section_id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_currency` varchar(10) NOT NULL,
  `cdate` int(11) NOT NULL,
  `shopper_group_id` int(11) NOT NULL,
  `price_quantity_start` int(11) NOT NULL,
  `price_quantity_end` bigint(20) NOT NULL,
  `discount_price` double NOT NULL,
  `discount_start_date` int(11) NOT NULL,
  `discount_end_date` int(11) NOT NULL,
  PRIMARY KEY  (`price_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Attribute Price';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_attribute_price`
--

LOCK TABLES `japzd_redshop_product_attribute_price` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_attribute_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_attribute_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_attribute_property`
--

DROP TABLE IF EXISTS `japzd_redshop_product_attribute_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_attribute_property` (
  `property_id` int(11) NOT NULL auto_increment,
  `attribute_id` int(11) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_price` double NOT NULL,
  `oprand` char(1) NOT NULL default '+',
  `property_image` varchar(255) NOT NULL,
  `property_main_image` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `setdefault_selected` tinyint(4) NOT NULL,
  `setrequire_selected` tinyint(3) NOT NULL,
  `setmulti_selected` tinyint(4) NOT NULL,
  `setdisplay_type` varchar(255) NOT NULL,
  `property_number` varchar(255) NOT NULL,
  PRIMARY KEY  (`property_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Attribute Property';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_attribute_property`
--

LOCK TABLES `japzd_redshop_product_attribute_property` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_attribute_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_attribute_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_attribute_stockroom_xref`
--

DROP TABLE IF EXISTS `japzd_redshop_product_attribute_stockroom_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_attribute_stockroom_xref` (
  `section_id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `preorder_stock` int(11) NOT NULL,
  `ordered_preorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Attribute Stockroom relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_attribute_stockroom_xref`
--

LOCK TABLES `japzd_redshop_product_attribute_stockroom_xref` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_attribute_stockroom_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_attribute_stockroom_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_category_xref`
--

DROP TABLE IF EXISTS `japzd_redshop_product_category_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_category_xref` (
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  KEY `ref_category` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Category Relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_category_xref`
--

LOCK TABLES `japzd_redshop_product_category_xref` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_category_xref` DISABLE KEYS */;
INSERT INTO `japzd_redshop_product_category_xref` VALUES (1,1,1);
/*!40000 ALTER TABLE `japzd_redshop_product_category_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_compare`
--

DROP TABLE IF EXISTS `japzd_redshop_product_compare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_compare` (
  `compare_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`compare_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Comparision';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_compare`
--

LOCK TABLES `japzd_redshop_product_compare` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_compare` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_compare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_discount_calc`
--

DROP TABLE IF EXISTS `japzd_redshop_product_discount_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_discount_calc` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `area_start` float(10,2) NOT NULL,
  `area_end` float(10,2) NOT NULL,
  `area_price` double NOT NULL,
  `discount_calc_unit` varchar(255) NOT NULL,
  `area_start_converted` float(20,8) NOT NULL,
  `area_end_converted` float(20,8) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Discount Calculator';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_discount_calc`
--

LOCK TABLES `japzd_redshop_product_discount_calc` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_discount_calc` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_discount_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_discount_calc_extra`
--

DROP TABLE IF EXISTS `japzd_redshop_product_discount_calc_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_discount_calc_extra` (
  `pdcextra_id` int(11) NOT NULL auto_increment,
  `option_name` varchar(255) NOT NULL,
  `oprand` char(1) NOT NULL,
  `price` float(10,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`pdcextra_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Discount Calculator Extra Value';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_discount_calc_extra`
--

LOCK TABLES `japzd_redshop_product_discount_calc_extra` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_discount_calc_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_discount_calc_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_download`
--

DROP TABLE IF EXISTS `japzd_redshop_product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_download` (
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  `download_max` int(11) NOT NULL default '0',
  `download_id` varchar(32) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  `product_serial_number` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Downloadable Products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_download`
--

LOCK TABLES `japzd_redshop_product_download` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_download_log`
--

DROP TABLE IF EXISTS `japzd_redshop_product_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_download_log` (
  `user_id` int(11) NOT NULL,
  `download_id` varchar(32) NOT NULL,
  `download_time` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Downloadable Products Logs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_download_log`
--

LOCK TABLES `japzd_redshop_product_download_log` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_navigator`
--

DROP TABLE IF EXISTS `japzd_redshop_product_navigator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_navigator` (
  `navigator_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `child_product_id` int(11) NOT NULL,
  `navigator_name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`navigator_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Navigator';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_navigator`
--

LOCK TABLES `japzd_redshop_product_navigator` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_navigator` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_navigator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_price`
--

DROP TABLE IF EXISTS `japzd_redshop_product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_price` (
  `price_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `product_price` decimal(12,4) NOT NULL,
  `product_currency` varchar(10) NOT NULL,
  `cdate` date NOT NULL,
  `shopper_group_id` int(11) NOT NULL,
  `price_quantity_start` int(11) NOT NULL,
  `price_quantity_end` bigint(20) NOT NULL,
  `discount_price` decimal(12,4) NOT NULL,
  `discount_start_date` int(11) NOT NULL,
  `discount_end_date` int(11) NOT NULL,
  PRIMARY KEY  (`price_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='redSHOP Product Price';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_price`
--

LOCK TABLES `japzd_redshop_product_price` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_rating`
--

DROP TABLE IF EXISTS `japzd_redshop_product_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_rating` (
  `rating_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL default '0',
  `time` int(11) NOT NULL default '0',
  `user_rating` tinyint(1) NOT NULL default '0',
  `favoured` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`rating_id`),
  UNIQUE KEY `product_id` (`product_id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_rating`
--

LOCK TABLES `japzd_redshop_product_rating` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_related`
--

DROP TABLE IF EXISTS `japzd_redshop_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_related` (
  `related_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Related Products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_related`
--

LOCK TABLES `japzd_redshop_product_related` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_serial_number`
--

DROP TABLE IF EXISTS `japzd_redshop_product_serial_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_serial_number` (
  `serial_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `is_used` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`serial_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP downloadable product serial numbers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_serial_number`
--

LOCK TABLES `japzd_redshop_product_serial_number` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_serial_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_serial_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_stockroom_xref`
--

DROP TABLE IF EXISTS `japzd_redshop_product_stockroom_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_stockroom_xref` (
  `product_id` int(11) NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `preorder_stock` int(11) NOT NULL,
  `ordered_preorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Stockroom Relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_stockroom_xref`
--

LOCK TABLES `japzd_redshop_product_stockroom_xref` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_stockroom_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_stockroom_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_subattribute_color`
--

DROP TABLE IF EXISTS `japzd_redshop_product_subattribute_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_subattribute_color` (
  `subattribute_color_id` int(11) NOT NULL auto_increment,
  `subattribute_color_name` varchar(255) NOT NULL,
  `subattribute_color_price` double NOT NULL,
  `oprand` char(1) NOT NULL,
  `subattribute_color_image` varchar(255) NOT NULL,
  `subattribute_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `setdefault_selected` tinyint(4) NOT NULL,
  `subattribute_color_number` varchar(255) NOT NULL,
  `subattribute_color_title` varchar(255) character set utf8 NOT NULL,
  `subattribute_color_main_image` varchar(255) NOT NULL,
  PRIMARY KEY  (`subattribute_color_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Product Subattribute Color';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_subattribute_color`
--

LOCK TABLES `japzd_redshop_product_subattribute_color` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_subattribute_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_subattribute_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_subscribe_detail`
--

DROP TABLE IF EXISTS `japzd_redshop_product_subscribe_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_subscribe_detail` (
  `product_subscribe_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `renewal_reminder` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`product_subscribe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP User product Subscribe detail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_subscribe_detail`
--

LOCK TABLES `japzd_redshop_product_subscribe_detail` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_subscribe_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_subscribe_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_subscription`
--

DROP TABLE IF EXISTS `japzd_redshop_product_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_subscription` (
  `subscription_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `subscription_period` int(11) NOT NULL,
  `period_type` varchar(10) NOT NULL,
  `subscription_price` double NOT NULL,
  PRIMARY KEY  (`subscription_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Subscription';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_subscription`
--

LOCK TABLES `japzd_redshop_product_subscription` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_tags`
--

DROP TABLE IF EXISTS `japzd_redshop_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_tags` (
  `tags_id` int(11) NOT NULL auto_increment,
  `tags_name` varchar(255) NOT NULL,
  `tags_counter` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`tags_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Product Tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_tags`
--

LOCK TABLES `japzd_redshop_product_tags` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_tags_xref`
--

DROP TABLE IF EXISTS `japzd_redshop_product_tags_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_tags_xref` (
  `tags_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Product Tags Relation With product and user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_tags_xref`
--

LOCK TABLES `japzd_redshop_product_tags_xref` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_tags_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_tags_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_voucher`
--

DROP TABLE IF EXISTS `japzd_redshop_product_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_voucher` (
  `voucher_id` int(11) NOT NULL auto_increment,
  `voucher_code` varchar(255) NOT NULL,
  `amount` decimal(12,2) NOT NULL default '0.00',
  `voucher_type` varchar(250) character set latin1 NOT NULL,
  `start_date` double NOT NULL,
  `end_date` double NOT NULL,
  `free_shipping` tinyint(4) NOT NULL,
  `voucher_left` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Voucher';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_voucher`
--

LOCK TABLES `japzd_redshop_product_voucher` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_voucher_transaction`
--

DROP TABLE IF EXISTS `japzd_redshop_product_voucher_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_voucher_transaction` (
  `transaction_voucher_id` int(11) NOT NULL auto_increment,
  `voucher_id` int(11) NOT NULL,
  `voucher_code` varchar(255) NOT NULL,
  `amount` decimal(10,3) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `trancation_date` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  PRIMARY KEY  (`transaction_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Voucher Transaction';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_voucher_transaction`
--

LOCK TABLES `japzd_redshop_product_voucher_transaction` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_voucher_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_voucher_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_product_voucher_xref`
--

DROP TABLE IF EXISTS `japzd_redshop_product_voucher_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_product_voucher_xref` (
  `voucher_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Voucher Relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_product_voucher_xref`
--

LOCK TABLES `japzd_redshop_product_voucher_xref` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_product_voucher_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_product_voucher_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_quotation`
--

DROP TABLE IF EXISTS `japzd_redshop_quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_quotation` (
  `quotation_id` int(11) NOT NULL auto_increment,
  `quotation_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_info_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quotation_total` decimal(15,2) NOT NULL,
  `quotation_subtotal` decimal(15,2) NOT NULL,
  `quotation_tax` decimal(15,2) NOT NULL,
  `quotation_discount` decimal(15,4) NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `quotation_cdate` int(11) NOT NULL,
  `quotation_mdate` int(11) NOT NULL,
  `quotation_note` text NOT NULL,
  `quotation_ipaddress` varchar(20) NOT NULL,
  `quotation_encrkey` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  PRIMARY KEY  (`quotation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_quotation`
--

LOCK TABLES `japzd_redshop_quotation` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_quotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_quotation_accessory_item`
--

DROP TABLE IF EXISTS `japzd_redshop_quotation_accessory_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_quotation_accessory_item` (
  `quotation_item_acc_id` int(11) NOT NULL auto_increment,
  `quotation_item_id` int(11) NOT NULL,
  `accessory_id` int(11) NOT NULL,
  `accessory_item_sku` varchar(255) NOT NULL,
  `accessory_item_name` varchar(255) NOT NULL,
  `accessory_price` decimal(15,4) NOT NULL,
  `accessory_vat` decimal(15,4) NOT NULL,
  `accessory_quantity` int(11) NOT NULL,
  `accessory_item_price` decimal(15,2) NOT NULL,
  `accessory_final_price` decimal(15,2) NOT NULL,
  `accessory_attribute` text NOT NULL,
  PRIMARY KEY  (`quotation_item_acc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation Accessory item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_quotation_accessory_item`
--

LOCK TABLES `japzd_redshop_quotation_accessory_item` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_quotation_accessory_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_quotation_accessory_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_quotation_attribute_item`
--

DROP TABLE IF EXISTS `japzd_redshop_quotation_attribute_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_quotation_attribute_item` (
  `quotation_att_item_id` int(11) NOT NULL auto_increment,
  `quotation_item_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `section` varchar(250) NOT NULL,
  `parent_section_id` int(11) NOT NULL,
  `section_name` varchar(250) NOT NULL,
  `section_price` decimal(15,4) NOT NULL,
  `section_vat` decimal(15,4) NOT NULL,
  `section_oprand` char(1) NOT NULL,
  `is_accessory_att` tinyint(4) NOT NULL,
  PRIMARY KEY  (`quotation_att_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation Attribute item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_quotation_attribute_item`
--

LOCK TABLES `japzd_redshop_quotation_attribute_item` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_quotation_attribute_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_quotation_attribute_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_quotation_fields_data`
--

DROP TABLE IF EXISTS `japzd_redshop_quotation_fields_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_quotation_fields_data` (
  `data_id` int(11) NOT NULL auto_increment,
  `fieldid` int(11) default NULL,
  `data_txt` longtext,
  `quotation_item_id` int(11) default NULL,
  `section` varchar(20) default NULL,
  PRIMARY KEY  (`data_id`),
  KEY `quotation_item_id` (`quotation_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation USer field';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_quotation_fields_data`
--

LOCK TABLES `japzd_redshop_quotation_fields_data` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_quotation_fields_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_quotation_fields_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_quotation_item`
--

DROP TABLE IF EXISTS `japzd_redshop_quotation_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_quotation_item` (
  `quotation_item_id` int(11) NOT NULL auto_increment,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(15,4) NOT NULL,
  `product_excl_price` decimal(15,4) NOT NULL,
  `product_final_price` decimal(15,4) NOT NULL,
  `actualitem_price` decimal(15,4) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_attribute` text NOT NULL,
  `product_accessory` text NOT NULL,
  `mycart_accessory` text NOT NULL,
  `product_wrapperid` int(11) NOT NULL,
  `wrapper_price` decimal(15,2) NOT NULL,
  `is_giftcard` tinyint(4) NOT NULL,
  PRIMARY KEY  (`quotation_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_quotation_item`
--

LOCK TABLES `japzd_redshop_quotation_item` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_quotation_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_quotation_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_sample_request`
--

DROP TABLE IF EXISTS `japzd_redshop_sample_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_sample_request` (
  `request_id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `colour_id` varchar(250) NOT NULL,
  `block` tinyint(4) NOT NULL,
  `reminder_1` tinyint(1) NOT NULL,
  `reminder_2` tinyint(1) NOT NULL,
  `reminder_3` tinyint(1) NOT NULL,
  `reminder_coupon` tinyint(1) NOT NULL,
  `registerdate` int(11) NOT NULL,
  PRIMARY KEY  (`request_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Sample Request';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_sample_request`
--

LOCK TABLES `japzd_redshop_sample_request` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_sample_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_sample_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_shipping_boxes`
--

DROP TABLE IF EXISTS `japzd_redshop_shipping_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_shipping_boxes` (
  `shipping_box_id` int(11) NOT NULL auto_increment,
  `shipping_box_name` varchar(255) NOT NULL,
  `shipping_box_length` decimal(10,2) NOT NULL,
  `shipping_box_width` decimal(10,2) NOT NULL,
  `shipping_box_height` decimal(10,2) NOT NULL,
  `shipping_box_priority` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`shipping_box_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Shipping Boxes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_shipping_boxes`
--

LOCK TABLES `japzd_redshop_shipping_boxes` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_shipping_boxes` DISABLE KEYS */;
INSERT INTO `japzd_redshop_shipping_boxes` VALUES (1,'Box1','1.00','1.00','1.00',1,1);
/*!40000 ALTER TABLE `japzd_redshop_shipping_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_shipping_rate`
--

DROP TABLE IF EXISTS `japzd_redshop_shipping_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL auto_increment,
  `shipping_rate_name` varchar(255) NOT NULL default '',
  `shipping_class` varchar(255) NOT NULL default '',
  `shipping_rate_country` longtext NOT NULL,
  `shipping_rate_zip_start` varchar(20) NOT NULL,
  `shipping_rate_zip_end` varchar(20) NOT NULL,
  `shipping_rate_weight_start` decimal(10,2) NOT NULL,
  `company_only` tinyint(4) NOT NULL,
  `apply_vat` tinyint(4) NOT NULL,
  `shipping_rate_weight_end` decimal(10,2) NOT NULL,
  `shipping_rate_volume_start` decimal(10,2) NOT NULL,
  `shipping_rate_volume_end` decimal(10,2) NOT NULL,
  `shipping_rate_ordertotal_start` decimal(10,3) NOT NULL default '0.000',
  `shipping_rate_ordertotal_end` decimal(10,3) NOT NULL,
  `shipping_rate_priority` tinyint(4) NOT NULL default '0',
  `shipping_rate_value` decimal(10,2) NOT NULL default '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL default '0.00',
  `shipping_location_info` longtext NOT NULL,
  `shipping_rate_length_start` decimal(10,2) NOT NULL,
  `shipping_rate_length_end` decimal(10,2) NOT NULL,
  `shipping_rate_width_start` decimal(10,2) NOT NULL,
  `shipping_rate_width_end` decimal(10,2) NOT NULL,
  `shipping_rate_height_start` decimal(10,2) NOT NULL,
  `shipping_rate_height_end` decimal(10,2) NOT NULL,
  `shipping_rate_on_shopper_group` longtext NOT NULL,
  `consignor_carrier_code` varchar(255) NOT NULL,
  `economic_displaynumber` varchar(255) NOT NULL,
  `shipping_rate_on_product` longtext NOT NULL,
  `shipping_rate_on_category` longtext NOT NULL,
  `shipping_tax_group_id` int(11) NOT NULL,
  `shipping_rate_state` longtext NOT NULL,
  PRIMARY KEY  (`shipping_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Shipping Rates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_shipping_rate`
--

LOCK TABLES `japzd_redshop_shipping_rate` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_shipping_rate` DISABLE KEYS */;
INSERT INTO `japzd_redshop_shipping_rate` VALUES (1,'Demo Rate','default_shipping','','','','0.00',0,0,'0.00','0.00','0.00','0.000','0.000',0,'0.00','0.00','','0.00','0.00','0.00','0.00','0.00','0.00','','','','','',0,'');
/*!40000 ALTER TABLE `japzd_redshop_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_shopper_group`
--

DROP TABLE IF EXISTS `japzd_redshop_shopper_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_shopper_group` (
  `shopper_group_id` int(11) NOT NULL auto_increment,
  `shopper_group_name` varchar(32) default NULL,
  `shopper_group_customer_type` tinyint(4) NOT NULL,
  `shopper_group_portal` tinyint(4) NOT NULL,
  `shopper_group_categories` longtext NOT NULL,
  `shopper_group_url` varchar(255) NOT NULL,
  `shopper_group_logo` varchar(255) NOT NULL,
  `shopper_group_introtext` longtext NOT NULL,
  `shopper_group_desc` text,
  `parent_id` int(11) NOT NULL,
  `default_shipping` tinyint(4) NOT NULL,
  `default_shipping_rate` float(10,2) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `shopper_group_cart_checkout_itemid` int(11) NOT NULL,
  `shopper_group_cart_itemid` int(11) NOT NULL,
  `shopper_group_quotation_mode` tinyint(4) NOT NULL,
  `show_price_without_vat` tinyint(4) NOT NULL,
  `tax_group_id` int(11) NOT NULL,
  `apply_product_price_vat` int(11) NOT NULL,
  `show_price` varchar(255) NOT NULL default 'global',
  `use_as_catalog` varchar(255) NOT NULL default 'global',
  `is_logged_in` int(11) NOT NULL default '1',
  `shopper_group_manufactures` text NOT NULL,
  PRIMARY KEY  (`shopper_group_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_shopper_group`
--

LOCK TABLES `japzd_redshop_shopper_group` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_shopper_group` DISABLE KEYS */;
INSERT INTO `japzd_redshop_shopper_group` VALUES (1,'Default Private',1,0,'','','','This is the default private shopper group.','This is the default private shopper group.',0,0,0.00,1,0,0,0,0,0,0,'global','global',1,''),(2,'Default Company',0,0,'','','','This is the default Company shopper group.','This is the default Company shopper group.',0,0,0.00,0,0,0,0,0,0,0,'global','global',1,''),(3,'Default Tax Exempt',0,0,'','','','This is the Default Tax Exempt shopper group.','This is the Default Tax Exempt shopper group.',0,0,0.00,0,0,0,0,0,0,0,'global','global',1,'');
/*!40000 ALTER TABLE `japzd_redshop_shopper_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_siteviewer`
--

DROP TABLE IF EXISTS `japzd_redshop_siteviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_siteviewer` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(250) NOT NULL,
  `created_date` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='redSHOP Site Viewer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_siteviewer`
--

LOCK TABLES `japzd_redshop_siteviewer` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_siteviewer` DISABLE KEYS */;
INSERT INTO `japzd_redshop_siteviewer` VALUES (1,0,'jo0q5ke0n2ciqd41vs3nads574',1355387765),(2,0,'c235b553377518616f6cf62598520270',1355448180),(3,0,'a9li0nursehv6phbccn08rh800',1355448988);
/*!40000 ALTER TABLE `japzd_redshop_siteviewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_state`
--

DROP TABLE IF EXISTS `japzd_redshop_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_state` (
  `state_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL default '1',
  `state_name` varchar(64) default NULL,
  `state_3_code` char(3) default NULL,
  `state_2_code` char(2) default NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `show_state` int(11) NOT NULL default '2',
  PRIMARY KEY  (`state_id`),
  UNIQUE KEY `state_3_code` (`country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`country_id`,`state_2_code`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=465 DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_state`
--

LOCK TABLES `japzd_redshop_state` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_state` DISABLE KEYS */;
INSERT INTO `japzd_redshop_state` VALUES (1,223,'Alabama','ALA','AL',0,'0000-00-00 00:00:00',2),(2,223,'Alaska','ALK','AK',0,'0000-00-00 00:00:00',2),(3,223,'Arizona','ARZ','AZ',0,'0000-00-00 00:00:00',2),(4,223,'Arkansas','ARK','AR',0,'0000-00-00 00:00:00',2),(5,223,'California','CAL','CA',0,'0000-00-00 00:00:00',2),(6,223,'Colorado','COL','CO',0,'0000-00-00 00:00:00',2),(7,223,'Connecticut','CCT','CT',0,'0000-00-00 00:00:00',2),(8,223,'Delaware','DEL','DE',0,'0000-00-00 00:00:00',2),(9,223,'District Of Columbia','DOC','DC',0,'0000-00-00 00:00:00',2),(10,223,'Florida','FLO','FL',0,'0000-00-00 00:00:00',2),(11,223,'Georgia','GEA','GA',0,'0000-00-00 00:00:00',2),(12,223,'Hawaii','HWI','HI',0,'0000-00-00 00:00:00',2),(13,223,'Idaho','IDA','ID',0,'0000-00-00 00:00:00',2),(14,223,'Illinois','ILL','IL',0,'0000-00-00 00:00:00',2),(15,223,'Indiana','IND','IN',0,'0000-00-00 00:00:00',2),(16,223,'Iowa','IOA','IA',0,'0000-00-00 00:00:00',2),(17,223,'Kansas','KAS','KS',0,'0000-00-00 00:00:00',2),(18,223,'Kentucky','KTY','KY',0,'0000-00-00 00:00:00',2),(19,223,'Louisiana','LOA','LA',0,'0000-00-00 00:00:00',2),(20,223,'Maine','MAI','ME',0,'0000-00-00 00:00:00',2),(21,223,'Maryland','MLD','MD',0,'0000-00-00 00:00:00',2),(22,223,'Massachusetts','MSA','MA',0,'0000-00-00 00:00:00',2),(23,223,'Michigan','MIC','MI',0,'0000-00-00 00:00:00',2),(24,223,'Minnesota','MIN','MN',0,'0000-00-00 00:00:00',2),(25,223,'Mississippi','MIS','MS',0,'0000-00-00 00:00:00',2),(26,223,'Missouri','MIO','MO',0,'0000-00-00 00:00:00',2),(27,223,'Montana','MOT','MT',0,'0000-00-00 00:00:00',2),(28,223,'Nebraska','NEB','NE',0,'0000-00-00 00:00:00',2),(29,223,'Nevada','NEV','NV',0,'0000-00-00 00:00:00',2),(30,223,'New Hampshire','NEH','NH',0,'0000-00-00 00:00:00',2),(31,223,'New Jersey','NEJ','NJ',0,'0000-00-00 00:00:00',2),(32,223,'New Mexico','NEM','NM',0,'0000-00-00 00:00:00',2),(33,223,'New York','NEY','NY',0,'0000-00-00 00:00:00',2),(34,223,'North Carolina','NOC','NC',0,'0000-00-00 00:00:00',2),(35,223,'North Dakota','NOD','ND',0,'0000-00-00 00:00:00',2),(36,223,'Ohio','OHI','OH',0,'0000-00-00 00:00:00',2),(37,223,'Oklahoma','OKL','OK',0,'0000-00-00 00:00:00',2),(38,223,'Oregon','ORN','OR',0,'0000-00-00 00:00:00',2),(39,223,'Pennsylvania','PEA','PA',0,'0000-00-00 00:00:00',2),(40,223,'Rhode Island','RHI','RI',0,'0000-00-00 00:00:00',2),(41,223,'South Carolina','SOC','SC',0,'0000-00-00 00:00:00',2),(42,223,'South Dakota','SOD','SD',0,'0000-00-00 00:00:00',2),(43,223,'Tennessee','TEN','TN',0,'0000-00-00 00:00:00',2),(44,223,'Texas','TXS','TX',0,'0000-00-00 00:00:00',2),(45,223,'Utah','UTA','UT',0,'0000-00-00 00:00:00',2),(46,223,'Vermont','VMT','VT',0,'0000-00-00 00:00:00',2),(47,223,'Virginia','VIA','VA',0,'0000-00-00 00:00:00',2),(48,223,'Washington','WAS','WA',0,'0000-00-00 00:00:00',2),(49,223,'West Virginia','WEV','WV',0,'0000-00-00 00:00:00',2),(50,223,'Wisconsin','WIS','WI',0,'0000-00-00 00:00:00',2),(51,223,'Wyoming','WYO','WY',0,'0000-00-00 00:00:00',2),(52,38,'Alberta','ALB','AB',0,'0000-00-00 00:00:00',2),(53,38,'British Columbia','BRC','BC',0,'0000-00-00 00:00:00',2),(54,38,'Manitoba','MAB','MB',0,'0000-00-00 00:00:00',2),(55,38,'New Brunswick','NEB','NB',0,'0000-00-00 00:00:00',2),(56,38,'Newfoundland and Labrador','NFL','NL',0,'0000-00-00 00:00:00',2),(57,38,'Northwest Territories','NWT','NT',0,'0000-00-00 00:00:00',2),(58,38,'Nova Scotia','NOS','NS',0,'0000-00-00 00:00:00',2),(59,38,'Nunavut','NUT','NU',0,'0000-00-00 00:00:00',2),(60,38,'Ontario','ONT','ON',0,'0000-00-00 00:00:00',2),(61,38,'Prince Edward Island','PEI','PE',0,'0000-00-00 00:00:00',2),(62,38,'Quebec','QEC','QC',0,'0000-00-00 00:00:00',2),(63,38,'Saskatchewan','SAK','SK',0,'0000-00-00 00:00:00',2),(64,38,'Yukon','YUT','YT',0,'0000-00-00 00:00:00',2),(65,222,'England','ENG','EN',0,'0000-00-00 00:00:00',2),(66,222,'Northern Ireland','NOI','NI',0,'0000-00-00 00:00:00',2),(67,222,'Scotland','SCO','SD',0,'0000-00-00 00:00:00',2),(68,222,'Wales','WLS','WS',0,'0000-00-00 00:00:00',2),(69,13,'Australian Capital Territory','ACT','AT',0,'0000-00-00 00:00:00',2),(70,13,'New South Wales','NSW','NW',0,'0000-00-00 00:00:00',2),(71,13,'Northern Territory','NOT','NT',0,'0000-00-00 00:00:00',2),(72,13,'Queensland','QLD','QL',0,'0000-00-00 00:00:00',2),(73,13,'South Australia','SOA','SA',0,'0000-00-00 00:00:00',2),(74,13,'Tasmania','TAS','TA',0,'0000-00-00 00:00:00',2),(75,13,'Victoria','VIC','VI',0,'0000-00-00 00:00:00',2),(76,13,'Western Australia','WEA','WA',0,'0000-00-00 00:00:00',2),(77,138,'Aguascalientes','AGS','AG',0,'0000-00-00 00:00:00',2),(78,138,'Baja California Norte','BCN','BN',0,'0000-00-00 00:00:00',2),(79,138,'Baja California Sur','BCS','BS',0,'0000-00-00 00:00:00',2),(80,138,'Campeche','CAM','CA',0,'0000-00-00 00:00:00',2),(81,138,'Chiapas','CHI','CS',0,'0000-00-00 00:00:00',2),(82,138,'Chihuahua','CHA','CH',0,'0000-00-00 00:00:00',2),(83,138,'Coahuila','COA','CO',0,'0000-00-00 00:00:00',2),(84,138,'Colima','COL','CM',0,'0000-00-00 00:00:00',2),(85,138,'Distrito Federal','DFM','DF',0,'0000-00-00 00:00:00',2),(86,138,'Durango','DGO','DO',0,'0000-00-00 00:00:00',2),(87,138,'Guanajuato','GTO','GO',0,'0000-00-00 00:00:00',2),(88,138,'Guerrero','GRO','GU',0,'0000-00-00 00:00:00',2),(89,138,'Hidalgo','HGO','HI',0,'0000-00-00 00:00:00',2),(90,138,'Jalisco','JAL','JA',0,'0000-00-00 00:00:00',2),(91,138,'México (Estado de)','EDM','EM',0,'0000-00-00 00:00:00',2),(92,138,'Michoacán','MCN','MI',0,'0000-00-00 00:00:00',2),(93,138,'Morelos','MOR','MO',0,'0000-00-00 00:00:00',2),(94,138,'Nayarit','NAY','NY',0,'0000-00-00 00:00:00',2),(95,138,'Nuevo León','NUL','NL',0,'0000-00-00 00:00:00',2),(96,138,'Oaxaca','OAX','OA',0,'0000-00-00 00:00:00',2),(97,138,'Puebla','PUE','PU',0,'0000-00-00 00:00:00',2),(98,138,'Querétaro','QRO','QU',0,'0000-00-00 00:00:00',2),(99,138,'Quintana Roo','QUR','QR',0,'0000-00-00 00:00:00',2),(100,138,'San Luis Potosí','SLP','SP',0,'0000-00-00 00:00:00',2),(101,138,'Sinaloa','SIN','SI',0,'0000-00-00 00:00:00',2),(102,138,'Sonora','SON','SO',0,'0000-00-00 00:00:00',2),(103,138,'Tabasco','TAB','TA',0,'0000-00-00 00:00:00',2),(104,138,'Tamaulipas','TAM','TM',0,'0000-00-00 00:00:00',2),(105,138,'Tlaxcala','TLX','TX',0,'0000-00-00 00:00:00',2),(106,138,'Veracruz','VER','VZ',0,'0000-00-00 00:00:00',2),(107,138,'Yucatán','YUC','YU',0,'0000-00-00 00:00:00',2),(108,138,'Zacatecas','ZAC','ZA',0,'0000-00-00 00:00:00',2),(109,30,'Acre','ACR','AC',0,'0000-00-00 00:00:00',2),(110,30,'Alagoas','ALG','AL',0,'0000-00-00 00:00:00',2),(111,30,'Amapá','AMP','AP',0,'0000-00-00 00:00:00',2),(112,30,'Amazonas','AMZ','AM',0,'0000-00-00 00:00:00',2),(113,30,'Bahía','BAH','BA',0,'0000-00-00 00:00:00',2),(114,30,'Ceará','CEA','CE',0,'0000-00-00 00:00:00',2),(115,30,'Distrito Federal','DFB','DF',0,'0000-00-00 00:00:00',2),(116,30,'Espirito Santo','ESS','ES',0,'0000-00-00 00:00:00',2),(117,30,'Goiás','GOI','GO',0,'0000-00-00 00:00:00',2),(118,30,'Maranhão','MAR','MA',0,'0000-00-00 00:00:00',2),(119,30,'Mato Grosso','MAT','MT',0,'0000-00-00 00:00:00',2),(120,30,'Mato Grosso do Sul','MGS','MS',0,'0000-00-00 00:00:00',2),(121,30,'Minas Geraís','MIG','MG',0,'0000-00-00 00:00:00',2),(122,30,'Paraná','PAR','PR',0,'0000-00-00 00:00:00',2),(123,30,'Paraíba','PRB','PB',0,'0000-00-00 00:00:00',2),(124,30,'Pará','PAB','PA',0,'0000-00-00 00:00:00',2),(125,30,'Pernambuco','PER','PE',0,'0000-00-00 00:00:00',2),(126,30,'Piauí','PIA','PI',0,'0000-00-00 00:00:00',2),(127,30,'Rio Grande do Norte','RGN','RN',0,'0000-00-00 00:00:00',2),(128,30,'Rio Grande do Sul','RGS','RS',0,'0000-00-00 00:00:00',2),(129,30,'Rio de Janeiro','RDJ','RJ',0,'0000-00-00 00:00:00',2),(130,30,'Rondônia','RON','RO',0,'0000-00-00 00:00:00',2),(131,30,'Roraima','ROR','RR',0,'0000-00-00 00:00:00',2),(132,30,'Santa Catarina','SAC','SC',0,'0000-00-00 00:00:00',2),(133,30,'Sergipe','SER','SE',0,'0000-00-00 00:00:00',2),(134,30,'São Paulo','SAP','SP',0,'0000-00-00 00:00:00',2),(135,30,'Tocantins','TOC','TO',0,'0000-00-00 00:00:00',2),(136,44,'Anhui','ANH','34',0,'0000-00-00 00:00:00',2),(137,44,'Beijing','BEI','11',0,'0000-00-00 00:00:00',2),(138,44,'Chongqing','CHO','50',0,'0000-00-00 00:00:00',2),(139,44,'Fujian','FUJ','35',0,'0000-00-00 00:00:00',2),(140,44,'Gansu','GAN','62',0,'0000-00-00 00:00:00',2),(141,44,'Guangdong','GUA','44',0,'0000-00-00 00:00:00',2),(142,44,'Guangxi Zhuang','GUZ','45',0,'0000-00-00 00:00:00',2),(143,44,'Guizhou','GUI','52',0,'0000-00-00 00:00:00',2),(144,44,'Hainan','HAI','46',0,'0000-00-00 00:00:00',2),(145,44,'Hebei','HEB','13',0,'0000-00-00 00:00:00',2),(146,44,'Heilongjiang','HEI','23',0,'0000-00-00 00:00:00',2),(147,44,'Henan','HEN','41',0,'0000-00-00 00:00:00',2),(148,44,'Hubei','HUB','42',0,'0000-00-00 00:00:00',2),(149,44,'Hunan','HUN','43',0,'0000-00-00 00:00:00',2),(150,44,'Jiangsu','JIA','32',0,'0000-00-00 00:00:00',2),(151,44,'Jiangxi','JIX','36',0,'0000-00-00 00:00:00',2),(152,44,'Jilin','JIL','22',0,'0000-00-00 00:00:00',2),(153,44,'Liaoning','LIA','21',0,'0000-00-00 00:00:00',2),(154,44,'Nei Mongol','NML','15',0,'0000-00-00 00:00:00',2),(155,44,'Ningxia Hui','NIH','64',0,'0000-00-00 00:00:00',2),(156,44,'Qinghai','QIN','63',0,'0000-00-00 00:00:00',2),(157,44,'Shandong','SNG','37',0,'0000-00-00 00:00:00',2),(158,44,'Shanghai','SHH','31',0,'0000-00-00 00:00:00',2),(159,44,'Shaanxi','SHX','61',0,'0000-00-00 00:00:00',2),(160,44,'Sichuan','SIC','51',0,'0000-00-00 00:00:00',2),(161,44,'Tianjin','TIA','12',0,'0000-00-00 00:00:00',2),(162,44,'Xinjiang Uygur','XIU','65',0,'0000-00-00 00:00:00',2),(163,44,'Xizang','XIZ','54',0,'0000-00-00 00:00:00',2),(164,44,'Yunnan','YUN','53',0,'0000-00-00 00:00:00',2),(165,44,'Zhejiang','ZHE','33',0,'0000-00-00 00:00:00',2),(166,104,'Gaza Strip','GZS','GZ',0,'0000-00-00 00:00:00',2),(167,104,'West Bank','WBK','WB',0,'0000-00-00 00:00:00',2),(168,104,'Other','OTH','OT',0,'0000-00-00 00:00:00',2),(169,151,'St. Maarten','STM','SM',0,'0000-00-00 00:00:00',2),(170,151,'Bonaire','BNR','BN',0,'0000-00-00 00:00:00',2),(171,151,'Curacao','CUR','CR',0,'0000-00-00 00:00:00',2),(172,175,'Alba','ABA','AB',0,'0000-00-00 00:00:00',2),(173,175,'Arad','ARD','AR',0,'0000-00-00 00:00:00',2),(174,175,'Arges','ARG','AG',0,'0000-00-00 00:00:00',2),(175,175,'Bacau','BAC','BC',0,'0000-00-00 00:00:00',2),(176,175,'Bihor','BIH','BH',0,'0000-00-00 00:00:00',2),(177,175,'Bistrita-Nasaud','BIS','BN',0,'0000-00-00 00:00:00',2),(178,175,'Botosani','BOT','BT',0,'0000-00-00 00:00:00',2),(179,175,'Braila','BRL','BR',0,'0000-00-00 00:00:00',2),(180,175,'Brasov','BRA','BV',0,'0000-00-00 00:00:00',2),(181,175,'Bucuresti','BUC','B',0,'0000-00-00 00:00:00',2),(182,175,'Buzau','BUZ','BZ',0,'0000-00-00 00:00:00',2),(183,175,'Calarasi','CAL','CL',0,'0000-00-00 00:00:00',2),(184,175,'Caras Severin','CRS','CS',0,'0000-00-00 00:00:00',2),(185,175,'Cluj','CLJ','CJ',0,'0000-00-00 00:00:00',2),(186,175,'Constanta','CST','CT',0,'0000-00-00 00:00:00',2),(187,175,'Covasna','COV','CV',0,'0000-00-00 00:00:00',2),(188,175,'Dambovita','DAM','DB',0,'0000-00-00 00:00:00',2),(189,175,'Dolj','DLJ','DJ',0,'0000-00-00 00:00:00',2),(190,175,'Galati','GAL','GL',0,'0000-00-00 00:00:00',2),(191,175,'Giurgiu','GIU','GR',0,'0000-00-00 00:00:00',2),(192,175,'Gorj','GOR','GJ',0,'0000-00-00 00:00:00',2),(193,175,'Hargita','HRG','HR',0,'0000-00-00 00:00:00',2),(194,175,'Hunedoara','HUN','HD',0,'0000-00-00 00:00:00',2),(195,175,'Ialomita','IAL','IL',0,'0000-00-00 00:00:00',2),(196,175,'Iasi','IAS','IS',0,'0000-00-00 00:00:00',2),(197,175,'Ilfov','ILF','IF',0,'0000-00-00 00:00:00',2),(198,175,'Maramures','MAR','MM',0,'0000-00-00 00:00:00',2),(199,175,'Mehedinti','MEH','MH',0,'0000-00-00 00:00:00',2),(200,175,'Mures','MUR','MS',0,'0000-00-00 00:00:00',2),(201,175,'Neamt','NEM','NT',0,'0000-00-00 00:00:00',2),(202,175,'Olt','OLT','OT',0,'0000-00-00 00:00:00',2),(203,175,'Prahova','PRA','PH',0,'0000-00-00 00:00:00',2),(204,175,'Salaj','SAL','SJ',0,'0000-00-00 00:00:00',2),(205,175,'Satu Mare','SAT','SM',0,'0000-00-00 00:00:00',2),(206,175,'Sibiu','SIB','SB',0,'0000-00-00 00:00:00',2),(207,175,'Suceava','SUC','SV',0,'0000-00-00 00:00:00',2),(208,175,'Teleorman','TEL','TR',0,'0000-00-00 00:00:00',2),(209,175,'Timis','TIM','TM',0,'0000-00-00 00:00:00',2),(210,175,'Tulcea','TUL','TL',0,'0000-00-00 00:00:00',2),(211,175,'Valcea','VAL','VL',0,'0000-00-00 00:00:00',2),(212,175,'Vaslui','VAS','VS',0,'0000-00-00 00:00:00',2),(213,175,'Vrancea','VRA','VN',0,'0000-00-00 00:00:00',2),(214,105,'Agrigento','AGR','AG',0,'0000-00-00 00:00:00',2),(215,105,'Alessandria','ALE','AL',0,'0000-00-00 00:00:00',2),(216,105,'Ancona','ANC','AN',0,'0000-00-00 00:00:00',2),(217,105,'Aosta','AOS','AO',0,'0000-00-00 00:00:00',2),(218,105,'Arezzo','ARE','AR',0,'0000-00-00 00:00:00',2),(219,105,'Ascoli Piceno','API','AP',0,'0000-00-00 00:00:00',2),(220,105,'Asti','AST','AT',0,'0000-00-00 00:00:00',2),(221,105,'Avellino','AVE','AV',0,'0000-00-00 00:00:00',2),(222,105,'Bari','BAR','BA',0,'0000-00-00 00:00:00',2),(223,105,'Belluno','BEL','BL',0,'0000-00-00 00:00:00',2),(224,105,'Benevento','BEN','BN',0,'0000-00-00 00:00:00',2),(225,105,'Bergamo','BEG','BG',0,'0000-00-00 00:00:00',2),(226,105,'Biella','BIE','BI',0,'0000-00-00 00:00:00',2),(227,105,'Bologna','BOL','BO',0,'0000-00-00 00:00:00',2),(228,105,'Bolzano','BOZ','BZ',0,'0000-00-00 00:00:00',2),(229,105,'Brescia','BRE','BS',0,'0000-00-00 00:00:00',2),(230,105,'Brindisi','BRI','BR',0,'0000-00-00 00:00:00',2),(231,105,'Cagliari','CAG','CA',0,'0000-00-00 00:00:00',2),(232,105,'Caltanissetta','CAL','CL',0,'0000-00-00 00:00:00',2),(233,105,'Campobasso','CBO','CB',0,'0000-00-00 00:00:00',2),(234,105,'Carbonia-Iglesias','CAR','CI',0,'0000-00-00 00:00:00',2),(235,105,'Caserta','CAS','CE',0,'0000-00-00 00:00:00',2),(236,105,'Catania','CAT','CT',0,'0000-00-00 00:00:00',2),(237,105,'Catanzaro','CTZ','CZ',0,'0000-00-00 00:00:00',2),(238,105,'Chieti','CHI','CH',0,'0000-00-00 00:00:00',2),(239,105,'Como','COM','CO',0,'0000-00-00 00:00:00',2),(240,105,'Cosenza','COS','CS',0,'0000-00-00 00:00:00',2),(241,105,'Cremona','CRE','CR',0,'0000-00-00 00:00:00',2),(242,105,'Crotone','CRO','KR',0,'0000-00-00 00:00:00',2),(243,105,'Cuneo','CUN','CN',0,'0000-00-00 00:00:00',2),(244,105,'Enna','ENN','EN',0,'0000-00-00 00:00:00',2),(245,105,'Ferrara','FER','FE',0,'0000-00-00 00:00:00',2),(246,105,'Firenze','FIR','FI',0,'0000-00-00 00:00:00',2),(247,105,'Foggia','FOG','FG',0,'0000-00-00 00:00:00',2),(248,105,'Forli-Cesena','FOC','FC',0,'0000-00-00 00:00:00',2),(249,105,'Frosinone','FRO','FR',0,'0000-00-00 00:00:00',2),(250,105,'Genova','GEN','GE',0,'0000-00-00 00:00:00',2),(251,105,'Gorizia','GOR','GO',0,'0000-00-00 00:00:00',2),(252,105,'Grosseto','GRO','GR',0,'0000-00-00 00:00:00',2),(253,105,'Imperia','IMP','IM',0,'0000-00-00 00:00:00',2),(254,105,'Isernia','ISE','IS',0,'0000-00-00 00:00:00',2),(255,105,'L\'Aquila','AQU','AQ',0,'0000-00-00 00:00:00',2),(256,105,'La Spezia','LAS','SP',0,'0000-00-00 00:00:00',2),(257,105,'Latina','LAT','LT',0,'0000-00-00 00:00:00',2),(258,105,'Lecce','LEC','LE',0,'0000-00-00 00:00:00',2),(259,105,'Lecco','LCC','LC',0,'0000-00-00 00:00:00',2),(260,105,'Livorno','LIV','LI',0,'0000-00-00 00:00:00',2),(261,105,'Lodi','LOD','LO',0,'0000-00-00 00:00:00',2),(262,105,'Lucca','LUC','LU',0,'0000-00-00 00:00:00',2),(263,105,'Macerata','MAC','MC',0,'0000-00-00 00:00:00',2),(264,105,'Mantova','MAN','MN',0,'0000-00-00 00:00:00',2),(265,105,'Massa-Carrara','MAS','MS',0,'0000-00-00 00:00:00',2),(266,105,'Matera','MAA','MT',0,'0000-00-00 00:00:00',2),(267,105,'Medio Campidano','MED','VS',0,'0000-00-00 00:00:00',2),(268,105,'Messina','MES','ME',0,'0000-00-00 00:00:00',2),(269,105,'Milano','MIL','MI',0,'0000-00-00 00:00:00',2),(270,105,'Modena','MOD','MO',0,'0000-00-00 00:00:00',2),(271,105,'Napoli','NAP','NA',0,'0000-00-00 00:00:00',2),(272,105,'Novara','NOV','NO',0,'0000-00-00 00:00:00',2),(273,105,'Nuoro','NUR','NU',0,'0000-00-00 00:00:00',2),(274,105,'Ogliastra','OGL','OG',0,'0000-00-00 00:00:00',2),(275,105,'Olbia-Tempio','OLB','OT',0,'0000-00-00 00:00:00',2),(276,105,'Oristano','ORI','OR',0,'0000-00-00 00:00:00',2),(277,105,'Padova','PDA','PD',0,'0000-00-00 00:00:00',2),(278,105,'Palermo','PAL','PA',0,'0000-00-00 00:00:00',2),(279,105,'Parma','PAA','PR',0,'0000-00-00 00:00:00',2),(280,105,'Pavia','PAV','PV',0,'0000-00-00 00:00:00',2),(281,105,'Perugia','PER','PG',0,'0000-00-00 00:00:00',2),(282,105,'Pesaro e Urbino','PES','PU',0,'0000-00-00 00:00:00',2),(283,105,'Pescara','PSC','PE',0,'0000-00-00 00:00:00',2),(284,105,'Piacenza','PIA','PC',0,'0000-00-00 00:00:00',2),(285,105,'Pisa','PIS','PI',0,'0000-00-00 00:00:00',2),(286,105,'Pistoia','PIT','PT',0,'0000-00-00 00:00:00',2),(287,105,'Pordenone','POR','PN',0,'0000-00-00 00:00:00',2),(288,105,'Potenza','PTZ','PZ',0,'0000-00-00 00:00:00',2),(289,105,'Prato','PRA','PO',0,'0000-00-00 00:00:00',2),(290,105,'Ragusa','RAG','RG',0,'0000-00-00 00:00:00',2),(291,105,'Ravenna','RAV','RA',0,'0000-00-00 00:00:00',2),(292,105,'Reggio Calabria','REG','RC',0,'0000-00-00 00:00:00',2),(293,105,'Reggio Emilia','REE','RE',0,'0000-00-00 00:00:00',2),(294,105,'Rieti','RIE','RI',0,'0000-00-00 00:00:00',2),(295,105,'Rimini','RIM','RN',0,'0000-00-00 00:00:00',2),(296,105,'Roma','ROM','RM',0,'0000-00-00 00:00:00',2),(297,105,'Rovigo','ROV','RO',0,'0000-00-00 00:00:00',2),(298,105,'Salerno','SAL','SA',0,'0000-00-00 00:00:00',2),(299,105,'Sassari','SAS','SS',0,'0000-00-00 00:00:00',2),(300,105,'Savona','SAV','SV',0,'0000-00-00 00:00:00',2),(301,105,'Siena','SIE','SI',0,'0000-00-00 00:00:00',2),(302,105,'Siracusa','SIR','SR',0,'0000-00-00 00:00:00',2),(303,105,'Sondrio','SOO','SO',0,'0000-00-00 00:00:00',2),(304,105,'Taranto','TAR','TA',0,'0000-00-00 00:00:00',2),(305,105,'Teramo','TER','TE',0,'0000-00-00 00:00:00',2),(306,105,'Terni','TRN','TR',0,'0000-00-00 00:00:00',2),(307,105,'Torino','TOR','TO',0,'0000-00-00 00:00:00',2),(308,105,'Trapani','TRA','TP',0,'0000-00-00 00:00:00',2),(309,105,'Trento','TRE','TN',0,'0000-00-00 00:00:00',2),(310,105,'Treviso','TRV','TV',0,'0000-00-00 00:00:00',2),(311,105,'Trieste','TRI','TS',0,'0000-00-00 00:00:00',2),(312,105,'Udine','UDI','UD',0,'0000-00-00 00:00:00',2),(313,105,'Varese','VAR','VA',0,'0000-00-00 00:00:00',2),(314,105,'Venezia','VEN','VE',0,'0000-00-00 00:00:00',2),(315,105,'Verbano Cusio Ossola','VCO','VB',0,'0000-00-00 00:00:00',2),(316,105,'Vercelli','VER','VC',0,'0000-00-00 00:00:00',2),(317,105,'Verona','VRN','VR',0,'0000-00-00 00:00:00',2),(318,105,'Vibo Valenzia','VIV','VV',0,'0000-00-00 00:00:00',2),(319,105,'Vicenza','VII','VI',0,'0000-00-00 00:00:00',2),(320,105,'Viterbo','VIT','VT',0,'0000-00-00 00:00:00',2),(321,195,'A Coruña','ACO','15',0,'0000-00-00 00:00:00',2),(322,195,'Alava','ALA','01',0,'0000-00-00 00:00:00',2),(323,195,'Albacete','ALB','02',0,'0000-00-00 00:00:00',2),(324,195,'Alicante','ALI','03',0,'0000-00-00 00:00:00',2),(325,195,'Almeria','ALM','04',0,'0000-00-00 00:00:00',2),(326,195,'Asturias','AST','33',0,'0000-00-00 00:00:00',2),(327,195,'Avila','AVI','05',0,'0000-00-00 00:00:00',2),(328,195,'Badajoz','BAD','06',0,'0000-00-00 00:00:00',2),(329,195,'Baleares','BAL','07',0,'0000-00-00 00:00:00',2),(330,195,'Barcelona','BAR','08',0,'0000-00-00 00:00:00',2),(331,195,'Burgos','BUR','09',0,'0000-00-00 00:00:00',2),(332,195,'Caceres','CAC','10',0,'0000-00-00 00:00:00',2),(333,195,'Cadiz','CAD','11',0,'0000-00-00 00:00:00',2),(334,195,'Cantabria','CAN','39',0,'0000-00-00 00:00:00',2),(335,195,'Castellon','CAS','12',0,'0000-00-00 00:00:00',2),(336,195,'Ceuta','CEU','51',0,'0000-00-00 00:00:00',2),(337,195,'Ciudad Real','CIU','13',0,'0000-00-00 00:00:00',2),(338,195,'Cordoba','COR','14',0,'0000-00-00 00:00:00',2),(339,195,'Cuenca','CUE','16',0,'0000-00-00 00:00:00',2),(340,195,'Girona','GIR','17',0,'0000-00-00 00:00:00',2),(341,195,'Granada','GRA','18',0,'0000-00-00 00:00:00',2),(342,195,'Guadalajara','GUA','19',0,'0000-00-00 00:00:00',2),(343,195,'Guipuzcoa','GUI','20',0,'0000-00-00 00:00:00',2),(344,195,'Huelva','HUL','21',0,'0000-00-00 00:00:00',2),(345,195,'Huesca','HUS','22',0,'0000-00-00 00:00:00',2),(346,195,'Jaen','JAE','23',0,'0000-00-00 00:00:00',2),(347,195,'La Rioja','LRI','26',0,'0000-00-00 00:00:00',2),(348,195,'Las Palmas','LPA','35',0,'0000-00-00 00:00:00',2),(349,195,'Leon','LEO','24',0,'0000-00-00 00:00:00',2),(350,195,'Lleida','LLE','25',0,'0000-00-00 00:00:00',2),(351,195,'Lugo','LUG','27',0,'0000-00-00 00:00:00',2),(352,195,'Madrid','MAD','28',0,'0000-00-00 00:00:00',2),(353,195,'Malaga','MAL','29',0,'0000-00-00 00:00:00',2),(354,195,'Melilla','MEL','52',0,'0000-00-00 00:00:00',2),(355,195,'Murcia','MUR','30',0,'0000-00-00 00:00:00',2),(356,195,'Navarra','NAV','31',0,'0000-00-00 00:00:00',2),(357,195,'Ourense','OUR','32',0,'0000-00-00 00:00:00',2),(358,195,'Palencia','PAL','34',0,'0000-00-00 00:00:00',2),(359,195,'Pontevedra','PON','36',0,'0000-00-00 00:00:00',2),(360,195,'Salamanca','SAL','37',0,'0000-00-00 00:00:00',2),(361,195,'Santa Cruz de Tenerife','SCT','38',0,'0000-00-00 00:00:00',2),(362,195,'Segovia','SEG','40',0,'0000-00-00 00:00:00',2),(363,195,'Sevilla','SEV','41',0,'0000-00-00 00:00:00',2),(364,195,'Soria','SOR','42',0,'0000-00-00 00:00:00',2),(365,195,'Tarragona','TAR','43',0,'0000-00-00 00:00:00',2),(366,195,'Teruel','TER','44',0,'0000-00-00 00:00:00',2),(367,195,'Toledo','TOL','45',0,'0000-00-00 00:00:00',2),(368,195,'Valencia','VAL','46',0,'0000-00-00 00:00:00',2),(369,195,'Valladolid','VLL','47',0,'0000-00-00 00:00:00',2),(370,195,'Vizcaya','VIZ','48',0,'0000-00-00 00:00:00',2),(371,195,'Zamora','ZAM','49',0,'0000-00-00 00:00:00',2),(372,195,'Zaragoza','ZAR','50',0,'0000-00-00 00:00:00',2),(373,11,'Aragatsotn','ARG','AG',0,'0000-00-00 00:00:00',2),(374,11,'Ararat','ARR','AR',0,'0000-00-00 00:00:00',2),(375,11,'Armavir','ARM','AV',0,'0000-00-00 00:00:00',2),(376,11,'Gegharkunik','GEG','GR',0,'0000-00-00 00:00:00',2),(377,11,'Kotayk','KOT','KT',0,'0000-00-00 00:00:00',2),(378,11,'Lori','LOR','LO',0,'0000-00-00 00:00:00',2),(379,11,'Shirak','SHI','SH',0,'0000-00-00 00:00:00',2),(380,11,'Syunik','SYU','SU',0,'0000-00-00 00:00:00',2),(381,11,'Tavush','TAV','TV',0,'0000-00-00 00:00:00',2),(382,11,'Vayots-Dzor','VAD','VD',0,'0000-00-00 00:00:00',2),(383,11,'Yerevan','YER','ER',0,'0000-00-00 00:00:00',2),(384,99,'Andaman & Nicobar Islands','ANI','AI',0,'0000-00-00 00:00:00',2),(385,99,'Andhra Pradesh','AND','AN',0,'0000-00-00 00:00:00',2),(386,99,'Arunachal Pradesh','ARU','AR',0,'0000-00-00 00:00:00',2),(387,99,'Assam','ASS','AS',0,'0000-00-00 00:00:00',2),(388,99,'Bihar','BIH','BI',0,'0000-00-00 00:00:00',2),(389,99,'Chandigarh','CHA','CA',0,'0000-00-00 00:00:00',2),(390,99,'Chhatisgarh','CHH','CH',0,'0000-00-00 00:00:00',2),(391,99,'Dadra & Nagar Haveli','DAD','DD',0,'0000-00-00 00:00:00',2),(392,99,'Daman & Diu','DAM','DA',0,'0000-00-00 00:00:00',2),(393,99,'Delhi','DEL','DE',0,'0000-00-00 00:00:00',2),(394,99,'Goa','GOA','GO',0,'0000-00-00 00:00:00',2),(395,99,'Gujarat','GUJ','GU',0,'0000-00-00 00:00:00',2),(396,99,'Haryana','HAR','HA',0,'0000-00-00 00:00:00',2),(397,99,'Himachal Pradesh','HIM','HI',0,'0000-00-00 00:00:00',2),(398,99,'Jammu & Kashmir','JAM','JA',0,'0000-00-00 00:00:00',2),(399,99,'Jharkhand','JHA','JH',0,'0000-00-00 00:00:00',2),(400,99,'Karnataka','KAR','KA',0,'0000-00-00 00:00:00',2),(401,99,'Kerala','KER','KE',0,'0000-00-00 00:00:00',2),(402,99,'Lakshadweep','LAK','LA',0,'0000-00-00 00:00:00',2),(403,99,'Madhya Pradesh','MAD','MD',0,'0000-00-00 00:00:00',2),(404,99,'Maharashtra','MAH','MH',0,'0000-00-00 00:00:00',2),(405,99,'Manipur','MAN','MN',0,'0000-00-00 00:00:00',2),(406,99,'Meghalaya','MEG','ME',0,'0000-00-00 00:00:00',2),(407,99,'Mizoram','MIZ','MI',0,'0000-00-00 00:00:00',2),(408,99,'Nagaland','NAG','NA',0,'0000-00-00 00:00:00',2),(409,99,'Orissa','ORI','OR',0,'0000-00-00 00:00:00',2),(410,99,'Pondicherry','PON','PO',0,'0000-00-00 00:00:00',2),(411,99,'Punjab','PUN','PU',0,'0000-00-00 00:00:00',2),(412,99,'Rajasthan','RAJ','RA',0,'0000-00-00 00:00:00',2),(413,99,'Sikkim','SIK','SI',0,'0000-00-00 00:00:00',2),(414,99,'Tamil Nadu','TAM','TA',0,'0000-00-00 00:00:00',2),(415,99,'Tripura','TRI','TR',0,'0000-00-00 00:00:00',2),(416,99,'Uttaranchal','UAR','UA',0,'0000-00-00 00:00:00',2),(417,99,'Uttar Pradesh','UTT','UT',0,'0000-00-00 00:00:00',2),(418,99,'West Bengal','WES','WE',0,'0000-00-00 00:00:00',2),(419,101,'Ahmadi va Kohkiluyeh','BOK','BO',0,'0000-00-00 00:00:00',2),(420,101,'Ardabil','ARD','AR',0,'0000-00-00 00:00:00',2),(421,101,'Azarbayjan-e Gharbi','AZG','AG',0,'0000-00-00 00:00:00',2),(422,101,'Azarbayjan-e Sharqi','AZS','AS',0,'0000-00-00 00:00:00',2),(423,101,'Bushehr','BUS','BU',0,'0000-00-00 00:00:00',2),(424,101,'Chaharmahal va Bakhtiari','CMB','CM',0,'0000-00-00 00:00:00',2),(425,101,'Esfahan','ESF','ES',0,'0000-00-00 00:00:00',2),(426,101,'Fars','FAR','FA',0,'0000-00-00 00:00:00',2),(427,101,'Gilan','GIL','GI',0,'0000-00-00 00:00:00',2),(428,101,'Gorgan','GOR','GO',0,'0000-00-00 00:00:00',2),(429,101,'Hamadan','HAM','HA',0,'0000-00-00 00:00:00',2),(430,101,'Hormozgan','HOR','HO',0,'0000-00-00 00:00:00',2),(431,101,'Ilam','ILA','IL',0,'0000-00-00 00:00:00',2),(432,101,'Kerman','KER','KE',0,'0000-00-00 00:00:00',2),(433,101,'Kermanshah','BAK','BA',0,'0000-00-00 00:00:00',2),(434,101,'Khorasan-e Junoubi','KHJ','KJ',0,'0000-00-00 00:00:00',2),(435,101,'Khorasan-e Razavi','KHR','KR',0,'0000-00-00 00:00:00',2),(436,101,'Khorasan-e Shomali','KHS','KS',0,'0000-00-00 00:00:00',2),(437,101,'Khuzestan','KHU','KH',0,'0000-00-00 00:00:00',2),(438,101,'Kordestan','KOR','KO',0,'0000-00-00 00:00:00',2),(439,101,'Lorestan','LOR','LO',0,'0000-00-00 00:00:00',2),(440,101,'Markazi','MAR','MR',0,'0000-00-00 00:00:00',2),(441,101,'Mazandaran','MAZ','MZ',0,'0000-00-00 00:00:00',2),(442,101,'Qazvin','QAS','QA',0,'0000-00-00 00:00:00',2),(443,101,'Qom','QOM','QO',0,'0000-00-00 00:00:00',2),(444,101,'Semnan','SEM','SE',0,'0000-00-00 00:00:00',2),(445,101,'Sistan va Baluchestan','SBA','SB',0,'0000-00-00 00:00:00',2),(446,101,'Tehran','TEH','TE',0,'0000-00-00 00:00:00',2),(447,101,'Yazd','YAZ','YA',0,'0000-00-00 00:00:00',2),(448,101,'Zanjan','ZAN','ZA',0,'0000-00-00 00:00:00',2),(449,170,'Dolnośląskie','DOL','DO',0,'0000-00-00 00:00:00',2),(450,170,'Kujawsko-Pomorskie','KUJ','KU',0,'0000-00-00 00:00:00',2),(451,170,'Lubelskie','LUB','LU',0,'0000-00-00 00:00:00',2),(452,170,'Lubuskie','LBU','LB',0,'0000-00-00 00:00:00',2),(453,170,'Łódzkie','LOD','LO',0,'0000-00-00 00:00:00',2),(454,170,'Małopolskie','MAL','MP',0,'0000-00-00 00:00:00',2),(455,170,'Mazowieckie','MAZ','MZ',0,'0000-00-00 00:00:00',2),(456,170,'Opolskie','OPO','OP',0,'0000-00-00 00:00:00',2),(457,170,'Podkarpackie','PDK','PK',0,'0000-00-00 00:00:00',2),(458,170,'Podlaskie','PDL','PL',0,'0000-00-00 00:00:00',2),(459,170,'Pomorskie','POM','PO',0,'0000-00-00 00:00:00',2),(460,170,'Śląskie','SLA','SL',0,'0000-00-00 00:00:00',2),(461,170,'Świętokrzyskie','SWI','SW',0,'0000-00-00 00:00:00',2),(462,170,'Warmińsko-Mazurskie','WAR','WA',0,'0000-00-00 00:00:00',2),(463,170,'Wielkopolskie','WIE','WI',0,'0000-00-00 00:00:00',2),(464,170,'Zachodniopomorskie','ZAC','ZA',0,'0000-00-00 00:00:00',2);
/*!40000 ALTER TABLE `japzd_redshop_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_stockroom`
--

DROP TABLE IF EXISTS `japzd_redshop_stockroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_stockroom` (
  `stockroom_id` int(11) NOT NULL auto_increment,
  `stockroom_name` varchar(250) NOT NULL,
  `min_stock_amount` int(11) NOT NULL,
  `stockroom_desc` longtext character set latin1 NOT NULL,
  `creation_date` double NOT NULL,
  `min_del_time` int(11) NOT NULL,
  `max_del_time` int(11) NOT NULL,
  `show_in_front` tinyint(1) NOT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`stockroom_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Stockroom';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_stockroom`
--

LOCK TABLES `japzd_redshop_stockroom` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_stockroom` DISABLE KEYS */;
INSERT INTO `japzd_redshop_stockroom` VALUES (1,'default',0,'This is redshop default stockroom',0,0,0,0,'',1);
/*!40000 ALTER TABLE `japzd_redshop_stockroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_stockroom_amount_image`
--

DROP TABLE IF EXISTS `japzd_redshop_stockroom_amount_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_stockroom_amount_image` (
  `stock_amount_id` int(11) NOT NULL auto_increment,
  `stockroom_id` int(11) NOT NULL,
  `stock_option` tinyint(4) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `stock_amount_image` varchar(255) NOT NULL,
  `stock_amount_image_tooltip` text NOT NULL,
  PRIMARY KEY  (`stock_amount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP stockroom amount image';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_stockroom_amount_image`
--

LOCK TABLES `japzd_redshop_stockroom_amount_image` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_stockroom_amount_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_stockroom_amount_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_stockroom_container_xref`
--

DROP TABLE IF EXISTS `japzd_redshop_stockroom_container_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_stockroom_container_xref` (
  `stockroom_id` int(11) NOT NULL,
  `container_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Stockroom Container Relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_stockroom_container_xref`
--

LOCK TABLES `japzd_redshop_stockroom_container_xref` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_stockroom_container_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_stockroom_container_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_subscription_renewal`
--

DROP TABLE IF EXISTS `japzd_redshop_subscription_renewal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_subscription_renewal` (
  `renewal_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `before_no_days` int(11) NOT NULL,
  PRIMARY KEY  (`renewal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Subscription Renewal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_subscription_renewal`
--

LOCK TABLES `japzd_redshop_subscription_renewal` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_subscription_renewal` DISABLE KEYS */;
INSERT INTO `japzd_redshop_subscription_renewal` VALUES (1,1,1);
/*!40000 ALTER TABLE `japzd_redshop_subscription_renewal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_supplier`
--

DROP TABLE IF EXISTS `japzd_redshop_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_supplier` (
  `supplier_id` int(11) NOT NULL auto_increment,
  `supplier_name` varchar(250) NOT NULL,
  `supplier_desc` longtext NOT NULL,
  `supplier_email` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`supplier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Supplier';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_supplier`
--

LOCK TABLES `japzd_redshop_supplier` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_tax_group`
--

DROP TABLE IF EXISTS `japzd_redshop_tax_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_tax_group` (
  `tax_group_id` int(11) NOT NULL auto_increment,
  `tax_group_name` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`tax_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Tax Group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_tax_group`
--

LOCK TABLES `japzd_redshop_tax_group` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_tax_group` DISABLE KEYS */;
INSERT INTO `japzd_redshop_tax_group` VALUES (1,'Default',1);
/*!40000 ALTER TABLE `japzd_redshop_tax_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_tax_rate`
--

DROP TABLE IF EXISTS `japzd_redshop_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_tax_rate` (
  `tax_rate_id` int(11) NOT NULL auto_increment,
  `tax_state` varchar(64) default NULL,
  `tax_country` varchar(64) default NULL,
  `mdate` int(11) default NULL,
  `tax_rate` decimal(10,4) default NULL,
  `tax_group_id` int(11) NOT NULL,
  `is_eu_country` tinyint(4) NOT NULL,
  PRIMARY KEY  (`tax_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Tax Rates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_tax_rate`
--

LOCK TABLES `japzd_redshop_tax_rate` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_template`
--

DROP TABLE IF EXISTS `japzd_redshop_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_template` (
  `template_id` int(11) NOT NULL auto_increment,
  `template_name` varchar(250) NOT NULL,
  `template_section` varchar(250) NOT NULL,
  `template_desc` longtext NOT NULL,
  `order_status` varchar(250) NOT NULL,
  `payment_methods` varchar(250) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `shipping_methods` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY  (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=551 DEFAULT CHARSET=utf8 COMMENT='redSHOP Templates Detail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_template`
--

LOCK TABLES `japzd_redshop_template` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_template` DISABLE KEYS */;
INSERT INTO `japzd_redshop_template` VALUES (8,'grid','category','<div>\r\n<div class=\"category_main_toolbar\">\r\n<div class=\"category_main_title\">{category_main_name}</div>\r\n<!-- <div>{filter_by_lbl}{filter_by}</div>-->\r\n<div>{order_by_lbl}{order_by}</div>\r\n<div>{template_selector_category_lbl}{template_selector_category}</div>\r\n</div>\r\n{if subcats}\r\n<div>\r\n<div>{category_loop_start}\r\n<div id=\"categories\">\r\n<div style=\"float: left; width: 200px;\">\r\n<div class=\"category_image\">{category_thumb_image}</div>\r\n<div class=\"category_description\">\r\n<h2 class=\"category_title\">{category_name}</h2>\r\n</div>\r\n<div class=\"category_description\">{category_readmore}</div>\r\n<div class=\"category_description\">{category_description}</div>\r\n</div>\r\n</div>\r\n{category_loop_end}</div>\r\n</div>\r\n{subcats end if}\r\n<div class=\"category_box_wrapper\">{product_loop_start}\r\n<div class=\"category_box_outside\">\r\n<div class=\"category_box_inside\">\r\n<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div class=\"category_product_image\">{product_thumb_image}</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div class=\"category_product_title\">\r\n<h3>{product_name}</h3>\r\n</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<div class=\"category_product_price\">{product_price}</div>\r\n</td>\r\n<td>\r\n<div class=\"category_product_addtocart\">{form_addtocart:add_to_cart1}</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n{product_loop_end}</div>\r\n<div class=\"category_pagination\">{pagination}</div>\r\n</div>','','',1,'',0,'0000-00-00 00:00:00'),(5,'list','category','<div>\r\n<div class=\"category_main_toolbar\">\r\n<div class=\"category_main_title\">{category_main_name}</div>\r\n<!-- <div>{filter_by_lbl}{filter_by}</div>-->\r\n<div>{order_by_lbl}{order_by}</div>\r\n<div>{template_selector_category_lbl}{template_selector_category}</div>\r\n</div>\r\n<div class=\"clear\"> </div>\r\n<div class=\"category_box_wrapper\">{product_loop_start}\r\n<div class=\"category_box_outside_row\">\r\n<div class=\"category_product_image\">{product_thumb_image}</div>\r\n<div class=\"category_product_name\">\r\n<h3>{product_name}</h3>\r\n<p>{product_rating_summary}</p>\r\n<p>{product_s_desc}</p>\r\n</div>\r\n<div class=\"category_product_container\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"category_product_price\">{product_price}</div>\r\n</td>\r\n<td>\r\n<div id=\"add_to_cart_all\">{form_addtocart:add_to_cart1}</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n{product_loop_end}</div>\r\n<div class=\"category_pagination\">{pagination}</div>\r\n</div>','','',1,'',0,'0000-00-00 00:00:00'),(26,'product2','product','<div class=\"product\">\n<div class=\"next-prev\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"width: 33%; height: 20px;\" align=\"left\" valign=\"middle\">{navigation_link_left}</td>\n<td style=\"width: 33%; height: 20px;\" align=\"center\" valign=\"middle\">{returntocategory}</td>\n<td style=\"width: 33%; height: 20px;\" align=\"right\" valign=\"middle\">{navigation_link_right}</td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"product_rating_summary\">{product_rating_summary}</div>\n<div class=\"product_writereview\">{form_rating}</div>\n<div class=\"product_box\">\n<div class=\"product_box_inside\">\n<div class=\"product_box_left\">\n<div class=\"product_image\">{product_thumb_image}<br />{view_full_size_image_lbl}</div>\n<div class=\"product_more_images\">{more_images}</div>\n</div>\n<div class=\"product_box_right\">\n<div id=\"product_price\" class=\"product_price\">{product_price}</div>\n<div class=\"product_attributter\">{attribute_template:attributes}</div>\n{if product_userfield}\n<div class=\"product_userfield\">{userfield-test}</div>\n{product_userfield end if}\n<div class=\"product_accessory\">{accessory_template:accessory}</div>\n<div class=\"product_addtocart\">{form_addtocart:add_to_cart2}</div>\n<div class=\"product_manufacturer_link\">{manufacturer_link}</div>\n<div class=\"product_question_link\">{ask_question_about_product}</div>\n</div>\n</div>\n<div class=\"product_desc_wrapper\">\n<div class=\"product_title\">\n<h2>{product_name}</h2>\n</div>\n<div class=\"product_desc_short\">{product_s_desc}</div>\n<div class=\"product_desc_full\">{product_desc}</div>\n</div>\n<div class=\"product_related_products\">{related_product:related_products}</div>\n</div>\n</div>\n<p>{question_loop_start}{question} - {question_owner} - {question_date}{answer_loop_start}{answer} - {answer_owner} - {answer_date}{answer_loop_end}{question_loop_end}</p>\n','','',1,'',0,'0000-00-00 00:00:00'),(9,'product','product','<div class=\"product\">\r\n	<div class=\"gd_navigation\"><span class=\"gd_nav_left\">{navigation_link_left}</span><span class=\"gd_nav_right\">{navigation_link_right}</span></div>\r\n	\r\n	<div class=\"redSHOP_product_box clearfix\">\r\n		<div class=\"redSHOP_product_box_left\">\r\n			<div class=\"product_image\">{product_thumb_image}</div>\r\n			<div class=\"product_more_images\">{more_images}</div>\r\n			<div class=\"redSHOP_links\">\r\n				<span>{ask_question_about_product}</span>\r\n				<div>{manufacturer_link}</div>\r\n			</div>\r\n		</div>\r\n		<div class=\"redSHOP_product_box_right\">\r\n		<div class=\"redSHOP_product_detail_box\">\r\n			<div class=\"product_title clearfix\">\r\n                <h3>{product_name}</h3>                        \r\n                </div>\r\n			<div class=\"product_desc_short\">{product_s_desc}</div>\r\n		</div>  \r\n            \r\n	    <div class=\"addtocart_box\">            \r\n	       	<div  class=\"addtocart_area\">                  \r\n	                <div class=\"cardiv1\">\r\n	                	\r\n	                    {attribute_template:attributes}\r\n	                                     \r\n	                    {accessory_template:accessory}                  \r\n	                </div>\r\n	                 <div class=\"cardiv2\">\r\n	                 	<div class=\"clearfix pricebox\">              	\r\n	                            <div class=\"stockholder\">{stock_status:instock:outofstock}</div>\r\n	                            \r\n	                            <div class=\"areacart\">\r\n	                            \r\n	                            <div id=\"product_price\"><span class=\"product_price_val\">{product_price}</span>    \r\n	                                <span class=\"eks_vat\">{vat_info}</span>\r\n	                            </div>   \r\n	                            <div class=\"product_addtocart\"><div id=\"add_to_cart_all\">{form_addtocart:add_to_cart2}</div></div>            \r\n	                          </div>  \r\n	                                 	                        \r\n	                        </div>\r\n	                </div>\r\n	          </div>\r\n		  </div>\r\n	</div>    \r\n</div>\r\n<div>&nbsp;</div>\r\n<div class=\"product_box_outside\">\r\n			<div style=\"border-bottom: 1px solid #eee;\"><h4>Description</h4></div>\r\n			<div class=\"product_desc\">\r\n				<div class=\"product_desc_full\">{product_desc}</div>\r\n			</div>\r\n		</div>\r\n        \r\n         <div class=\"gd_header\"><h4>Customer Reviews</h4></div>\r\n        <div class=\"gd_content clearfix\" >\r\n        	<div>{product_rating_summary}</div>\r\n            <div>{form_rating}</div>\r\n        </div>\r\n      \r\n        <div>&nbsp;</div>\r\n        {related_product:related_products} 	','','',1,'',0,'0000-00-00 00:00:00'),(29,'newsletter1','newsletter','<p>Newsletter redSHOPdemo2</p>\n<p>{data}</p>\n<p>{username}</p>\n<p>{email}</p>\n<p>{unsubscribe_link}</p>\n','','',1,'',0,'0000-00-00 00:00:00'),(10,'cart','cart','<h1>{cart_lbl}</h1>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<th>{product_name_lbl}</th> <th> <br /></th><th>{product_price_excl_lbl}</th><th>{quantity_lbl}</th><th>{total_price_exe_lbl}</th>\n</tr>\n</thead>\n<tbody>\n<!-- {product_loop_start} -->\n<div class=\"category_print\">{attribute_price_with_vat}</div>\n<tr class=\"tdborder\">\n<td>\n<div class=\"cartproducttitle\">{product_name}</div>\n<div class=\"cartattribut\">{product_attribute}</div>\n<div class=\"cartaccessory\">{product_accessory}</div>\n<div class=\"cartwrapper\">{product_wrapper}</div>\n<div class=\"cartuserfields\">{product_userfields}</div>\n<div>{attribute_change}</div>\n</td>\n<td>{product_thumb_image}</td>\n<td>{product_price_excl_vat}</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{update_cart}</td>\n<td>{remove_product}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>{product_total_price_excl_vat}</td>\n</tr>\n<!-- {product_loop_end} -->\n</tbody>\n</table>\n<p><strong class=\"discount_text\"><br /></strong></p>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"50%\" valign=\"top\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{update}</td>\n<td>{empty_cart}</td>\n</tr>\n<tr>\n<td class=\"cart_discount_form\" colspan=\"2\">{discount_form_lbl}{coupon_code_lbl}<br />{discount_form}</td>\n</tr>\n</tbody>\n</table>\n<br /></td>\n<td width=\"50%\" align=\"right\" valign=\"top\"><br /><br />\n<table class=\"cart_calculations\" border=\"0\" width=\"100%\">\n<tbody>\n<tr class=\"tdborder\">\n<td><b>{product_subtotal_excl_vat_lbl}:</b></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<!-- {if discount}-->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n</tr>\n<!-- {discount end if} -->\n<tr>\n<td><b>{shipping_with_vat_lbl}:</b></td>\n<td width=\"100\">{shipping_excl_vat}</td>\n</tr>\n<!-- {if vat} -->\n<tr>\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n</tr>\n<!-- {vat end if} -->\n <!-- {if payment_discount}-->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if}-->\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{total}</div>\n</td>\n</tr>\n</tbody>\n</table>\n\n{checkout}<br /><br /> {shop_more}</td>\n</tr>\n</tbody>\n</table>','','',1,'',0,'0000-00-00 00:00:00'),(11,'review','review','<div>{product_loop_start}\n<p><strong>{product_title}</strong></p>\n<div>{review_loop_start}\n<div id=\"reviews_wrapper\">\n<div id=\"reviews_rightside\">\n<div id=\"reviews_fullname\">{fullname}</div>\n<div id=\"reviews_title\">{title}</div>\n<div id=\"reviews_comment\">{comment}</div>\n<div id=\"reviews_date\">{reviewdate}</div>\n</div>\n<div id=\"reviews_leftside\">\n<div id=\"reviews_stars\">{stars}</div>\n</div>\n</div>\n{review_loop_end}\n</div>{product_loop_end}</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(13,'manufacturer_listings','manufacturer','<div class=\"category_print\">{print}</div>\n<div id=\"category_header\">\n<div class=\"category_order_by\">{order_by}</div>\n</div>\n<div class=\"manufacturer_box_wrapper\">{manufacturer_loop_start}\n<div class=\"manufacturer_box_outside\">\n<div class=\"manufacturer_box_inside\">\n<div class=\"manufacturer_image\">{manufacturer_image}</div>\n<div class=\"manufacturer_title\">\n<h3>{manufacturer_name}</h3>\n</div>\n<div class=\"manufacturer_desc\">{manufacturer_description}</div>\n<div class=\"manufacturer_link\"><a href=\"{manufacturer_link}\">{manufacturer_link_lbl}</a></div>\n<div class=\"manufacturer_product_link\"><a href=\"{manufacturer_allproductslink}\">{manufacturer_allproductslink_lbl}</a></div>\n</div>\n</div>\n{manufacturer_loop_end}</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(14,'manufacturer_products','manufacturer_products','<div class=\"manufacturer_name\">{manufacturer_name}</div>\n<div class=\"manufacturer_image\">{manufacturer_image}</div>\n<div class=\"manufacturer_description\">{manufacturer_description}</div>\n<div id=\"category_header\">\n<div class=\"category_order_by\">{order_by}</div>\n</div>\n<div class=\"category_box_wrapper\">\n{product_loop_start}\n<div class=\"category_box_outside\">\n<div class=\"category_box_inside\">\n\n<table border=\"0\">\n	<tbody>\n		<tr>\n			<td colspan=\"2\">\n			<div class=\"category_product_image\">{product_thumb_image}</div>\n			</td>\n		</tr>\n		<tr>\n			<td colspan=\"2\">\n			<div class=\"category_product_title\">\n			<h3>{product_name}</h3>\n			</div>\n			</td>\n		</tr>			\n		<tr>\n			<td><div class=\"category_product_price\">{product_price}</div></td>			\n			<td><div class=\"category_product_addtocart\">{form_addtocart:add_to_cart1}</div></td>						\n		</tr>\n	</tbody>\n</table>\n</div>\n</div>\n{product_loop_end}\n</div>\n<div class=\"category_pagination\">{pagination}</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(15,'order_list','order_list','<table border=\"0\" cellspacing=\"5\" cellpadding=\"5\" width=\"100%\">\n<tbody>\n<tr>\n<th>{order_id_lbl}</th> <th>{product_name_lbl}</th> <th>{total_price_lbl}</th> <th>{order_date_lbl}</th> <th>{order_status_lbl}</th> <th>{order_detail_lbl}</th>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td style=\"background-color: #d7d7d4\">{order_id}</td>\n<td style=\"background-color: #d7d7d4\">{order_products}</td>\n<td style=\"background-color: #d7d7d4\">{order_total}</td>\n<td style=\"background-color: #d7d7d4\">{order_date}</td>\n<td style=\"background-color: #d7d7d4\">{order_status}</td>\n<td style=\"background-color: #d7d7d4\">{order_detail_link}{reorder_link}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n{pagination}\n','','',1,'',0,'0000-00-00 00:00:00'),(16,'order_detail','order_detail','<div class=\"product_print\">{print}</div>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{discount_type_lbl}</th>\n</tr>\n<tr>\n<td>{discount_type}</td>\n</tr>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{order_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl} : {order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl} : {order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl} : {order_status}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{billing_address_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{billing_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{shipping_address_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{order_detail_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>{copy_orderitem_lbl}</td>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{price_lbl}</td>\n<td>{quantity_lbl}</td>\n<td align=\"right\">{total_price_lbl}</td>\n</tr>\n<!-- {product_loop_start} -->\n<tr>\n<td>{copy_orderitem}</td>\n<td>{product_name}<br />{product_attribute}{product_accessory}{product_userfields}</td>\n<td>{product_wrapper}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td align=\"right\">{product_total_price}</td>\n</tr>\n<!-- {product_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{customer_note_lbl}: {customer_note}</td>\n</tr>\n<tr>\n<td>{requisition_number_lbl}: {requisition_number}</td>\n</tr>\n<tr>\n<td >\n<table class=\"cart_calculations\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"tdborder\">\n<td><b>Product Subtotal excl vat:</b></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n\n<!-- {if discount} -->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n</tr>\n<!-- {discount end if} -->\n\n<tr>\n<td><b>Shipping with vat:</b></td>\n<td width=\"100\">{shipping}</td>\n</tr>\n<!-- {if vat}-->\n<tr class=\"tdborder\">\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n</tr>\n<!-- {vat end if} -->  \n<!-- {if payment_discount} -->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if} -->\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{order_total}</div>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td align=\"left\">{reorder_button}\n</td></tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','','',1,'',0,'0000-00-00 00:00:00'),(23,'related_products','related_product','<div class=\"gd_header\"><h4>You may also interested in this/these product(s)</h4></div>\r\n<div class=\"gd_content clearfix\">\r\n<div class=\"related_product_wrapper\">\r\n\r\n{related_product_start}\r\n<div class=\"related_product_inside\">\r\n<div class=\"related_product_left\">\r\n<div class=\"related_product_image\">\r\n<div class=\"related_product_image_inside\">{relproduct_image}</div>\r\n</div>\r\n</div>\r\n<div class=\"related_product_right\">\r\n<div class=\"related_product_name\"><a href=\"{read_more_link}\">{relproduct_name}</a></div>\r\n\r\n\r\n</div>\r\n<div class=\"related_product_bottom\">\r\n<div class=\"related_product_price\">{relproduct_price}</div>\r\n<div class=\"related_product_addtocart\">{form_addtocart:add_to_cart1}</div>\r\n</div>\r\n</div>\r\n{related_product_end}</div>\r\n</div>','','',1,'',0,'0000-00-00 00:00:00'),(17,'order_receipt','order_receipt','<div class=\"product_print\">{print}</div>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<th>{product_name_lbl}</th> <th> </th> <th>{price_lbl}</th> <th>{quantity_lbl}</th> <th>{total_price_lbl}</th>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>{product_name}<br />{product_attribute}{product_accessory}{product_userfields}{product_wrapper}</td>\n<td>{product_thumb_image}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td>{product_total_price}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n<p><br /><br /></p>\n<table class=\"cart_calculations\" border=\"1\">\n<tbody>\n<tr class=\"tdborder\">\n<td><b>Product Subtotal:</b></td>\n<td width=\"100\">{product_subtotal}</td>\n<td><b>Product Subtotal excl vat:</b></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<tr>\n<td><b>Shipping with vat:</b></td>\n<td width=\"100\">{shipping}</td>\n<td><b>Shipping excl vat:</b></td>\n<td width=\"100\">{shipping_excl_vat}</td>\n</tr>\n<!-- {if discount} -->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount_excl_vat}</td>\n</tr>\n\n<!-- {discount end if} -->\n<tr>\n<td><b>{totalpurchase_lbl}:</b></td>\n<td width=\"100\">{order_subtotal}</td>\n<td><b>{subtotal_excl_vat_lbl} :</b></td>\n<td width=\"100\">{order_subtotal_excl_vat}</td>\n</tr>\n\n<!-- {if vat} -->\n<tr class=\"tdborder\">\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n<td>{vat_lbl}</td>\n<td width=\"100\">{sub_total_vat}</td>\n</tr>\n<!-- {vat end if} -->  \n<!-- {if payment_discount}-->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if}-->\n<tr class=\"tdborder\">\n<td><b>{shipping_lbl}</b></td>\n<td width=\"100\">{shipping}</td>\n<td><b>{shipping_lbl}</b></td>\n<td width=\"100\">{shipping_excl_vat}</td>\n</tr>\n\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{order_total}</div>\n</td>\n<td>\n<div class=\"singleline\"><b>{total_lbl}:</b></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{total_excl_vat}</div>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\">\n<p>{shipping_method_lbl} <strong>{shipping_method}</strong></p>\n<p>{payment_status}</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\">{billing_address}</td>\n</tr>\n<tr>\n<td colspan=\"4\">{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(18,'manufacturer_detail','manufacturer_detail','<div class=\"manufacturer_name\">{manufacturer_name}</div>\n<div class=\"manufacturer_image\">{manufacturer_image}</div>\n<div class=\"manufacturer_description\">{manufacturer_description}</div>\n<div class=\"manufacturer_product_link\"><a href=\"{manufacturer_allproductslink}\">{manufacturer_allproductslink_lbl}</a></div>\n','','',1,'',0,'0000-00-00 00:00:00'),(22,'frontpage_category','frontpage_category','<div class=\"category_front_introtext\">\n<p>{category_frontpage_introtext}</p>\n</div>\n<p>{category_frontpage_loop_start}</p>\n<div class=\"category_front\">\n<div class=\"category_front_image\">{category_thumb_image}</div>\n<div class=\"category_front_title\">\n<h3>{category_name}</h3>\n</div>\n</div>\n<p>{category_frontpage_loop_end}</p>\n','','',1,'',0,'0000-00-00 00:00:00'),(24,'add_to_cart1','add_to_cart','<div>\n<div class=\"cart-link\">{addtocart_link}\n</div>\n</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(25,'add_to_cart2','add_to_cart','<div class=\"cart-quantity\">{addtocart_quantity}</div>\n<div class=\"product-cart-link\">{addtocart_link}</div>','','',1,'',0,'0000-00-00 00:00:00'),(27,'accessory','accessory_template','<div class=\"accessory_box\">\n<div class=\"accessory_product_wrapper\">\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"accessory_product\" align=\"center\">\n{accessory_product_start}\n<tr>\n    <td>{accessory_image}</td>\n    <td>{accessory_add_chkbox}</td>\n    <td>{accessory_title}</td>\n    <td style=\"padding-left:10px;\">{accessory_price}</td>\n</tr>\n{accessory_product_end}\n</table>\n</div> \n</div>','','',1,'',0,'0000-00-00 00:00:00'),(28,'attributes','attribute_template','<div class=\"attributes_box clearfix\">\n<div class=\"attribute_wrapper\">\n<lable>{attribute_title}</lable>{property_dropdown}<br />{subproperty_start}<lable>{property_title}</lable>{subproperty_dropdown}{subproperty_end}</p>\n</div>\n</div>','','',1,'',0,'0000-00-00 00:00:00'),(100,'my_account_template','account_template','<table border=\"0\">\n<tbody>\n<tr>\n<td>{welcome_introtext}</td>\n</tr>\n<tr>\n<td class=\"account_billinginfo\">\n<table border=\"0\" cellspacing=\"10\" cellpadding=\"10\" width=\"100%\">\n<tbody>\n<tr valign=\"top\">\n<td width=\"40%\">{account_image}<strong>{account_title}</strong><br /><br />\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td class=\"account_label\">{fullname_lbl}</td>\n<td class=\"account_field\">{fullname}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{state_lbl}</td>\n<td class=\"account_field\">{state}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{country_lbl}</td>\n<td class=\"account_field\">{country}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{vatnumber_lbl}</td>\n<td class=\"account_field\">{vatnumber}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{ean_number_lbl}</td>\n<td class=\"account_field\">{ean_number}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{email_lbl}</td>\n<td class=\"account_field\">{email}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{company_name_lbl}</td>\n<td class=\"account_field\">{company_name}</td>\n</tr>\n<tr>\n<td colspan=\"2\">{edit_account_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{order_image}<strong>{order_title}</strong></td>\n</tr>\n <!-- {order_loop_start} -->\n<tr>\n<td>{order_index} {order_id} {order_detail_link}</td>\n</tr>\n <!-- {order_loop_end} -->\n<tr>\n<td>{more_orders}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"account_shippinginfo\">{shipping_image}<strong>{shipping_title}</strong> <br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_shipping_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{quotation_image}<strong>{quotation_title}</strong></td>\n</tr>\n <!-- {quotation_loop_start} -->\n<tr>\n<td>{quotation_index} {quotation_id} {quotation_detail_link}</td>\n</tr>\n<!-- {quotation_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{product_serial_image}<strong>{product_serial_title}</strong><br /><br />\n<table border=\"0\">\n<tbody>\n<!-- {product_serial_loop_start} -->\n<tr>\n<td>{product_name} {product_serial_number}</td>\n</tr>\n<!-- {product_serial_loop_end} -->\n</tbody>\n</table>\n</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{coupon_image}<strong>{coupon_title}</strong></td>\n</tr>\n<!--  {coupon_loop_start} -->\n<tr>\n<td>{coupon_code_lbl} {coupon_code}</td>\n</tr>\n<tr>\n<td>{coupon_value_lbl} {coupon_value}</td>\n</tr>\n<!-- {coupon_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{wishlist_image}<strong>{wishlist_title}</strong><br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_wishlist_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>{compare_image}<strong>{compare_title}</strong> <br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_compare_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{logout_link}</td>\n<td>{tag_image}<strong>{tag_title}</strong><br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_tag_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(101,'catalog','catalog','<div id=\"katalog_wrapper\">\n<div id=\"bestil_katalog_wrapper\">\n<div id=\"katalog_overskrift\">\n<h1>Order Catalog</h1>\n</div>\n<div id=\"katalog_venstre_wrapper\">\n<div id=\"katalog_tekst\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget nisi orci, vel vehicula massa. Phasellus ipsum est, egestas a consequat eget, placerat vitae ipsum. Proin ac purus risus. Quisque nec nisi lacus, vitae iaculis eros. Donec ipsum diam, dictum ac euismod molestie, ultrices eget arcu. Vestibulum lacinia nisl et odio sagittis fermentum. Aliquam tristique volutpat faucibus. Sed id orci ut metus condimentum bibendum. Ut gravida scelerisque magna et pharetra. Ut vel turpis in orci molestie scelerisque. Proin nisl elit, ullamcorper id blandit nec, congue eget augue. Nullam gravida ligula nisi.</p>\n</div>\n<div>Catalog:{catalog_select}</div>\n<div id=\"katalog_navn_email\">NAME  {name} <br /><br />EMAIL {email_address} <br /><br />{submit_button_catalog}</div>\n</div>\n<div id=\"katalog_hojre_wrapper\"></div>\n</div>\n</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(102,'catalog_sample','product_sample','<div id=\"katalog_wrapper\">\n<div id=\"bestil_katalog_wrapper\">\n<div id=\"katalog_hojre_wrapper\"></div>\n</div>\n<div id=\"bestil_farveproeve_wrapper\">\n<div id=\"farveproeve_overskrift\">\n<h2>Bestil Farvepr�ver</h2>\n</div>\n<div id=\"farveproeve_venstre\">\n<div id=\"farveproever_tekst\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget nisi orci, vel vehicula massa. Phasellus ipsum est, egestas a consequat eget, placerat vitae ipsum. Proin ac purus risus. Quisque nec nisi lacus, vitae iaculis eros. Donec ipsum diam, dictum ac euismod molestie, ultrices eget arcu. Vestibulum lacinia nisl et odio sagittis fermentum. Aliquam tristique volutpat faucibus. Sed id orci ut metus condimentum bibendum. Ut gravida scelerisque magna et pharetra. Ut vel turpis in orci molestie scelerisque. Proin nisl elit, ullamcorper id blandit nec, congue eget augue. Nullam gravida ligula nisi.</div>\n<div id=\"farveproever\">\n<p style=\"text-align: left;\">{product_samples}</p>\n</div>\n</div>\n<div id=\"farveproeve_hojre_wrapper\">\n<div id=\"farveproeve_addressefelt\">\n<p style=\"text-align: left;\">{address_fields}</p>\n</div>\n<div id=\"farveproeve_sendknap\">\n<p style=\"text-align: left;\">{submit_button_sample}</p>\n</div>\n</div>\n</div>\n</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(103,'wishlist_list','wishlist_template','<div style=\"float: right;\">{mail_link}</div>\n<p>{product_loop_start}</p>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\">\n<tbody>\n<tr valign=\"top\">\n<td width=\"40%\">\n<div style=\"float: left; width: 195px; height: 230px; text-align: center;\">{product_thumb_image}\n<div>{product_name}</div>\n<div>{product_price}</div>\n<div>{form_addtocart:add_to_cart1}</div>\n<div></div>\n<div>{remove_product_link}</div>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n<div></div>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tbody>\n<tr>\n<td></td>\n<td align=\"center\" valign=\"top\"><br /><br /></td>\n</tr>\n</tbody>\n</table>\n<p>{product_loop_end}</p>\n<div style=\"float: right;\">{back_link}</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(105,'wishlist_mail','wishlist_mail_template','<table border=\"0\" cellspacing=\"10\" cellpadding=\"10\">\n<tbody>\n<tr>\n<th colspan=\"2\">{email_to_friend}</th>\n</tr>\n<tr>\n<td>{emailto_lbl}</td>\n<td>{emailto}</td>\n</tr>\n<tr>\n<td>{sender_lbl}</td>\n<td>{sender}</td>\n</tr>\n<tr>\n<td>{mail_lbl}</td>\n<td>{mail}</td>\n</tr>\n<tr>\n<td>{subject_lbl}</td>\n<td>{subject}</td>\n</tr>\n<tr>\n<td>{cancel_button}</td>\n<td>{send_button}</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(115,'wrapper','wrapper_template','<div class=\"accessory\">\n<div class=\"accessory_info\">\n<h2>Product Wrapper</h2>\nSelect Wrapper by clicking in the box.</div>\n<div class=\"wrapper_box\">\n<div class=\"wrapper_left\">\n<div class=\"wrapper_image\">{wrapper_dropdown}</div>\n</div>\n<div class=\"wrapper_left\">\n<div class=\"wrapper_image\">{wrapper_image}</div>\n<div class=\"wrapper_price\">{wrapper_price}</div>\n</div>\n<div class=\"wrapper_left\">\n<div class=\"wrapper_image\">{wrapper_add_checkbox}</div>\n</div>\n</div>\n</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(125,'giftcard_listing','giftcard_list','<div>{giftcard_loop_start}\n<div><h3>{giftcard_name}</h3></div>\n<div>{giftcard_desc}</div>\n<div>{giftcard_validity}</div>{giftcard_loop_end}</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(135,'giftcard','giftcard','<div>{giftcard_image}</div>\n<div>{giftcard_name}</div>\n<div>{giftcard_desc}</div>\n<div>{giftcard_price_lbl}{giftcard_price}</div>\n<div>{giftcard_validity}</div>\n<div>{giftcard_reciver_name_lbl}{giftcard_reciver_name}</div>\n<div>{giftcard_reciver_email_lbl}{giftcard_reciver_email}</div>\n<div>{form_addtocart:add_to_cart2}</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(110,'ask_question','ask_question_template','<table border=\"0\">\n<tbody>\n<tr>\n<td>{user_name_lbl}</td>\n<td>{user_name}</td>\n</tr>\n<tr>\n<td>{user_email_lbl}</td>\n<td>{user_email}</td>\n</tr>\n<tr>\n<td>{user_question_lbl}</td>\n<td>{user_question}</td>\n</tr>\n<tr>\n<td></td>\n<td>{send_button}</td>\n</tr>\n<tr>\n<td>{captcha_lbl}</td>\n<td>{captcha}</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(111,'ajax_cart_box','ajax_cart_box','<div id=\"ajax_cart_wrapper\">\n<div id=\"ajax_cart_text\">{ajax_cart_box_title}<br /><br /></div>\n<div id=\"ajax_cart_button_wrapper\">\n<div id=\"ajax_cart_button_inside\">\n<div id=\"ajax_cart_continue_button\">{continue_shopping_button}</div>\n<div id=\"ajax_cart_show_button\">{show_cart_button}</div>\n</div>\n</div>\n</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(112,'ajax_cart_detail_box','ajax_cart_detail_box','<div id=\"ajax-cart\">\n<div id=\"ajax-cart-label\">\n<h3>Add to Cart</h3>\n</div>\n<div id=\"ajax-cart-attr\">{attribute_template:attributes}</div>\n<div id=\"ajax-cart-access\">{accessory_template:accessory}</div>\n{if product_userfield}\n<div id=\"ajax-cart-user\">{userfield-test}</div>\n{product_userfield end if}\n<div id=\"ajax-cart-label\">{form_addtocart:add_to_cart2}</div>\n</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(200,'shipping_pdf','shipping_pdf','<div style=\"background-color:#CCCCCC;color:white;\">{order_information_lbl}</div>\n<table border=\"0\">\n<tbody>\n<tr>\n<td class=\"caption\">{order_id_lbl}</td>\n<td>{order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl}</td>\n<td>{order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl}</td>\n<td>{order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl}</td>\n<td>{order_status}</td>\n</tr>\n</tbody>\n</table>\n<div style=\"background-color:#CCCCCC;color:white;\">{shipping_address_info_lbl}</div>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr>\n<td>{shipping_firstname_lbl} : {shipping_firstname}</td>\n</tr>\n<tr>\n<td>{shipping_lastname_lbl} : {shipping_lastname}</td>\n</tr>\n<tr>\n<td>{shipping_address_lbl}: {shipping_address}</td>\n</tr>\n<tr>\n<td>{shipping_zip_lbl}  : {shipping_zip}</td>\n</tr>\n<tr>\n<td>{shipping_city_lbl} :{shipping_city}</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(251,'order_print','order_print','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{order_information_lbl}{print}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl} : {order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl} : {order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl} : {order_status}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{billing_address_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{billing_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{shipping_address_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{order_detail_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{price_lbl}</td>\n<td>{quantity_lbl}</td>\n<td align=\"right\">{total_price_lbl}</td>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>\n<p>{product_name}<br />{product_attribute}{product_accessory}{product_userfields}</p>\n</td>\n<td>{product_wrapper}{product_thumb_image}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td align=\"right\">{product_total_price}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td></td>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr align=\"left\">\n<td align=\"left\"><strong>{order_subtotal_lbl} : </strong></td>\n<td align=\"right\">{order_subtotal}</td>\n</tr>\n<!-- {if vat} -->\n<tr align=\"left\">\n<td align=\"left\"><strong>{vat_lbl} : </strong></td>\n<td align=\"right\">{order_tax}</td>\n</tr>\n<!-- {vat end if} -->\n<!-- {if discount}-->\n<tr align=\"left\">\n<td align=\"left\"><strong>{discount_lbl} : </strong></td>\n<td align=\"right\">{order_discount}</td>\n</tr>\n<!-- {discount end if}-->\n<tr align=\"left\">\n<td align=\"left\"><strong>{shipping_lbl} : </strong></td>\n<td align=\"right\">{order_shipping}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n</td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{total_lbl} :</strong></td>\n<td align=\"right\">{order_total}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n<br />\n<hr />\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(252,'clicktell_sms_message','clicktell_sms_message','<p>{order_id}{order_status}<br />{customer_name}<br />{payment_status}</p>\n','','',1,'',0,'0000-00-00 00:00:00'),(260,'redproductfinder','redproductfinder','<div class=\"redproductfinder_result_header\">\n{order_by} {pagination} {perpagelimit:5} {product_display_limit}\n{product_loop_start}<br />\n{product_id_lbl} :: {product_id} <br />\n{product_name}<br />{product_price}<br />\n{product_thumb_image}<br />\n{attribute_template:attributes}<br/>\n{product_s_desc}<br />\n{product_number_lbl} :: {product_number} <br />\n{manufacturer_link}<br />{manufacturer_name}<br />\n{read_more}<br />{form_addtocart:add_to_cart1}<br />\n{product_loop_end}</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(265,'quotation_detail','quotation_detail','<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{quotation_information_lbl}{print}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{quotation_id_lbl} : {quotation_id}</td>\n</tr>\n<tr>\n<td>{quotation_number_lbl} : {quotation_number}</td>\n</tr>\n<tr>\n<td>{quotation_date_lbl} : {quotation_date}</td>\n</tr>\n<tr>\n<td>{quotation_status_lbl} : {quotation_status}</td>\n</tr>\n<tr>\n<td>{quotation_note_lbl} : {quotation_note}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{account_information_lbl}</th>\n</tr>\n<tr>\n<td>{account_information}{quotation_custom_field_list}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{quotation_detail_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{price_lbl}</td>\n<td>{quantity_lbl}</td>\n<td align=\"right\">{total_price_lbl}</td>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>{product_name}({product_number_lbl} - {product_number})<br />{product_accessory}{product_attribute}{product_userfields}</td>\n<td>{product_wrapper}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td align=\"right\">{product_total_price}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td></td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr align=\"left\">\n<td align=\"left\"><strong>{quotation_subtotal_lbl} : </strong></td>\n<td align=\"right\">{quotation_subtotal}</td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{quotation_tax_lbl} : </strong></td>\n<td align=\"right\">{quotation_tax}</td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{quotation_discount_lbl} : </strong></td>\n<td align=\"right\">{quotation_discount}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n</td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{total_lbl} :</strong></td>\n<td align=\"right\">{quotation_total}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n<br />\n<hr />\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(334,'newsletter_products','newsletter_product','	<p>{product_name}</p>\n<p>{product_price}</p>\n<p>{product_thumb_image}</p>\n<p>{product_s_desc}</p>\n<p>{product_desc}</p>\n<p>{unsubscribe_link}</p>\n','','',1,'',0,'0000-00-00 00:00:00'),(280,'catalogue_cart','catalogue_cart','<h1>Indkøbskurv</h1>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<th>{product_name_lbl}</th> <th> <br /></th><th>{quantity_lbl}</th>\n</tr>\n</thead>\n<tbody>\n{print} <!--  {product_loop_start} -->}\n<tr class=\"tdborder\">\n<td>\n<p>{product_name}  <span class=\"attribut\">{product_attribute} {product_accessory}</span> {product_wrapper}{product_userfields}</p>\n<p> </p>\n</td>\n<td>{product_thumb_image}</td>\n<td>\n<table style=\"width: 172px; height: 46px;\" border=\"0\">\n<tbody>\n<tr>\n<td>{update_cart}{remove_product}</td>\n<td><br /></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"50%\" valign=\"top\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{update}</td>\n<td>{empty_cart}</td>\n</tr>\n</tbody>\n</table>\n<br /><br /> {coupon_code_lbl}   {discount_form}</td>\n<td width=\"50%\" align=\"right\" valign=\"top\"><br /><br />\n<table class=\"cart_regnestykke\" border=\"0\">\n<tbody>\n</tbody>\n</table>\n<table class=\"regnestykke_sidste\" border=\"0\">\n<tbody>\n<tr>\n<td>{newsletter_signup_lbl}</td>\n<td>{newsletter_signup_chk}</td>\n</tr>\n</tbody>\n</table>\n<p>{terms_and_conditions}{checkout_button}<br /><br /> {shop_more}</p>\n</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(281,'catalogue_order_detail','catalogue_order_detail','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{discount_type_lbl}</th>\n</tr>\n<tr>\n<td>{discount_type}</td>\n</tr>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{order_information_lbl}{print}</th>\n</tr>\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl} : {order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl} : {order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl} : {order_status}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{billing_address_information_lbl}</th>\n</tr>\n<tr>\n<td>{billing_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{shipping_address_info_lbl}</th>\n</tr>\n<tr>\n<td>{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{order_detail_lbl}</th>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{quantity_lbl}</td>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>{product_name}{product_userfields}</td>\n<td>{product_note}</td>\n<td>{product_quantity}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(282,'catalogue_order_receipt','catalogue_order_receipt','<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<th>{product_name_lbl} {print}</th> <th> </th> <th>{quantity_lbl}</th>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>{product_name}<br />{product_userfields}</td>\n<td>{product_thumb_image}</td>\n<td>{product_quantity}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n<table class=\"order_details\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"50%\" align=\"left\" valign=\"top\">\n<p>{order_number_lbl}{order_number}<strong>{delivery_time_lbl} {delivery_time}</strong></p>\n<p>{order_id}{order_id_lbl}</p>\n<p>{print} Print denne side</p>\n</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(289,'empty_cart','empty_cart','<p>The Cart is empty.</p>\n','','',1,'',0,'0000-00-00 00:00:00'),(320,'compare_product','compare_product','<div><span>{compare_product_heading}</span></div>\n<div><a href=\"{returntocategory_link}\">{returntocategory_name}</a></div>\n<table border=\"1\">\n<tbody>\n<tr>\n<th> </th>\n<td align=\"center\">{expand_collapse}</td>\n</tr>\n<tr>\n<th>Product Name</th>\n<td>{product_name}</td>\n</tr>\n<tr>\n<th>Image</th>\n<td>{product_image}</td>\n</tr>\n<tr>\n<th>Manufacturer</th>\n<td>{manufacturer_name}</td>\n</tr>\n<tr>\n<th>Discount Start <br /></th>\n<td>{discount_start_date}</td>\n</tr>\n<tr>\n<th>Discount End<br /></th>\n<td>{discount_end_date}</td>\n</tr>\n<tr>\n<th>Price</th>\n<td>{product_price}</td>\n</tr>\n<tr>\n<th>Short Desc<br /></th>\n<td>{product_s_desc}</td>\n</tr>\n<tr>\n<th>Desc</th>\n<td>{product_desc}</td>\n</tr>\n<tr>\n<th>Rating</th>\n<td>{product_rating_summary}</td>\n</tr>\n<tr>\n<th>Delivery Time</th>\n<td>{product_delivery_time}</td>\n</tr>\n<tr>\n<th>Product Number<br /></th>\n<td>{product_number}</td>\n</tr>\n<tr>\n<th>Stock<br /></th>\n<td>{products_in_stock}</td>\n</tr>\n<tr>\n<th>Stock<br /></th>\n<td>{product_stock_amount_image}</td>\n</tr>\n<tr>\n<th>Weight<br /></th>\n<td>{product_weight}</td>\n</tr>\n<tr>\n<th>Length<br /></th>\n<td>{product_length}</td>\n</tr>\n<tr>\n<th>Height<br /></th>\n<td>{product_height}</td>\n</tr>\n<tr>\n<th>Width<br /></th>\n<td>{product_width}</td>\n</tr>\n<tr>\n<th>Availability Date<br /></th>\n<td>{product_availability_date}</td>\n</tr>\n<tr>\n<th>Volume<br /></th>\n<td>{product_volume}</td>\n</tr>\n<tr>\n<th>Category<br /></th>\n<td>{product_category}</td>\n</tr>\n<tr>\n<th> </th>\n<td>{remove}</td>\n</tr>\n<tr>\n<th> </th>\n<td>{add_to_cart}</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(353,'payment_method','redshop_payment','<fieldset class=\"adminform\"><legend><strong>{payment_heading}</strong></legend>\n<div>{split_payment}</div>\n<div>{payment_loop_start}\n<div>{payment_method_name}</div>\n<div>{creditcard_information}</div>\n{payment_loop_end}</div>\n</fieldset>\n','','',1,'',0,'0000-00-00 00:00:00'),(354,'shipping_method','redshop_shipping','<fieldset><legend><strong>{shipping_heading}</strong></legend>\n<div>{shipping_method_loop_start}\n<h3>{shipping_method_title}</h3>\n<div>{shipping_rate_loop_start}\n<div>{shipping_rate_name}{shipping_rate}</div>\n{shipping_rate_loop_end}</div>\n{shipping_method_loop_end}</div>\n</fieldset>\n','','',1,'',0,'0000-00-00 00:00:00'),(355,'shipping_box','shippingbox','<fieldset class=\"adminform\"> <legend><strong>{shipping_box_heading}</strong></legend>\n<div>{shipping_box_list}</div>\n</fieldset>\n','','',1,'',0,'0000-00-00 00:00:00'),(356,'category_product_template','categoryproduct','<div>\n{category_loop_start}\n	<div id=\"categories\">\n		<div style=\"clear:both; width: 200px;\">\n		<div class=\"category_image\">{category_thumb_image}</div>\n		<div class=\"category_description\">\n		<h2 class=\"category_title\">{category_name}</h2>\n		{category_description}</div>\n		</div>\n	</div>\n	<div class=\"category_box_wrapper\">{product_loop_start}\n	<div class=\"category_box_outside\">\n	<div class=\"category_box_inside\">\n	<table border=\"0\">\n	<tbody>\n	<tr>\n	<td colspan=\"2\">\n	<div class=\"category_product_image\">{product_thumb_image}</div>\n	</td>\n	</tr>\n	<tr>\n	<td colspan=\"2\">\n	<div class=\"category_product_title\">\n	<h3>{product_name}</h3>\n	</div>\n	</td>\n	</tr>\n	<tr>\n	<td>\n	<div class=\"category_product_price\">{product_price}</div>\n	</td>\n	<td>\n	<div class=\"category_product_addtocart\">{form_addtocart:add_to_cart1}</div>\n	</td>\n	</tr>\n	</tbody>\n	</table>\n	</div>\n	</div>\n	{product_loop_end}</div>\n{category_loop_end}</div>\n<div class=\"category_pagination\">{pagination}</div>\n','','',1,'',0,'0000-00-00 00:00:00'),(357,'change_cart_attribute_template','change_cart_attribute','<table border=\"0\">\n<tbody>\n<tr>\n<th>Change Attribute</th>\n</tr>\n<tr>\n<td>{attribute_template:attributes}</td>\n</tr>\n<tr>\n<td>{apply_button} {cancel_button}</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(358,'onestep_checkout','onestep_checkout','<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr>\n<td><fieldset class=\"adminform\"><legend>{billing_address_information_lbl}</legend> {edit_billing_address} <br />{billing_address} </fieldset></td>\n</tr>\n<tr>\n<td><fieldset class=\"adminform\"><legend>{shipping_address_information_lbl}</legend> {shipping_address} </fieldset></td>\n</tr>\n<tr>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{shippingbox_template:shipping_box}</td>\n</tr>\n<tr>\n<td>{shipping_template:shipping_method}</td>\n</tr>\n<tr>\n<td>{payment_template:payment_method}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{checkout_template:checkout}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00'),(359,'attributes_listing1','attributewithcart_template','','','',1,'',0,'0000-00-00 00:00:00'),(360,'checkout','checkout','<h1>{cart_lbl}</h1>\n<div class=\"category_print\">{print}</div>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<th>{product_name_lbl}</th> <th> </th><th>Product Price excl.</th><th>{quantity_lbl}</th><th>{total_price_exe_lbl}</th>\n</tr>\n</thead>\n<tbody>\n<!-- {product_loop_start} -->\n<div class=\"category_print\">{attribute_price_without_vat}</div>\n<tr class=\"tdborder\">\n<td>\n<div class=\"cartproducttitle\">{product_name}</div>\n<div class=\"cartproducttitle\">{product_old_price}</div>\n<div class=\"cartattribut\">{product_attribute}</div>\n<div class=\"cartaccessory\">{product_accessory}</div>\n<div class=\"cartwrapper\">{product_wrapper}</div>\n<div class=\"cartuserfields\">{product_userfields}</div>\n</td>\n<td>{product_thumb_image}</td>\n<td>{product_price_excl_vat}</td>\n<td>{update_cart}</td>\n<td>{product_total_price_excl_vat}</td>\n</tr>\n<!-- {product_loop_end} -->\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"50%\" valign=\"top\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td class=\"cart_customer_note\" colspan=\"2\">{customer_note_lbl}<br />{customer_note}</td></tr>\n<tr><td class=\"cart_requisition_number\" colspan=\"2\">{requisition_number_lbl}<br />{requisition_number}</td>\n</tr>\n</tbody>\n</table>\n<br /></td>\n<td width=\"50%\" align=\"right\" valign=\"top\"><br /><br />\n<table class=\"cart_calculations\" border=\"0\" width=\"100%\">\n<tbody>\n<tr class=\"tdborder\">\n<td><b>Product Subtotal excl vat:</b></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<!-- {if discount}-->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n</tr>\n<!-- {discount end if}-->\n<tr>\n<td><b>Shipping with vat:</b></td>\n<td width=\"100\">{shipping}</td>\n</tr>\n<!-- {if vat}-->\n<tr>\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n</tr>\n<!-- {vat end if} --> \n<!-- {if payment_discount}-->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if}-->\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{total}</div>\n</td>\n</tr>\n</tbody>\n</table>\n<div>{newsletter_signup_lbl} {newsletter_signup_chk}</div>\n<div>{terms_and_conditions:width=500 height=450}</div>\n<div>{checkout_button}{shop_more}</div></td>\n</tr>\n</tbody>\n</table>','','',1,'',0,'0000-00-00 00:00:00'),(371,'product_content','product_content_template','<div class=\"mod_redshop_products\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>\n<div class=\"mod_redshop_products_image\">{product_thumb_image}</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"mod_redshop_products_title\">\n{product_name}\n</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"mod_redshop_products_price\">{product_price}</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"mod_redshop_products_readmore\">{read_more}</div>\n</td>\n</tr>\n<tr>\n<td>\n<div>{attribute_template:attributes}</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>','','',1,'',0,'0000-00-00 00:00:00'),(372,'quotation_cart_template','quotation_cart','','','',1,'',0,'0000-00-00 00:00:00'),(370,'quotation_request_template','quotation_request','<fieldset class=\"adminform\"><legend>{order_detail_lbl}</legend>\n<table class=\"admintable\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<th width=\"40%\" align=\"left\">{product_name_lbl}</th> <th width=\"35%\"> </th><th width=\"25%\">{quantity_lbl}</th>\n</tr>\n</thead>\n<tbody>\n<!--  {product_loop_start} -->\n<tr>\n<td>\n<div class=\"cartproducttitle\">{product_name}</div>\n<div class=\"cartattribut\">{product_attribute}</div>\n<div class=\"cartaccessory\">{product_accessory}</div>\n<div class=\"cartwrapper\">{product_wrapper}</div>\n<div class=\"cartuserfields\">{product_userfields}</div>\n</td>\n<td align=\"center\">{product_thumb_image}</td>\n<td align=\"center\">{update_cart}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n</fieldset>\n<p>{customer_note_lbl}:{customer_note}</p>\n<fieldset class=\"adminform\"><legend>{billing_address_information_lbl}</legend> {billing_address} {quotation_custom_field_list}</fieldset>\n<table border=\"0\">\n<tbody>\n<tr>\n<td align=\"center\">{cancel_btn}</td>\n<td align=\"center\">{request_quotation_btn}</td>\n</tr>\n</tbody>\n</table>','','',1,'',0,'0000-00-00 00:00:00'),(450,'billing_template','billing_template','<table class=\"admintable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr valign=\"top\">\n<td>{private_billing_template:private_billing_template}{company_billing_template:company_billing_template}</td>\n<td>{account_creation_start}    \n<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td width=\"100\" align=\"right\">{username_lbl}</td>\n<td>{username}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{password_lbl}</td>\n<td>{password}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{confirm_password_lbl}</td>\n<td>{confirm_password}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{newsletter_signup_chk}</td>\n<td colspan=\"2\">{newsletter_signup_lbl}</td>\n</tr>\n</tbody>\n</table>\n{account_creation_end}</td>\n</tr>\n<tr>\n<td colspan=\"2\" align=\"right\"><span class=\"required\">*</span>{required_lbl}</td>\n</tr>\n<tr class=\"trshipping_add\">\n<td class=\"tdshipping_add\" colspan=\"2\">{sipping_same_as_billing_lbl} {sipping_same_as_billing}</td>\n</tr>\n</tbody>\n</table>','','',1,'',0,'0000-00-00 00:00:00'),(451,'shipping_template','shipping_template','<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td width=\"100\" align=\"right\">{firstname_st_lbl}</td>\n<td>{firstname_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{lastname_st_lbl}</td>\n<td>{lastname_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{address_st_lbl}</td>\n<td>{address_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{zipcode_st_lbl}</td>\n<td>{zipcode_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{city_st_lbl}</td>\n<td>{city_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{country_st_txtid}\" style=\"{country_st_style}\">\n<td width=\"100\" align=\"right\">{country_st_lbl}</td>\n<td>{country_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{state_st_txtid}\" style=\"{state_st_style}\">\n<td width=\"100\" align=\"right\">{state_st_lbl}</td>\n<td>{state_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{phone_st_lbl}</td>\n<td>{phone_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td colspan=\"3\">{extra_field_st_start}\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{extra_field_st}</td>\n</tr>\n</tbody>\n</table>\n{extra_field_st_end}</td>\n</tr>\n</tbody>\n</table>','','',1,'',0,'0000-00-00 00:00:00'),(452,'shippment_invoice_template','shippment_invoice_template','','','',1,'',0,'0000-00-00 00:00:00'),(460,'private_billing_template','private_billing_template','<table class=\"admintable\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{email_lbl}:</td>\r\n<td>{email}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr><!-- {retype_email_start} -->\r\n<tr>\r\n<td width=\"100\" align=\"right\">{retype_email_lbl}</td>\r\n<td>{retype_email}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr><!-- {retype_email_end} -->\r\n<tr>\r\n<td width=\"100\" align=\"right\">{firstname_lbl}</td>\r\n<td>{firstname}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{lastname_lbl}</td>\r\n<td>{lastname}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{address_lbl}</td>\r\n<td>{address}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{zipcode_lbl}</td>\r\n<td>{zipcode}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{city_lbl}</td>\r\n<td>{city}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr id=\"{country_txtid}\" style=\"{country_style}\">\r\n<td width=\"100\" align=\"right\">{country_lbl}</td>\r\n<td>{country}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr id=\"{state_txtid}\" style=\"{state_style}\">\r\n<td width=\"100\" align=\"right\">{state_lbl}</td>\r\n<td>{state}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{phone_lbl}</td>\r\n<td>{phone}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">{private_extrafield}</td>\r\n</tr>\r\n</tbody>\r\n</table>','','',1,'',0,'0000-00-00 00:00:00'),(461,'company_billing_template','company_billing_template','<table class=\"admintable\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{email_lbl}:</td>\r\n<td>{email}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr><!-- {retype_email_start} -->\r\n<tr>\r\n<td width=\"100\" align=\"right\">{retype_email_lbl}</td>\r\n<td>{retype_email}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr><!-- {retype_email_end} -->\r\n<tr>\r\n<td width=\"100\" align=\"right\">{company_name_lbl}</td>\r\n<td>{company_name}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr><!-- {vat_number_start} -->\r\n<tr>\r\n<td width=\"100\" align=\"right\">{vat_number_lbl}</td>\r\n<td>{vat_number}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr><!-- {vat_number_end} -->\r\n<tr>\r\n<td width=\"100\" align=\"right\">{firstname_lbl}</td>\r\n<td>{firstname}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{lastname_lbl}</td>\r\n<td>{lastname}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{address_lbl}</td>\r\n<td>{address}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{zipcode_lbl}</td>\r\n<td>{zipcode}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{city_lbl}</td>\r\n<td>{city}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr id=\"{country_txtid}\" style=\"{country_style}\">\r\n<td width=\"100\" align=\"right\">{country_lbl}</td>\r\n<td>{country}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr id=\"{state_txtid}\" style=\"{state_style}\">\r\n<td width=\"100\" align=\"right\">{state_lbl}</td>\r\n<td>{state}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{phone_lbl}</td>\r\n<td>{phone}</td>\r\n<td><span class=\"required\">*</span></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{ean_number_lbl}</td>\r\n<td>{ean_number}</td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td width=\"100\" align=\"right\">{tax_exempt_lbl}</td>\r\n<td>{tax_exempt}</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">{company_extrafield}</td>\r\n</tr>\r\n</tbody>\r\n</table>','','',1,'',0,'0000-00-00 00:00:00'),(550,'stock_note','stock_note','<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n<td> {order_date_lbl} : {order_date}</td>\n</tr>\n</table>\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #d7d7d4\">\n<th align=\"center\">{product_name_lbl}</th>\n<th align=\"center\">{product_number_lbl}</th>\n<th align=\"center\">{product_quantity_lbl}</th>\n</tr>\n<!-- {product_loop_start} -->\n<tr>\n<td  align=\"center\">\n<table>\n<tr><td>{product_name}</td></tr>\n<tr><td>{product_attribute}</td></tr>\n</table>\n</td>\n<td  align=\"center\">{product_number}</td>\n<td  align=\"center\">{product_quantity}</td>\n</tr>\n<!-- {product_loop_end} -->\n</tbody>\n</table>\n','','',1,'',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `japzd_redshop_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_textlibrary`
--

DROP TABLE IF EXISTS `japzd_redshop_textlibrary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_textlibrary` (
  `textlibrary_id` int(11) NOT NULL auto_increment,
  `text_name` varchar(255) default NULL,
  `text_desc` varchar(255) default NULL,
  `text_field` text,
  `section` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`textlibrary_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP TextLibrary';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_textlibrary`
--

LOCK TABLES `japzd_redshop_textlibrary` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_textlibrary` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_textlibrary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_usercart`
--

DROP TABLE IF EXISTS `japzd_redshop_usercart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_usercart` (
  `cart_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `cdate` int(11) NOT NULL,
  `mdate` int(11) NOT NULL,
  PRIMARY KEY  (`cart_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP User Cart Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_usercart`
--

LOCK TABLES `japzd_redshop_usercart` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_usercart` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_usercart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_usercart_accessory_item`
--

DROP TABLE IF EXISTS `japzd_redshop_usercart_accessory_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_usercart_accessory_item` (
  `cart_acc_item_id` int(11) NOT NULL auto_increment,
  `cart_item_id` int(11) NOT NULL,
  `accessory_id` int(11) NOT NULL,
  `accessory_quantity` int(11) NOT NULL,
  PRIMARY KEY  (`cart_acc_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP User Cart Accessory Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_usercart_accessory_item`
--

LOCK TABLES `japzd_redshop_usercart_accessory_item` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_usercart_accessory_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_usercart_accessory_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_usercart_attribute_item`
--

DROP TABLE IF EXISTS `japzd_redshop_usercart_attribute_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_usercart_attribute_item` (
  `cart_att_item_id` int(11) NOT NULL auto_increment,
  `cart_item_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `section` varchar(25) NOT NULL,
  `parent_section_id` int(11) NOT NULL,
  `is_accessory_att` tinyint(4) NOT NULL,
  PRIMARY KEY  (`cart_att_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP User cart Attribute Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_usercart_attribute_item`
--

LOCK TABLES `japzd_redshop_usercart_attribute_item` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_usercart_attribute_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_usercart_attribute_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_usercart_item`
--

DROP TABLE IF EXISTS `japzd_redshop_usercart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_usercart_item` (
  `cart_item_id` int(11) NOT NULL auto_increment,
  `cart_idx` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_wrapper_id` int(11) NOT NULL,
  `product_subscription_id` int(11) NOT NULL,
  `giftcard_id` int(11) NOT NULL,
  PRIMARY KEY  (`cart_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP User Cart Item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_usercart_item`
--

LOCK TABLES `japzd_redshop_usercart_item` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_usercart_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_usercart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_users_info`
--

DROP TABLE IF EXISTS `japzd_redshop_users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_users_info` (
  `users_info_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `address_type` varchar(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `vat_number` varchar(250) NOT NULL,
  `tax_exempt` tinyint(4) NOT NULL,
  `shopper_group_id` int(11) NOT NULL,
  `country_code` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state_code` varchar(11) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `tax_exempt_approved` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `is_company` tinyint(4) NOT NULL,
  `ean_number` varchar(250) NOT NULL,
  `braintree_vault_number` varchar(255) NOT NULL,
  `veis_vat_number` varchar(255) NOT NULL,
  `veis_status` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `requesting_tax_exempt` tinyint(4) NOT NULL,
  `accept_terms_conditions` tinyint(4) NOT NULL,
  PRIMARY KEY  (`users_info_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='redSHOP Users Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_users_info`
--

LOCK TABLES `japzd_redshop_users_info` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_users_info` DISABLE KEYS */;
INSERT INTO `japzd_redshop_users_info` VALUES (1,822,'greg@solutionsresource.com','BT','Super','User','',0,1,'','0','0','','0','0',0,0,0,'','','','','',0,0);
/*!40000 ALTER TABLE `japzd_redshop_users_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_wishlist`
--

DROP TABLE IF EXISTS `japzd_redshop_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_wishlist` (
  `wishlist_id` int(11) NOT NULL auto_increment,
  `wishlist_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  `cdate` double NOT NULL,
  PRIMARY KEY  (`wishlist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP wishlist';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_wishlist`
--

LOCK TABLES `japzd_redshop_wishlist` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_wishlist_product`
--

DROP TABLE IF EXISTS `japzd_redshop_wishlist_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_wishlist_product` (
  `wishlist_product_id` int(11) NOT NULL auto_increment,
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cdate` int(11) NOT NULL,
  PRIMARY KEY  (`wishlist_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Wishlist Product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_wishlist_product`
--

LOCK TABLES `japzd_redshop_wishlist_product` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_wishlist_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_wishlist_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_wishlist_userfielddata`
--

DROP TABLE IF EXISTS `japzd_redshop_wishlist_userfielddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_wishlist_userfielddata` (
  `fieldid` int(11) NOT NULL auto_increment,
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `userfielddata` text NOT NULL,
  PRIMARY KEY  (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Wishlist Product userfielddata';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_wishlist_userfielddata`
--

LOCK TABLES `japzd_redshop_wishlist_userfielddata` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_wishlist_userfielddata` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_wishlist_userfielddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_wrapper`
--

DROP TABLE IF EXISTS `japzd_redshop_wrapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_wrapper` (
  `wrapper_id` int(11) NOT NULL auto_increment,
  `product_id` varchar(255) NOT NULL,
  `category_id` varchar(250) NOT NULL,
  `wrapper_name` varchar(255) NOT NULL,
  `wrapper_price` double NOT NULL,
  `wrapper_image` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `wrapper_use_to_all` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY  (`wrapper_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Wrapper';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_wrapper`
--

LOCK TABLES `japzd_redshop_wrapper` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_wrapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_wrapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_xml_export`
--

DROP TABLE IF EXISTS `japzd_redshop_xml_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_xml_export` (
  `xmlexport_id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) NOT NULL,
  `display_filename` varchar(255) NOT NULL,
  `parent_name` varchar(255) NOT NULL,
  `section_type` varchar(255) NOT NULL,
  `auto_sync` tinyint(4) NOT NULL,
  `sync_on_request` tinyint(4) NOT NULL,
  `auto_sync_interval` int(11) NOT NULL,
  `xmlexport_date` int(11) NOT NULL,
  `xmlexport_filetag` text NOT NULL,
  `element_name` varchar(255) default NULL,
  `published` tinyint(4) NOT NULL,
  `use_to_all_users` tinyint(4) NOT NULL,
  `xmlexport_billingtag` text NOT NULL,
  `billing_element_name` varchar(255) NOT NULL,
  `xmlexport_shippingtag` text NOT NULL,
  `shipping_element_name` varchar(255) NOT NULL,
  `xmlexport_orderitemtag` text NOT NULL,
  `orderitem_element_name` varchar(255) NOT NULL,
  `xmlexport_stocktag` text NOT NULL,
  `stock_element_name` varchar(255) NOT NULL,
  `xmlexport_prdextrafieldtag` text NOT NULL,
  `prdextrafield_element_name` varchar(255) NOT NULL,
  `xmlexport_on_category` text NOT NULL,
  PRIMARY KEY  (`xmlexport_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Export';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_xml_export`
--

LOCK TABLES `japzd_redshop_xml_export` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_xml_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_xml_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_xml_export_ipaddress`
--

DROP TABLE IF EXISTS `japzd_redshop_xml_export_ipaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_xml_export_ipaddress` (
  `xmlexport_ip_id` int(11) NOT NULL auto_increment,
  `xmlexport_id` int(11) NOT NULL,
  `access_ipaddress` varchar(255) NOT NULL,
  PRIMARY KEY  (`xmlexport_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Export Ip Address';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_xml_export_ipaddress`
--

LOCK TABLES `japzd_redshop_xml_export_ipaddress` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_xml_export_ipaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_xml_export_ipaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_xml_export_log`
--

DROP TABLE IF EXISTS `japzd_redshop_xml_export_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_xml_export_log` (
  `xmlexport_log_id` int(11) NOT NULL auto_increment,
  `xmlexport_id` int(11) NOT NULL,
  `xmlexport_filename` varchar(255) NOT NULL,
  `xmlexport_date` int(11) NOT NULL,
  PRIMARY KEY  (`xmlexport_log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Export log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_xml_export_log`
--

LOCK TABLES `japzd_redshop_xml_export_log` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_xml_export_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_xml_export_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_xml_import`
--

DROP TABLE IF EXISTS `japzd_redshop_xml_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_xml_import` (
  `xmlimport_id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) NOT NULL,
  `display_filename` varchar(255) NOT NULL,
  `xmlimport_url` varchar(255) NOT NULL,
  `section_type` varchar(255) NOT NULL,
  `auto_sync` tinyint(4) NOT NULL,
  `sync_on_request` tinyint(4) NOT NULL,
  `auto_sync_interval` int(11) NOT NULL,
  `override_existing` tinyint(4) NOT NULL,
  `add_prefix_for_existing` varchar(50) NOT NULL,
  `xmlimport_date` int(11) NOT NULL,
  `xmlimport_filetag` text NOT NULL,
  `xmlimport_billingtag` text NOT NULL,
  `xmlimport_shippingtag` text NOT NULL,
  `xmlimport_orderitemtag` text NOT NULL,
  `xmlimport_stocktag` text NOT NULL,
  `xmlimport_prdextrafieldtag` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `element_name` varchar(255) NOT NULL,
  `billing_element_name` varchar(255) NOT NULL,
  `shipping_element_name` varchar(255) NOT NULL,
  `orderitem_element_name` varchar(255) NOT NULL,
  `stock_element_name` varchar(255) NOT NULL,
  `prdextrafield_element_name` varchar(255) NOT NULL,
  `xmlexport_billingtag` text NOT NULL,
  `xmlexport_shippingtag` text NOT NULL,
  `xmlexport_orderitemtag` text NOT NULL,
  PRIMARY KEY  (`xmlimport_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Import';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_xml_import`
--

LOCK TABLES `japzd_redshop_xml_import` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_xml_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_xml_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_xml_import_log`
--

DROP TABLE IF EXISTS `japzd_redshop_xml_import_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_xml_import_log` (
  `xmlimport_log_id` int(11) NOT NULL auto_increment,
  `xmlimport_id` int(11) NOT NULL,
  `xmlimport_filename` varchar(255) NOT NULL,
  `xmlimport_date` int(11) NOT NULL,
  PRIMARY KEY  (`xmlimport_log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Import log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_xml_import_log`
--

LOCK TABLES `japzd_redshop_xml_import_log` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_xml_import_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_xml_import_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_redshop_zipcode`
--

DROP TABLE IF EXISTS `japzd_redshop_zipcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_redshop_zipcode` (
  `zipcode_id` int(11) NOT NULL auto_increment,
  `country_code` varchar(10) NOT NULL default '',
  `state_code` varchar(10) NOT NULL default '',
  `city_name` varchar(64) default NULL,
  `zipcode` varchar(255) default NULL,
  `zipcodeto` varchar(255) default NULL,
  PRIMARY KEY  (`zipcode_id`),
  KEY `zipcode` (`zipcode`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_redshop_zipcode`
--

LOCK TABLES `japzd_redshop_zipcode` WRITE;
/*!40000 ALTER TABLE `japzd_redshop_zipcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_redshop_zipcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_schemas`
--

DROP TABLE IF EXISTS `japzd_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_schemas`
--

LOCK TABLES `japzd_schemas` WRITE;
/*!40000 ALTER TABLE `japzd_schemas` DISABLE KEYS */;
INSERT INTO `japzd_schemas` VALUES (700,'2.5.8');
/*!40000 ALTER TABLE `japzd_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_session`
--

DROP TABLE IF EXISTS `japzd_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_session` (
  `session_id` varchar(200) NOT NULL default '',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `guest` tinyint(4) unsigned default '1',
  `time` varchar(14) default '',
  `data` mediumtext,
  `userid` int(11) default '0',
  `username` varchar(150) default '',
  `usertype` varchar(50) default '',
  PRIMARY KEY  (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_session`
--

LOCK TABLES `japzd_session` WRITE;
/*!40000 ALTER TABLE `japzd_session` DISABLE KEYS */;
INSERT INTO `japzd_session` VALUES ('30sml1a5c3hdl51kobtbvsk433',0,0,'1355988387','__default|a:24:{s:15:\"session.counter\";i:117;s:19:\"session.timer.start\";i:1355970873;s:18:\"session.timer.last\";i:1355988324;s:17:\"session.timer.now\";i:1355988387;s:22:\"session.client.browser\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":1:{s:5:\"users\";O:8:\"stdClass\":1:{s:5:\"login\";O:8:\"stdClass\":1:{s:4:\"form\";O:8:\"stdClass\":1:{s:4:\"data\";a:1:{s:6:\"return\";s:39:\"index.php?option=com_users&view=profile\";}}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";s:3:\"823\";s:4:\"name\";s:4:\"greg\";s:8:\"username\";s:6:\"grg021\";s:5:\"email\";s:20:\"greg.hermo@gmail.com\";s:8:\"password\";s:65:\"5f8f75a29d2f3e55590bc6ae21c2d69d:mehIaEma7LnWRu2qY5PprQHt1fisgwMw\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"0\";s:12:\"registerDate\";s:19:\"2012-12-20 02:12:11\";s:13:\"lastvisitDate\";s:19:\"2012-12-20 02:25:28\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:2;s:1:\"2\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:2;}s:14:\"\0*\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:2;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:19:\"js_id_currency_orig\";s:1:\"2\";s:14:\"js_id_currency\";s:1:\"2\";s:19:\"js_history_sel_lang\";s:5:\"en-GB\";s:15:\"js_prev_user_id\";s:3:\"823\";s:22:\"jshop_checked_language\";a:1:{i:0;s:5:\"en-GB\";}s:6:\"return\";s:48:\"L2luZGV4LnBocC9wcm9kdWN0cy9jaGVja291dC9zdGVwMg==\";s:13:\"session.token\";s:32:\"817c81b0af9eb82989346972fa7f9121\";s:26:\"jshop_end_page_buy_product\";s:38:\"/index.php/products/product/view/15/12\";s:18:\"product_back_value\";a:0:{}s:19:\"js_update_all_price\";i:0;s:8:\"wishlist\";s:260:\"O:9:\"jshopCart\":10:{s:9:\"type_cart\";s:8:\"wishlist\";s:8:\"products\";a:0:{}s:13:\"count_product\";i:0;s:13:\"price_product\";i:0;s:4:\"summ\";i:0;s:9:\"rabatt_id\";i:0;s:12:\"rabatt_value\";i:0;s:11:\"rabatt_type\";i:0;s:11:\"rabatt_summ\";d:0;s:20:\"price_product_brutto\";i:0;}\";s:28:\"jshop_price_payment_tax_list\";a:1:{s:5:\"19.00\";d:0;}s:32:\"jshop_price_payment_for_tax_list\";a:1:{s:5:\"19.00\";d:0;}s:19:\"jshop_price_package\";i:0;s:9:\"pm_method\";s:0:\"\";s:20:\"show_pay_without_reg\";i:0;s:27:\"jshop_end_page_list_product\";s:19:\"/index.php/products\";}',823,'grg021',''),('453546a523227f298f6b847094872ee6',0,1,'1355987806','__default|a:9:{s:15:\"session.counter\";i:20;s:19:\"session.timer.start\";i:1355971844;s:18:\"session.timer.last\";i:1355986966;s:17:\"session.timer.now\";i:1355987806;s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:19:\"js_id_currency_orig\";s:1:\"2\";s:14:\"js_id_currency\";s:1:\"2\";}',0,'',''),('dc95335960694b3a9c876b662b7419a4',1,0,'1355988383','__default|a:8:{s:15:\"session.counter\";i:16;s:19:\"session.timer.start\";i:1355988329;s:18:\"session.timer.last\";i:1355988383;s:17:\"session.timer.now\";i:1355988383;s:22:\"session.client.browser\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.101 Safari/537.11\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":3:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":2:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";}s:9:\"com_menus\";O:8:\"stdClass\":2:{s:5:\"items\";O:8:\"stdClass\":2:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}s:10:\"limitstart\";i:0;}s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":4:{s:2:\"id\";a:1:{i:0;i:101;}s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"822\";s:4:\"name\";s:4:\"John\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:26:\"greg@solutionsresource.com\";s:8:\"password\";s:65:\"c720c5eb8853410f3d309b62383fcefe:0Qg2PZ8TvRgnArvpzbd0CCfifCoB0oIG\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2012-11-30 03:49:09\";s:13:\"lastvisitDate\";s:19:\"2012-12-20 04:13:34\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:92:\"{\"editor\":\"\",\"timezone\":\"\",\"language\":\"\",\"admin_style\":\"\",\"admin_language\":\"\",\"helpsite\":\"\"}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":6:{s:6:\"editor\";s:0:\"\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:11:\"admin_style\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"91cecba9d4e983d63a9d6b3bf93f5a74\";}__wf|a:1:{s:13:\"session.token\";s:32:\"b584e8cea1d6fe69033867c4f63cfc52\";}',822,'admin','');
/*!40000 ALTER TABLE `japzd_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_template_styles`
--

DROP TABLE IF EXISTS `japzd_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_template_styles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` varchar(50) NOT NULL default '',
  `client_id` tinyint(1) unsigned NOT NULL default '0',
  `home` char(7) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_template_styles`
--

LOCK TABLES `japzd_template_styles` WRITE;
/*!40000 ALTER TABLE `japzd_template_styles` DISABLE KEYS */;
INSERT INTO `japzd_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}'),(7,'yoo_master',0,'0','yoo_master - Default','{\"config\":\"\"}'),(8,'etrc_template',0,'1','etrc_template - Default','{\"config\":\"\"}');
/*!40000 ALTER TABLE `japzd_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_update_categories`
--

DROP TABLE IF EXISTS `japzd_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_update_categories` (
  `categoryid` int(11) NOT NULL auto_increment,
  `name` varchar(20) default '',
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `updatesite` int(11) default '0',
  PRIMARY KEY  (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_update_categories`
--

LOCK TABLES `japzd_update_categories` WRITE;
/*!40000 ALTER TABLE `japzd_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_update_sites`
--

DROP TABLE IF EXISTS `japzd_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_update_sites` (
  `update_site_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `type` varchar(20) default '',
  `location` text NOT NULL,
  `enabled` int(11) default '0',
  `last_check_timestamp` bigint(20) default '0',
  PRIMARY KEY  (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_update_sites`
--

LOCK TABLES `japzd_update_sites` WRITE;
/*!40000 ALTER TABLE `japzd_update_sites` DISABLE KEYS */;
INSERT INTO `japzd_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1355988336),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1355988336),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1355988336),(4,'JCE Editor Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        ',1,1355988336);
/*!40000 ALTER TABLE `japzd_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_update_sites_extensions`
--

DROP TABLE IF EXISTS `japzd_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL default '0',
  `extension_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_update_sites_extensions`
--

LOCK TABLES `japzd_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `japzd_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `japzd_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(4,10009);
/*!40000 ALTER TABLE `japzd_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_updates`
--

DROP TABLE IF EXISTS `japzd_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_updates` (
  `update_id` int(11) NOT NULL auto_increment,
  `update_site_id` int(11) default '0',
  `extension_id` int(11) default '0',
  `categoryid` int(11) default '0',
  `name` varchar(100) default '',
  `description` text NOT NULL,
  `element` varchar(100) default '',
  `type` varchar(20) default '',
  `folder` varchar(20) default '',
  `client_id` tinyint(3) default '0',
  `version` varchar(10) default '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY  (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_updates`
--

LOCK TABLES `japzd_updates` WRITE;
/*!40000 ALTER TABLE `japzd_updates` DISABLE KEYS */;
INSERT INTO `japzd_updates` VALUES (1,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(2,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),(3,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(4,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(5,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),(6,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(7,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(8,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(9,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(10,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/tr-TR_details.xml',''),(11,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/uk-UA_details.xml',''),(12,3,0,0,'Indonesian','','pkg_id-ID','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(13,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(14,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),(15,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(16,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(17,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.5.1','','http://update.joomla.org/language/details/ro-RO_details.xml',''),(18,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(19,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(20,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(21,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(22,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(23,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.8.2','','http://update.joomla.org/language/details/de-DE_details.xml',''),(24,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(25,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),(26,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/en-US_details.xml',''),(27,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(28,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),(29,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),(30,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(31,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),(32,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(33,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(34,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.8.4','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(35,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),(36,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),(37,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.6.2','','http://update.joomla.org/language/details/af-ZA_details.xml',''),(38,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(39,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),(40,3,0,0,'Esperanto','','pkg_eo-XX','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml',''),(41,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.8.2','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(42,3,0,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-BR_details.xml',''),(43,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(44,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),(45,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),(46,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(47,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),(48,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),(49,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),(50,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(51,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),(52,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(53,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),(54,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),(55,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ko-KR_details.xml',''),(56,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),(57,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),(58,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.8.3','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(59,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(60,4,10009,0,'JCE Editor','','com_jce','component','',1,'2.3.0','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-230-released?category_id=32'),(61,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(62,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(63,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(64,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(65,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(66,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(67,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(68,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(69,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(70,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(71,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(72,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(73,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(74,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(75,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(76,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(77,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(78,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(79,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(80,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(81,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(82,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(83,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(84,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(85,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(86,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(87,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(88,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(89,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(90,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(91,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(92,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(93,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(94,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(95,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(96,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(97,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(98,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(99,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(100,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32'),(101,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(102,4,0,0,'JCE Editor','','com_jce','component','',1,'2.3.1','','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        /extension.xml','http://www.joomlacontenteditor.net/news/item/jce-231-released?category_id=32');
/*!40000 ALTER TABLE `japzd_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_user_notes`
--

DROP TABLE IF EXISTS `japzd_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_user_notes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_user_notes`
--

LOCK TABLES `japzd_user_notes` WRITE;
/*!40000 ALTER TABLE `japzd_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_user_profiles`
--

DROP TABLE IF EXISTS `japzd_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_user_profiles`
--

LOCK TABLES `japzd_user_profiles` WRITE;
/*!40000 ALTER TABLE `japzd_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_user_usergroup_map`
--

DROP TABLE IF EXISTS `japzd_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY  (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_user_usergroup_map`
--

LOCK TABLES `japzd_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `japzd_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `japzd_user_usergroup_map` VALUES (822,8),(823,2);
/*!40000 ALTER TABLE `japzd_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_usergroups`
--

DROP TABLE IF EXISTS `japzd_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_usergroups` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` USING BTREE (`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_usergroups`
--

LOCK TABLES `japzd_usergroups` WRITE;
/*!40000 ALTER TABLE `japzd_usergroups` DISABLE KEYS */;
INSERT INTO `japzd_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `japzd_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_users`
--

DROP TABLE IF EXISTS `japzd_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL default '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=824 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_users`
--

LOCK TABLES `japzd_users` WRITE;
/*!40000 ALTER TABLE `japzd_users` DISABLE KEYS */;
INSERT INTO `japzd_users` VALUES (822,'John','admin','greg@solutionsresource.com','c720c5eb8853410f3d309b62383fcefe:0Qg2PZ8TvRgnArvpzbd0CCfifCoB0oIG','deprecated',0,1,'2012-11-30 03:49:09','2012-12-20 07:25:33','0','{\"editor\":\"\",\"timezone\":\"\",\"language\":\"\",\"admin_style\":\"\",\"admin_language\":\"\",\"helpsite\":\"\"}','0000-00-00 00:00:00',0),(823,'greg','grg021','greg.hermo@gmail.com','5f8f75a29d2f3e55590bc6ae21c2d69d:mehIaEma7LnWRu2qY5PprQHt1fisgwMw','',0,0,'2012-12-20 02:12:11','2012-12-20 02:25:28','','{}','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `japzd_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_viewlevels`
--

DROP TABLE IF EXISTS `japzd_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_viewlevels` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_viewlevels`
--

LOCK TABLES `japzd_viewlevels` WRITE;
/*!40000 ALTER TABLE `japzd_viewlevels` DISABLE KEYS */;
INSERT INTO `japzd_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `japzd_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_weblinks`
--

DROP TABLE IF EXISTS `japzd_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_weblinks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `access` int(11) NOT NULL default '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_weblinks`
--

LOCK TABLES `japzd_weblinks` WRITE;
/*!40000 ALTER TABLE `japzd_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `japzd_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_wf_profiles`
--

DROP TABLE IF EXISTS `japzd_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_wf_profiles` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_wf_profiles`
--

LOCK TABLES `japzd_wf_profiles` WRITE;
/*!40000 ALTER TABLE `japzd_wf_profiles` DISABLE KEYS */;
INSERT INTO `japzd_wf_profiles` VALUES (1,'Default','Default Profile for all users','','3,4,5,6,8,7','',0,'','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',1,1,0,'0000-00-00 00:00:00',''),(2,'Front End','Sample Front-end Profile','','3,4,5','',1,'','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',0,2,0,'0000-00-00 00:00:00',''),(3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}');
/*!40000 ALTER TABLE `japzd_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `japzd_widgetkit_widget`
--

DROP TABLE IF EXISTS `japzd_widgetkit_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `japzd_widgetkit_widget` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japzd_widgetkit_widget`
--

LOCK TABLES `japzd_widgetkit_widget` WRITE;
/*!40000 ALTER TABLE `japzd_widgetkit_widget` DISABLE KEYS */;
INSERT INTO `japzd_widgetkit_widget` VALUES (1,'map','default','TRC','{\"type\":\"map\",\"id\":1,\"name\":\"TRC\",\"settings\":{\"style\":\"default\",\"width\":\"auto\",\"height\":250,\"mapTypeId\":\"roadmap\",\"zoom\":15,\"mapCtrl\":0,\"typeCtrl\":0,\"popup\":1,\"directions\":0,\"unitSystem\":0,\"clusterMarker\":0,\"styler_invert_lightness\":0,\"styler_hue\":\"\",\"styler_saturation\":0,\"styler_lightness\":0,\"styler_gamma\":0},\"style\":\"default\",\"items\":{\"50ca9afa9ecf9\":{\"title\":\"TRC\",\"lat\":\"14.560896316729409\",\"lng\":\"121.04272168289492\",\"icon\":\"red-dot\",\"popup\":\"<div>Jacinta Bldg. 2, Guadalupe Nuevo,\\u00a0<\\/div>\\r\\n<div>EDSA, Makati City<\\/div>\"}}}','2012-12-14 03:23:55','2012-12-14 07:11:12');
/*!40000 ALTER TABLE `japzd_widgetkit_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_assets`
--

DROP TABLE IF EXISTS `vwgp3_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_assets` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL default '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_assets`
--

LOCK TABLES `vwgp3_assets` WRITE;
/*!40000 ALTER TABLE `vwgp3_assets` DISABLE KEYS */;
INSERT INTO `vwgp3_assets` VALUES (1,0,1,67,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,20,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,21,22,1,'com_cpanel','com_cpanel','{}'),(10,1,23,24,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,25,26,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,27,28,1,'com_login','com_login','{}'),(13,1,29,30,1,'com_mailto','com_mailto','{}'),(14,1,31,32,1,'com_massmail','com_massmail','{}'),(15,1,33,34,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,35,36,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,37,38,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,39,40,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,41,44,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,45,46,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,47,48,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,49,50,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,51,52,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,53,56,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,57,60,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,61,62,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,42,43,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,58,59,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,54,55,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,63,64,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,65,66,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
/*!40000 ALTER TABLE `vwgp3_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_associations`
--

DROP TABLE IF EXISTS `vwgp3_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY  (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_associations`
--

LOCK TABLES `vwgp3_associations` WRITE;
/*!40000 ALTER TABLE `vwgp3_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_banner_clients`
--

DROP TABLE IF EXISTS `vwgp3_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_banner_clients` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_banner_clients`
--

LOCK TABLES `vwgp3_banner_clients` WRITE;
/*!40000 ALTER TABLE `vwgp3_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_banner_tracks`
--

DROP TABLE IF EXISTS `vwgp3_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_banner_tracks`
--

LOCK TABLES `vwgp3_banner_tracks` WRITE;
/*!40000 ALTER TABLE `vwgp3_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_banners`
--

DROP TABLE IF EXISTS `vwgp3_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_banners` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `clickurl` varchar(200) NOT NULL default '',
  `state` tinyint(3) NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `reset` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `language` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_banners`
--

LOCK TABLES `vwgp3_banners` WRITE;
/*!40000 ALTER TABLE `vwgp3_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_categories`
--

DROP TABLE IF EXISTS `vwgp3_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_categories` (
  `id` int(11) NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `extension` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL default '0',
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_categories`
--

LOCK TABLES `vwgp3_categories` WRITE;
/*!40000 ALTER TABLE `vwgp3_categories` DISABLE KEYS */;
INSERT INTO `vwgp3_categories` VALUES (1,0,0,0,13,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*');
/*!40000 ALTER TABLE `vwgp3_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_contact_details`
--

DROP TABLE IF EXISTS `vwgp3_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_contact_details`
--

LOCK TABLES `vwgp3_contact_details` WRITE;
/*!40000 ALTER TABLE `vwgp3_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_content`
--

DROP TABLE IF EXISTS `vwgp3_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `title_alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL default '1',
  `parentid` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_content`
--

LOCK TABLES `vwgp3_content` WRITE;
/*!40000 ALTER TABLE `vwgp3_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_content_frontpage`
--

DROP TABLE IF EXISTS `vwgp3_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_content_frontpage`
--

LOCK TABLES `vwgp3_content_frontpage` WRITE;
/*!40000 ALTER TABLE `vwgp3_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_content_rating`
--

DROP TABLE IF EXISTS `vwgp3_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(10) unsigned NOT NULL default '0',
  `rating_count` int(10) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_content_rating`
--

LOCK TABLES `vwgp3_content_rating` WRITE;
/*!40000 ALTER TABLE `vwgp3_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_core_log_searches`
--

DROP TABLE IF EXISTS `vwgp3_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_core_log_searches`
--

LOCK TABLES `vwgp3_core_log_searches` WRITE;
/*!40000 ALTER TABLE `vwgp3_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_extensions`
--

DROP TABLE IF EXISTS `vwgp3_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_extensions` (
  `extension_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL default '1',
  `access` int(10) unsigned NOT NULL default '1',
  `protected` tinyint(3) NOT NULL default '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_extensions`
--

LOCK TABLES `vwgp3_extensions` WRITE;
/*!40000 ALTER TABLE `vwgp3_extensions` DISABLE KEYS */;
INSERT INTO `vwgp3_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2012\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"November 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.8\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `vwgp3_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_filters`
--

DROP TABLE IF EXISTS `vwgp3_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL default '1',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY  (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_filters`
--

LOCK TABLES `vwgp3_finder_filters` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links`
--

DROP TABLE IF EXISTS `vwgp3_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links` (
  `link_id` int(10) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `indexdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `md5sum` varchar(32) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `state` int(5) default '1',
  `access` int(5) default '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL default '0',
  `sale_price` double unsigned NOT NULL default '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY  (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links`
--

LOCK TABLES `vwgp3_finder_links` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms0`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms0`
--

LOCK TABLES `vwgp3_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms1`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms1`
--

LOCK TABLES `vwgp3_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms2`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms2`
--

LOCK TABLES `vwgp3_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms3`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms3`
--

LOCK TABLES `vwgp3_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms4`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms4`
--

LOCK TABLES `vwgp3_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms5`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms5`
--

LOCK TABLES `vwgp3_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms6`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms6`
--

LOCK TABLES `vwgp3_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms7`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms7`
--

LOCK TABLES `vwgp3_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms8`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms8`
--

LOCK TABLES `vwgp3_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_terms9`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_terms9`
--

LOCK TABLES `vwgp3_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_termsa`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_termsa`
--

LOCK TABLES `vwgp3_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_termsb`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_termsb`
--

LOCK TABLES `vwgp3_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_termsc`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_termsc`
--

LOCK TABLES `vwgp3_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_termsd`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_termsd`
--

LOCK TABLES `vwgp3_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_termse`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_termse`
--

LOCK TABLES `vwgp3_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_links_termsf`
--

DROP TABLE IF EXISTS `vwgp3_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_links_termsf`
--

LOCK TABLES `vwgp3_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_taxonomy`
--

DROP TABLE IF EXISTS `vwgp3_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `access` tinyint(1) unsigned NOT NULL default '0',
  `ordering` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_taxonomy`
--

LOCK TABLES `vwgp3_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `vwgp3_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `vwgp3_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `vwgp3_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_taxonomy_map`
--

LOCK TABLES `vwgp3_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_terms`
--

DROP TABLE IF EXISTS `vwgp3_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_terms` (
  `term_id` int(10) unsigned NOT NULL auto_increment,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_terms`
--

LOCK TABLES `vwgp3_finder_terms` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_terms_common`
--

DROP TABLE IF EXISTS `vwgp3_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_terms_common`
--

LOCK TABLES `vwgp3_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_terms_common` DISABLE KEYS */;
INSERT INTO `vwgp3_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `vwgp3_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_tokens`
--

DROP TABLE IF EXISTS `vwgp3_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '1',
  `context` tinyint(1) unsigned NOT NULL default '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_tokens`
--

LOCK TABLES `vwgp3_finder_tokens` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `vwgp3_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL default '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_tokens_aggregate`
--

LOCK TABLES `vwgp3_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_finder_types`
--

DROP TABLE IF EXISTS `vwgp3_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_finder_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_finder_types`
--

LOCK TABLES `vwgp3_finder_types` WRITE;
/*!40000 ALTER TABLE `vwgp3_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_languages`
--

DROP TABLE IF EXISTS `vwgp3_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_languages` (
  `lang_id` int(11) unsigned NOT NULL auto_increment,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL default '',
  `published` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_languages`
--

LOCK TABLES `vwgp3_languages` WRITE;
/*!40000 ALTER TABLE `vwgp3_languages` DISABLE KEYS */;
INSERT INTO `vwgp3_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `vwgp3_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_menu`
--

DROP TABLE IF EXISTS `vwgp3_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL default '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL default '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL default '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL default '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL default '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL default '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL default '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL default '',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_menu`
--

LOCK TABLES `vwgp3_menu` WRITE;
/*!40000 ALTER TABLE `vwgp3_menu` DISABLE KEYS */;
INSERT INTO `vwgp3_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,43,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"multi_column_order\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_noauth\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',29,30,1,'*',0);
/*!40000 ALTER TABLE `vwgp3_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_menu_types`
--

DROP TABLE IF EXISTS `vwgp3_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_menu_types`
--

LOCK TABLES `vwgp3_menu_types` WRITE;
/*!40000 ALTER TABLE `vwgp3_menu_types` DISABLE KEYS */;
INSERT INTO `vwgp3_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `vwgp3_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_messages`
--

DROP TABLE IF EXISTS `vwgp3_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` tinyint(3) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL default '0',
  `priority` tinyint(1) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_messages`
--

LOCK TABLES `vwgp3_messages` WRITE;
/*!40000 ALTER TABLE `vwgp3_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_messages_cfg`
--

DROP TABLE IF EXISTS `vwgp3_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_messages_cfg`
--

LOCK TABLES `vwgp3_messages_cfg` WRITE;
/*!40000 ALTER TABLE `vwgp3_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_modules`
--

DROP TABLE IF EXISTS `vwgp3_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) NOT NULL default '',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_modules`
--

LOCK TABLES `vwgp3_modules` WRITE;
/*!40000 ALTER TABLE `vwgp3_modules` DISABLE KEYS */;
INSERT INTO `vwgp3_modules` VALUES (1,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
/*!40000 ALTER TABLE `vwgp3_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_modules_menu`
--

DROP TABLE IF EXISTS `vwgp3_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_modules_menu`
--

LOCK TABLES `vwgp3_modules_menu` WRITE;
/*!40000 ALTER TABLE `vwgp3_modules_menu` DISABLE KEYS */;
INSERT INTO `vwgp3_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0);
/*!40000 ALTER TABLE `vwgp3_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_newsfeeds`
--

DROP TABLE IF EXISTS `vwgp3_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `link` varchar(200) NOT NULL default '',
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(10) unsigned NOT NULL default '1',
  `cache_time` int(10) unsigned NOT NULL default '3600',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL default '',
  `params` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_newsfeeds`
--

LOCK TABLES `vwgp3_newsfeeds` WRITE;
/*!40000 ALTER TABLE `vwgp3_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_overrider`
--

DROP TABLE IF EXISTS `vwgp3_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_overrider` (
  `id` int(10) NOT NULL auto_increment COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_overrider`
--

LOCK TABLES `vwgp3_overrider` WRITE;
/*!40000 ALTER TABLE `vwgp3_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_redirect_links`
--

DROP TABLE IF EXISTS `vwgp3_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_redirect_links` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_redirect_links`
--

LOCK TABLES `vwgp3_redirect_links` WRITE;
/*!40000 ALTER TABLE `vwgp3_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_schemas`
--

DROP TABLE IF EXISTS `vwgp3_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_schemas`
--

LOCK TABLES `vwgp3_schemas` WRITE;
/*!40000 ALTER TABLE `vwgp3_schemas` DISABLE KEYS */;
INSERT INTO `vwgp3_schemas` VALUES (700,'2.5.8');
/*!40000 ALTER TABLE `vwgp3_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_session`
--

DROP TABLE IF EXISTS `vwgp3_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_session` (
  `session_id` varchar(200) NOT NULL default '',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `guest` tinyint(4) unsigned default '1',
  `time` varchar(14) default '',
  `data` mediumtext,
  `userid` int(11) default '0',
  `username` varchar(150) default '',
  `usertype` varchar(50) default '',
  PRIMARY KEY  (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_session`
--

LOCK TABLES `vwgp3_session` WRITE;
/*!40000 ALTER TABLE `vwgp3_session` DISABLE KEYS */;
INSERT INTO `vwgp3_session` VALUES ('0dpghtd415ngbahsvqc4bjlv94',1,1,'1354246274','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1354246274;s:18:\"session.timer.last\";i:1354246274;s:17:\"session.timer.now\";i:1354246274;s:22:\"session.client.browser\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";N;s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"e458200dd5d79ca723aaa8af26928256\";}',0,'',''),('mo15s5cdvdppu0rqmcnfbomjs6',0,1,'1354246274','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1354246274;s:18:\"session.timer.last\";i:1354246274;s:17:\"session.timer.now\";i:1354246274;s:22:\"session.client.browser\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"b564a56cd9998cc4dec8bcbdcc96ad43\";}',0,'','');
/*!40000 ALTER TABLE `vwgp3_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_template_styles`
--

DROP TABLE IF EXISTS `vwgp3_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_template_styles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` varchar(50) NOT NULL default '',
  `client_id` tinyint(1) unsigned NOT NULL default '0',
  `home` char(7) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_template_styles`
--

LOCK TABLES `vwgp3_template_styles` WRITE;
/*!40000 ALTER TABLE `vwgp3_template_styles` DISABLE KEYS */;
INSERT INTO `vwgp3_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'1','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}');
/*!40000 ALTER TABLE `vwgp3_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_update_categories`
--

DROP TABLE IF EXISTS `vwgp3_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_update_categories` (
  `categoryid` int(11) NOT NULL auto_increment,
  `name` varchar(20) default '',
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `updatesite` int(11) default '0',
  PRIMARY KEY  (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_update_categories`
--

LOCK TABLES `vwgp3_update_categories` WRITE;
/*!40000 ALTER TABLE `vwgp3_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_update_sites`
--

DROP TABLE IF EXISTS `vwgp3_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_update_sites` (
  `update_site_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `type` varchar(20) default '',
  `location` text NOT NULL,
  `enabled` int(11) default '0',
  `last_check_timestamp` bigint(20) default '0',
  PRIMARY KEY  (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_update_sites`
--

LOCK TABLES `vwgp3_update_sites` WRITE;
/*!40000 ALTER TABLE `vwgp3_update_sites` DISABLE KEYS */;
INSERT INTO `vwgp3_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,0),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,0),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,0);
/*!40000 ALTER TABLE `vwgp3_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_update_sites_extensions`
--

DROP TABLE IF EXISTS `vwgp3_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL default '0',
  `extension_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_update_sites_extensions`
--

LOCK TABLES `vwgp3_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `vwgp3_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `vwgp3_update_sites_extensions` VALUES (1,700),(2,700),(3,600);
/*!40000 ALTER TABLE `vwgp3_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_updates`
--

DROP TABLE IF EXISTS `vwgp3_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_updates` (
  `update_id` int(11) NOT NULL auto_increment,
  `update_site_id` int(11) default '0',
  `extension_id` int(11) default '0',
  `categoryid` int(11) default '0',
  `name` varchar(100) default '',
  `description` text NOT NULL,
  `element` varchar(100) default '',
  `type` varchar(20) default '',
  `folder` varchar(20) default '',
  `client_id` tinyint(3) default '0',
  `version` varchar(10) default '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY  (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_updates`
--

LOCK TABLES `vwgp3_updates` WRITE;
/*!40000 ALTER TABLE `vwgp3_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_user_notes`
--

DROP TABLE IF EXISTS `vwgp3_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_user_notes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_user_notes`
--

LOCK TABLES `vwgp3_user_notes` WRITE;
/*!40000 ALTER TABLE `vwgp3_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_user_profiles`
--

DROP TABLE IF EXISTS `vwgp3_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_user_profiles`
--

LOCK TABLES `vwgp3_user_profiles` WRITE;
/*!40000 ALTER TABLE `vwgp3_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_user_usergroup_map`
--

DROP TABLE IF EXISTS `vwgp3_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY  (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_user_usergroup_map`
--

LOCK TABLES `vwgp3_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `vwgp3_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `vwgp3_user_usergroup_map` VALUES (541,8);
/*!40000 ALTER TABLE `vwgp3_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_usergroups`
--

DROP TABLE IF EXISTS `vwgp3_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_usergroups` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` USING BTREE (`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_usergroups`
--

LOCK TABLES `vwgp3_usergroups` WRITE;
/*!40000 ALTER TABLE `vwgp3_usergroups` DISABLE KEYS */;
INSERT INTO `vwgp3_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `vwgp3_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_users`
--

DROP TABLE IF EXISTS `vwgp3_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL default '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_users`
--

LOCK TABLES `vwgp3_users` WRITE;
/*!40000 ALTER TABLE `vwgp3_users` DISABLE KEYS */;
INSERT INTO `vwgp3_users` VALUES (541,'Super User','admin','greg@solutionsresource.com','4036abdc1d2932d327b27cefa3bef9ba:6n0XMgNgKQxXsZEhaTG15pnpsgGKlkvT','deprecated',0,1,'2012-11-30 03:31:08','0000-00-00 00:00:00','0','','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `vwgp3_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_viewlevels`
--

DROP TABLE IF EXISTS `vwgp3_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_viewlevels` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_viewlevels`
--

LOCK TABLES `vwgp3_viewlevels` WRITE;
/*!40000 ALTER TABLE `vwgp3_viewlevels` DISABLE KEYS */;
INSERT INTO `vwgp3_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `vwgp3_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgp3_weblinks`
--

DROP TABLE IF EXISTS `vwgp3_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgp3_weblinks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `access` int(11) NOT NULL default '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgp3_weblinks`
--

LOCK TABLES `vwgp3_weblinks` WRITE;
/*!40000 ALTER TABLE `vwgp3_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `vwgp3_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-20 15:30:15
