-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 05 2014 г., 03:02
-- Версия сервера: 5.5.37
-- Версия PHP: 5.4.6-1ubuntu1.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `banners`
--

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `url` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `type`, `url`, `description`, `content`, `image`) VALUES
(1, 3, '', 'First HTML', '<h1>HTML</h1>\r\n<a href="http://habrahabr.ru/" target="_blank">\r\n<div style="width:100px;height:100px;background-color:yellow;"></div>\r\n</a>', ''),
(2, 3, '', 'Second HTML', '<h1>HTML</h1>\n<a href="http://yiiframework.com" target="_blank"><img src="http://yiiframework.ru/img/logo.png" width="100px" />\n</a>', ''),
(3, 2, '', 'SWF 1', '', 'swf1.swf'),
(4, 2, '', 'Flash 2', '', 'swf2.swf'),
(5, 1, 'http://www.bikewalls.com/', 'Image 1', '', '3750_1024.jpg'),
(6, 1, 'http://isotope.metafizzy.co/', 'Picture 2', '', 'image2.jpg'),
(26, 1, 'https://bitbucket.org/Ordinatuer/banners', '', '', 'Honda_VFR1200F_04_1024x768.jpg'),
(12, 2, '', 'swf 222', '', 'swf222.swf'),
(13, 1, 'http://yandex.ru/', 'webstore goo chr', '', '017-09.jpg'),
(28, 1, 'https://bitbucket.org/Ordinatuer/banners', 'Bitbucket - ... Buell', '', 'Buell_Ulysses_XB12X_2007_06_1024x768.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `banner_show`
--

CREATE TABLE IF NOT EXISTS `banner_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `place_id` int(1) NOT NULL,
  `show` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `property_type` varchar(32) NOT NULL,
  `deal_kind` varchar(32) NOT NULL,
  `deal_direction` varchar(32) NOT NULL,
  `controller` varchar(32) NOT NULL,
  `action` varchar(32) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `banner_show`
--

INSERT INTO `banner_show` (`id`, `banner_id`, `place_id`, `show`, `clicks`, `property_type`, `deal_kind`, `deal_direction`, `controller`, `action`, `update_time`) VALUES
(1, 1, 1, 16, 0, 'residential', '', '', 'ads', '', '2014-05-22 05:58:17'),
(2, 2, 3, 24, 0, 'residential', '', '', 'ads', 'index', '2014-05-22 05:58:14'),
(3, 3, 4, 14, 0, 'residential', '', '', '', '', '2014-05-22 05:58:17'),
(4, 3, 4, 7, 0, 'residential', '', '', '', '', '2014-05-21 08:20:24'),
(5, 5, 4, 7, 1, 'land', '', '', '', 'show', '2014-05-22 05:30:12'),
(6, 6, 3, 6, 1, 'land', 'rent', 'demand', '', '', '2014-05-22 05:30:16'),
(9, 13, 1, 14, 1, 'residential', 'sale', 'offer', 'ads', 'index', '2014-05-22 05:58:14'),
(10, 13, 2, 33, 7, 'residential', 'sale', 'offer', 'ads', 'index', '2014-05-22 05:58:21'),
(14, 2, 1, 10, 0, 'residential', '', '', '', 'index', '2014-05-22 05:58:21'),
(15, 1, 1, 0, 0, '', '', '', '', 'shock', '2014-05-20 14:16:26'),
(16, 5, 4, 5, 1, 'residential', 'sale', 'offer', 'ads', 'Show', '2014-05-22 05:58:21'),
(18, 28, 1, 0, 0, 'residential', 'sale', 'offer', 'ads', 'Index', '2014-05-23 09:54:26');

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `template` varchar(64) NOT NULL,
  `path` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`id`, `type`, `template`, `path`) VALUES
(1, 'Image', 'image', '/banners/images/'),
(2, 'Flash', 'flash', '/banners/swf/'),
(3, 'HTML', 'html', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
