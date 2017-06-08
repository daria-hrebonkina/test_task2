-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3307
-- Время создания: Июн 08 2017 г., 23:56
-- Версия сервера: 5.5.48
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `parent_id`) VALUES
(1, 'Комедии', 'КомедииКомедииКомедииКомедииКомедии', NULL),
(2, 'Боевики', 'БоевикиБоевикиБоевикиБоевикиБоевики', NULL),
(3, 'Документальные фильмы', 'Документальные фильмы\r\nДокументальные фильмы\r\nДокументальные фильмы\r\nДокументальные фильмы\r\n', NULL),
(4, 'Смешные', 'СмешныеСмешныеСмешныеСмешныеСмешные', 1),
(5, 'Не очень', 'Не оченьНе оченьНе оченьНе оченьНе оченьНе очень', 1),
(6, 'Американские', 'АмериканскиеАмериканскиеАмериканскиеАмериканскиеАмериканские', 4),
(7, 'Французские', 'ФранцузскиеФранцузскиеФранцузскиеФранцузскиеФранцузские', 4),
(8, 'Другие', 'ДругиеДругиеДругиеДругиеДругиеДругие', 4),
(9, 'Голливуд', 'ГолливудГолливудГолливудГолливудГолливудГолливудГолливудГолливуд', 2),
(10, 'Другие', 'ДругиеДругиеДругиеДругиеДругиеДругиеДругие', 2),
(11, 'Про насекомых', 'Про насекомыхПро насекомыхПро насекомыхПро насекомыхПро насекомыхПро насекомыхПро насекомых', 3),
(12, 'Про людей', 'Про людейПро людейПро людейПро людейПро людейПро людейПро людейПро людей', 3),
(13, 'Про пиратов', 'Про пиратовПро пиратовПро пиратовПро пиратовПро пиратовПро пиратовПро пиратовПро пиратов', 3),
(14, 'Правдивые', 'ПравдивыеПравдивыеПравдивыеПравдивыеПравдивыеПравдивыеПравдивыеПравдивые', 13),
(15, 'Сказки', 'СказкиСказкиСказкиСказкиСказкиСказкиСказкиСказкиСказкиСказкиСказкиСказкиСказки', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `film`
--

INSERT INTO `film` (`id`, `title`, `description`, `url`) VALUES
(1, 'Фильм1', 'Фильм1Фильм1Фильм1Фильм1Фильм1Фильм1', 'Фильм1Фильм1Фильм1'),
(2, 'Фильм2', 'Фильм2Фильм2Фильм2Фильм2Фильм2Фильм2Фильм2Фильм2Фильм2', 'Фильм2Фильм2Фильм2Фильм2Фильм2Фильм2'),
(3, 'Фильм3', 'Фильм3Фильм3Фильм3Фильм3Фильм3Фильм3Фильм3', 'Фильм3Фильм3Фильм3Фильм3Фильм3'),
(4, 'Фильм4', 'Фильм4Фильм4Фильм4Фильм4Фильм4Фильм4Фильм4Фильм4Фильм4Фильм4Фильм4', 'Фильм4Фильм4Фильм4Фильм4'),
(5, 'Фильм5', 'Фильм5Фильм5Фильм5Фильм5Фильм5', 'Фильм5Фильм5Фильм5Фильм5Фильм5'),
(6, 'Фильм6', 'Фильм6Фильм6Фильм6Фильм6Фильм6Фильм6Фильм6Фильм6', 'Фильм6Фильм6Фильм6Фильм6'),
(7, 'Фильм7', 'Фильм7Фильм7Фильм7Фильм7', 'Фильм7ммФильм7Фильм7Фильм7'),
(8, 'Фильм8', 'Фильм8Фильм8Фильм8Фильм8Фильм8Фильм8Фильм8', 'Фильм8Фильм8Фильм8Фильм8Фильм8'),
(9, 'Фильм9', 'Фильм9Фильм9Фильм9Фильм9Фильм9Фильм9', 'Фильм9Фильм9Фильм9Фильм9'),
(10, 'Фильм10', 'Фильм10Фильм10Фильм10Фильм10Фильм10Фильм10Фильм10Фильм10', 'Фильм10Фильм10Фильм10Фильм10Фильм10');

-- --------------------------------------------------------

--
-- Структура таблицы `film_category`
--

CREATE TABLE IF NOT EXISTS `film_category` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `film_category`
--

INSERT INTO `film_category` (`id`, `film_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `film_category`
--
ALTER TABLE `film_category`
  ADD PRIMARY KEY (`id`,`film_id`,`category_id`),
  ADD KEY `fk_film_category_film_idx` (`film_id`),
  ADD KEY `fk_film_category_category1_idx` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `film_category`
--
ALTER TABLE `film_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `film_category`
--
ALTER TABLE `film_category`
  ADD CONSTRAINT `fk_film_category_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fk_film_category_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
