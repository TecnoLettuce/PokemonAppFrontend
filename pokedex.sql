-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 12:33:08
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokedex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type1` varchar(100) NOT NULL,
  `type2` varchar(100) NOT NULL,
  `generation` int(11) NOT NULL,
  `imx_location` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `generation`, `imx_location`) VALUES
(3, 'Bulbasaur', 'Grass', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/001-f.png'),
(4, 'Ivysaur', 'Grass', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/002-f.png'),
(5, 'Venusaur', 'Grass', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/003-f.png'),
(6, 'Charmander', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/004-f.png'),
(7, 'Charmeleon', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/005-f.png'),
(8, 'Charizard', 'Fire', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/006-f.png'),
(9, 'Squirtle', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/007-f.png'),
(10, 'Wartortle', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/008-f.png'),
(11, 'Blastoise', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/009-f.png'),
(12, 'Caterpie', 'Bug', 'Bug', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/010-f.png'),
(13, 'Metapod', 'Bug', 'Bug', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/011-f.png'),
(14, 'Butterfree', 'Bug', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/012-f.png'),
(15, 'Weedle', 'Bug', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/013-f.png'),
(16, 'Kakuna', 'Bug', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/014-f.png'),
(17, 'Beedrill', 'Bug', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/015-f.png'),
(18, 'Pidgey', 'Normal', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/016-f.png'),
(19, 'Pidgeotto', 'Normal', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/017-f.png'),
(20, 'Pidgeot', 'Normal', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/018-f.png'),
(21, 'Ratata', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/019-f.png'),
(23, 'Raticate', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/020-f.png'),
(24, 'Spearow', 'Normal', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/021-f.png'),
(25, 'Fearow', 'Normal', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/022-f.png'),
(26, 'Ekans', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/023-f.png'),
(27, 'Arbok', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/024-f.png'),
(28, 'Pikachu', 'Electric', 'Electric', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/025-f.png'),
(29, 'Raichu', 'Electric', 'Electric', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/026-f.png'),
(30, 'Sandshrew', 'Ground', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/027-f.png'),
(31, 'Sandslash', 'Ground', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/028-f.png'),
(32, 'Nidoran F', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/029.png'),
(33, 'Nidorina', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/030.png'),
(34, 'Nidoqueen', 'Poison', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/031.png'),
(35, 'Nidoran M', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/032.png'),
(36, 'Nidorino', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/033.png'),
(37, 'Nidoking', 'Poison', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/034.png'),
(38, 'Clefairy', 'Fairy', 'Fairy', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/035-f.png'),
(39, 'Clefable', 'Fairy', 'Fairy', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/036-f.png'),
(40, 'Vulpix', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/037-f.png'),
(41, 'Ninetales', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/038-f.png'),
(42, 'Jigglypuff', 'Normal', 'Fairy', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/039-f.png'),
(43, 'Wigglytuff', 'Normal', 'Fairy', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/040-f.png'),
(44, 'Zubat', 'Poison', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/041-f.png'),
(45, 'Golbat', 'Poison', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/042-f.png'),
(46, 'Oddish', 'Grass', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/043-f.png'),
(47, 'Gloom', 'Grass', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/044-f.png'),
(48, 'Vileplume', 'Grass', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/045-f.png'),
(49, 'Paras', 'Bug', 'Grass', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/046-f.png'),
(50, 'Parasect', 'Bug', 'Grass', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/047-f.png'),
(51, 'Venonat', 'Bug', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/048-f.png'),
(52, 'Venomoth', 'Bug', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/049-f.png'),
(53, 'Diglett', 'Ground', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/050-f.png'),
(54, 'Dugtrio', 'Ground', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/051-f.png'),
(55, 'Meowth', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/052-f.png'),
(56, 'Persian', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/053-f.png'),
(57, 'Psyduck', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/054-f.png'),
(58, 'Golduck', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/055-f.png'),
(59, 'Mankey', 'Fight', 'Fight', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/056-f.png'),
(60, 'Primeape', 'Fight', 'Fight', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/057-f.png'),
(61, 'Growlithe', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/058-f.png'),
(62, 'Arcanine', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/059-f.png'),
(63, 'Poliwag', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/060-f.png'),
(64, 'Poliwhirl', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/061-f.png'),
(65, 'Poliwrath', 'Water', 'Fight', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/062-f.png'),
(66, 'Abra', 'psychic', 'psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/063-f.png'),
(67, 'Kadabra', 'psychic', 'psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/064-f.png'),
(68, 'Alakazam', 'psychic', 'psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/065-f.png'),
(69, 'Machop', 'Fight', 'Fight', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/066-f.png'),
(70, 'Machoke', 'Fight', 'Fight', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/067-f.png'),
(71, 'Machamp', 'Fight', 'Fight', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/068-f.png'),
(72, 'Bellsprout', 'Grass', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/069-f.png'),
(73, 'Weepinbell', 'Grass', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/070-f.png'),
(74, 'Victreebel', 'Grass', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/071-f.png'),
(75, 'Tentacool', 'Water', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/072-f.png'),
(76, 'Tentacruel', 'Water', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/073-f.png'),
(77, 'Geodude', 'Rock', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/074-f.png'),
(78, 'Graveler', 'Rock', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/075-f.png'),
(79, 'Golem', 'Rock', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/076-f.png'),
(80, 'Ponyta', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/077-f.png'),
(81, 'Rapidash', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/078-f.png'),
(82, 'Slowpoke', 'Water', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/079-f.png'),
(83, 'Slowbro', 'Water', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/080-f.png'),
(84, 'Magnemite', 'Electric', 'Steel', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/081.png'),
(85, 'Magneton', 'Electric', 'Steel', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/082.png'),
(86, 'Farfetch-d', 'Normal', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/083-f.png'),
(87, 'Doduo', 'Normal', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/084-f.png'),
(88, 'Dodrio', 'Normal', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/085-f.png'),
(89, 'Seel', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/086-f.png'),
(90, 'Dewong', 'Water', 'Ice', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/087-f.png'),
(91, 'Grimmer', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/088-f.png'),
(92, 'Muk', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/089-f.png'),
(93, 'Shellder', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/090-f.png'),
(94, 'Cloyster', 'Water', 'Ice', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/091-f.png'),
(95, 'Gastly', 'Ghost', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/092-f.png'),
(96, 'Haunter', 'Ghost', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/093-f.png'),
(97, 'Gengar', 'Ghost', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/094-f.png'),
(98, 'Onyx', 'Rock', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/095-f.png'),
(99, 'Drowzee', 'Psychic', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/096-f.png'),
(100, 'Hypno', 'Psychic', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/097-f.png'),
(101, 'Krabby', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/098-f.png'),
(102, 'Kingler', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/099-f.png'),
(103, 'Voltorb', 'Electric', 'Electric', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/100.png'),
(104, 'Electrode', 'Electric', 'Electric', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/101.png'),
(105, 'Exeggute', 'Grass', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/102-f.png'),
(106, 'Exeggutor', 'Grass', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/103-f.png'),
(107, 'Cubone', 'Ground', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/104-f.png'),
(108, 'Marowak', 'Ground', 'Ground', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/105-f.png'),
(109, 'Hitmonlee', 'Fight', 'Fight', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/106.png'),
(110, 'Hitmonchan', 'Fight', 'Fight', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/107.png'),
(111, 'Lickitung', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/108-f.png'),
(112, 'Koffing', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/109-f.png'),
(113, 'Weezing', 'Poison', 'Poison', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/110-m.png'),
(114, 'Rhyhorn', 'Ground', 'Rock', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/111-f.png'),
(115, 'Rhydon', 'Ground', 'Rock', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/112-f.png'),
(116, 'Chansey', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/113.png'),
(117, 'Tangela', 'Grass', 'Grass', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/114-f.png'),
(118, 'Kangaskhan', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/115.png'),
(119, 'Horsea', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/116-f.png'),
(120, 'Seadra', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/117-f.png'),
(121, 'Goldeen', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/118-f.png'),
(122, 'Seaking', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/119-f.png'),
(123, 'Staryu', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/120.png'),
(124, 'Starmie', 'Water', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/121.png'),
(125, 'Mr. Mime', 'Psychic', 'Fairy', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/122-f.png'),
(126, 'Scyther', 'Bug', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/123-f.png'),
(127, 'Jynx', 'Ice', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/124.png'),
(128, 'Electabuzz', 'Electric', 'Electric', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/125-f.png'),
(129, 'Magmar', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/126-f.png'),
(130, 'Pinsir', 'Bug', 'Bug', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/127-f.png'),
(131, 'Tauros', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/128.png'),
(132, 'Magikarp', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/129-f.png'),
(133, 'Gyarados', 'Water', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/130-f.png'),
(134, 'Lapras', 'Water', 'Ice', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/131-f.png'),
(135, 'Ditto', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/132.png'),
(136, 'Eevee', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/133-f.png'),
(137, 'Vaporeon', 'Water', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/134-f.png'),
(138, 'Jolteon', 'Electric', 'Electric', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/135-f.png'),
(139, 'Flareon', 'Fire', 'Fire', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/136-f.png'),
(140, 'Porygon', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/137.png'),
(141, 'Omanyte', 'Rock', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/138-f.png'),
(142, 'Omastar', 'Rock', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/139-f.png'),
(143, 'Kabuto', 'Rock', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/140-f.png'),
(144, 'Kabutops', 'Rock', 'Water', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/141-f.png'),
(145, 'Aerodactyl', 'Rock', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/142-f.png'),
(146, 'Snorlax', 'Normal', 'Normal', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/143-f.png'),
(147, 'Articuno', 'Ice', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/144.png'),
(148, 'Zapdos', 'Electric', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/145.png'),
(149, 'Moltres', 'Fire', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/146.png'),
(150, 'Dratini', 'Dragon', 'Dragon', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/147-f.png'),
(151, 'Dragonair', 'Dragon', 'Dragon', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/148-f.png'),
(152, 'Dragonite', 'Dragon', 'Flying', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/149-f.png'),
(153, 'Mewtwo', 'Psychic', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/150.png'),
(154, 'Mew', 'Psychic', 'Psychic', 1, 'https://www.cpokemon.com/images/pokedex/sprites/dp/151.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
