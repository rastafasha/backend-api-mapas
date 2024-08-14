-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 14-08-2024 a las 01:34:57
-- Versión del servidor: 5.7.34
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_rest_mapas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracions`
--

CREATE TABLE `configuracions` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `telefonoActivo` varchar(255) NOT NULL,
  `telPresidencia` varchar(255) NOT NULL,
  `telPresActivo` varchar(255) NOT NULL,
  `telSecretaria` varchar(255) NOT NULL,
  `telSecActivo` varchar(255) NOT NULL,
  `telTesoreria` varchar(255) NOT NULL,
  `telTesActivo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `configuracions`
--

INSERT INTO `configuracions` (`id`, `user_id`, `direccion`, `telefono`, `telefonoActivo`, `telPresidencia`, `telPresActivo`, `telSecretaria`, `telSecActivo`, `telTesoreria`, `telTesActivo`, `created_at`) VALUES
(1, 1, '<p>Av.Libertador,  Torre Macom, Piso 2, Ofc. 2 A, Chacao, Caracas, Venezuela</p>', '123', 'displayNone', '+58(414)-315.14.22', 'displayBlok', '+58(412)-607.63.69', 'displayBlok', '+58(412)-971.46.76', 'displayBlok', '2022-02-09 15:48:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudades` json DEFAULT NULL,
  `isActive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `user_id`, `code`, `title`, `ciudades`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 1, 'US', 'Estados Unidos', '\"[{\\\"ciudad\\\":\\\"Miami\\\",\\\"ubicacion\\\":\\\"Solar Amphitheater Bayfront Park, 301 Biscayne Boulevard,\\\\n2:00 PM - 9:00 PM\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Houston\\\",\\\"ubicacion\\\":\\\"25600 Westheimer Pkwy, Katy, TX 77494\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Washington\\\",\\\"ubicacion\\\":\\\"Libertador Simón Bolívar Memorial 203 18 st NW 20006\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"New York\\\",\\\"ubicacion\\\":\\\"Times Square 47th Street entre Broadway / 7th Ave. Al frente de las escaleras rojas, 5:00pm - 7:00pm\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Phoenix, Arizona\\\",\\\"ubicacion\\\":\\\"Governmental Mall, 1700 W Washington St, Phoenix, AZ 85007\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Los Angeles\\\",\\\"ubicacion\\\":\\\"233 N Spring St, Los Angeles, CA 90012 (en la plaza frente al City Hall)\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"San Diego,CA\\\",\\\"ubicacion\\\":\\\"1600 Pacific Highway, San Diego CA 92101, de 1 a 4pm\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Richmond\\\",\\\"ubicacion\\\":\\\"620 W Main Street Richmond Virginia, 10:00 AM - 12:00 M\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"New Orleans\\\",\\\"ubicacion\\\":\\\"Jackson Square 745 Decatur St\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Lafayette\\\",\\\"ubicacion\\\":\\\"Parc Sans Souci 201 Polk St.\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Austin, TX\\\",\\\"ubicacion\\\":\\\"Frente al Congress, 1100 Congress, Av. Austin, TX 78701, 4:00 PM - 7:00 PM\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Wilmington\\\",\\\"ubicacion\\\":\\\"Rodney Square, 1000 N. Market St. Wilmington, DE 19801\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Corpus Christi, TX\\\",\\\"ubicacion\\\":\\\"Waters Edge Pavilion\\\",\\\"hora\\\":\\\"23:30\\\"},{\\\"ciudad\\\":\\\"Atlanta\\\",\\\"ubicacion\\\":\\\"Woodruff Park, 91 Peachtree St NW, Atlanta, GA 30303\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"San Francisco\\\",\\\"ubicacion\\\":\\\"Civic Center San Francisco. 335 McAllister St. San Francisco, CA.\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Philadelphia\\\",\\\"ubicacion\\\":\\\"AMOR Sculpture 210 N 18 Street, Philadelphia, Pa 19103\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Salt Lake City, Utah\\\",\\\"ubicacion\\\":\\\"State Capitol 350 State ST. 4:00 PM a 6:00 PM\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Orlando\\\",\\\"ubicacion\\\":\\\"2911 E Robinson St, Orlando, FL 32803 (Festival Park)\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Charlotte\\\",\\\"ubicacion\\\":\\\" Marshall Park 800 E 3rd St, Charlotte, NC 28202\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Boston\\\",\\\"ubicacion\\\":\\\"Faneuil Hall Square Boston, Massachusetts, 02109 (Frente al Faneuil Hall)\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Jacksonville\\\",\\\"ubicacion\\\":\\\"1620 Riverside Ave, Jacksonville, FL 32204. Memorial Park\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Tampa\\\",\\\"ubicacion\\\":\\\"Aré-Pitas 2734 University Square Dr.\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Fort Myers - Florida\\\",\\\"ubicacion\\\":\\\"1140 Colonial Blvd, Fort Myers, Florida 33907\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Deerfield Beach, FL\\\",\\\"ubicacion\\\":\\\"Gustico Bistró. 2249 W Hillsboro Blvd, Deerfield Beach, Fl 33442\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Indianapolis\\\",\\\"ubicacion\\\":\\\" Monument Circle,1 Monument Cir, Indianapolis, In 46204, 3:00 PM - 5:00 PM \\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"San Antonio, TX\\\",\\\"ubicacion\\\":\\\"300 Alamo Plaza Sat 78205, El Alamo\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Tulsa, OK\\\",\\\"ubicacion\\\":\\\"Mc. Cullough Park 1534 E. 25st. Tulsa OK 74129\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Louisville, Kentucky\\\",\\\"ubicacion\\\":\\\"Estacionamiento del Area del Restaurant Las Chamas Venezuelan Food\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Rochester, MN\\\",\\\"ubicacion\\\":\\\"38 Peace Plaza, Rochester, MN 55902\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Port Saint Lucie, FL\\\",\\\"ubicacion\\\":\\\"SW Saint Lucie west and SW Cashmere Blvd, 34986\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Kansas City\\\",\\\"ubicacion\\\":\\\"Fuente del Plaza, 47th St Millcreek Parkway\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Parkland\\\",\\\"ubicacion\\\":\\\"6682 Parkside Dr, Parkland, FL 33067\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Nashville\\\",\\\"ubicacion\\\":\\\"Parthenon. West End Ave Tennesse\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Naples, Fl\\\",\\\"ubicacion\\\":\\\"Iglesia Lutherana Pelican, 5800 Golden Gate, Naples, Fl, 34116, 10:00 AM a 3:00 PM\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Raleigh\\\",\\\"ubicacion\\\":\\\"3808 Edwards Mill Rd, Raleigh, NC 27612\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"New Haven, CT\\\",\\\"ubicacion\\\":\\\"City Hall\\\\n161 Church St, New Haven, CT 06510\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Midland, TX\\\",\\\"ubicacion\\\":\\\"Beal Park 5200 W Wall St Midland, TX  79703\\\",\\\"hora\\\":\\\"19:00\\\"}]\"', 'isVisible', '2024-08-14 00:02:51', '2024-08-14 05:29:45'),
(2, 1, 'CA', 'Canada', '\"[{\\\"ciudad\\\":\\\"Ontaro\\\",\\\"ubicacion\\\":\\\"Queen\'s Park. 110 Wellesley St W\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Montréal\\\",\\\"ubicacion\\\":\\\"Place des Festivals 1499 Rue Jeanne-Mance, Montréal, QC H2X 1Z9\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Ottawa\\\",\\\"ubicacion\\\":\\\"Canadian Tribute to Human Rights 220 Elgin Street\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Calgary\\\",\\\"ubicacion\\\":\\\"City Hall\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Sherbrooke, QC\\\",\\\"ubicacion\\\":\\\"191 Rue Du Palais, Sherbrooke\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Edmonton, AB\\\",\\\"ubicacion\\\":\\\"Centennial Plaza\\\",\\\"hora\\\":\\\"23:00\\\"}]\"', 'isVisible', '2024-08-14 00:05:42', '2024-08-14 05:31:20'),
(3, 1, 'MX', 'Mexico', '\"[{\\\"ciudad\\\":\\\"CDMX\\\",\\\"ubicacion\\\":\\\"Monumento a la revolución \\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Ciudad del Carmen\\\",\\\"ubicacion\\\":\\\"Barco Isla de Tris, Playa Norte\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Guadalajara\\\",\\\"ubicacion\\\":\\\"Paseo Chapultepec\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Puebla\\\",\\\"ubicacion\\\":\\\"Zocalo del Centro de Puebla\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"León\\\",\\\"ubicacion\\\":\\\"Arco de la Calzada \\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Playa del Carmen\\\",\\\"ubicacion\\\":\\\"Plaza 28 de Julio\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Veracruz\\\",\\\"ubicacion\\\":\\\"Boulevard Ávila Camacho asta de las banderas\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Chihuahua\\\",\\\"ubicacion\\\":\\\"Busto Simón Bolívar Chihuahua\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Irapuato, Guanajuato\\\",\\\"ubicacion\\\":\\\"Parque Irekua\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Cancún\\\",\\\"ubicacion\\\":\\\"Avda. Bonampack, Malecón Tajamar, frente a Plaza Las Americas\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Querétaro\\\",\\\"ubicacion\\\":\\\"Mirador de los Arcos\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Monterrey\\\",\\\"ubicacion\\\":\\\"Plaza Simón Bolívar, Lic. José Benitez con Av. Simón Bolívar, Col. Obispado\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Villahermosa Tabasco\\\",\\\"ubicacion\\\":\\\"Parque la Choca\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Puerto Vallarta, Jalisco\\\",\\\"ubicacion\\\":\\\"Malecón \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Culiacán\\\",\\\"ubicacion\\\":\\\"Iglesia La Lomita\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Tijuana\\\",\\\"ubicacion\\\":\\\"Glorieta Cuauhtémoc\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Mérida, Yucatan\\\",\\\"ubicacion\\\":\\\"Monumento a la Patria\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"San José del Cabo\\\",\\\"ubicacion\\\":\\\"Plaza Mijares Centro, Baja California\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Aguascalientes\\\",\\\"ubicacion\\\":\\\"Plaza Patria\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Tampico\\\",\\\"ubicacion\\\":\\\"Plaza de Armas\\\",\\\"hora\\\":\\\"16:30\\\"}]\"', 'isVisible', '2024-08-14 00:14:30', '2024-08-14 00:14:30'),
(4, 1, 'CO', 'Colombia', '\"[{\\\"ciudad\\\":\\\"Bogotá\\\",\\\"ubicacion\\\":\\\"Parque de Lourdes. CRA 13 con Calle 63 (José Celestino Mutis)\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Medellín\\\",\\\"ubicacion\\\":\\\"Parque de las Luces\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Cúcuta\\\",\\\"ubicacion\\\":\\\"Av Cero con calle 10 Plazoleta Adyacente a Ventura Plaza\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Cali\\\",\\\"ubicacion\\\":\\\"Boulevar del Río (Frente a la Estatua del Gato)\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Pereira\\\",\\\"ubicacion\\\":\\\"Plaza Bolivar\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Cartagena\\\",\\\"ubicacion\\\":\\\"Plazoleta del Edificio Caja Agraria (Detras del Sombrero Vueltiao). Diagonal al C.C. Centro Uno\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Barranqulla\\\",\\\"ubicacion\\\":\\\"Plaza de La Paz Juan Pablo II\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Bucaramanga\\\",\\\"ubicacion\\\":\\\"Parque Los Niños\\\",\\\"hora\\\":\\\"15:30\\\"},{\\\"ciudad\\\":\\\"Santa Marta\\\",\\\"ubicacion\\\":\\\"Parque de Bolivar. (Bahía)\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-08-14 00:18:21', '2024-08-14 00:18:21'),
(5, 1, 'EC', 'Ecuador', '\"[{\\\"ciudad\\\":\\\"Quito\\\",\\\"ubicacion\\\":\\\"Parque Bicentenario\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Guayaquil\\\",\\\"ubicacion\\\":\\\"Explanada Teatro, Centro Cívico, (Centro Sur)\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Cuenca\\\",\\\"ubicacion\\\":\\\"Plaza Otorongo Panadería Táchira \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Ambato\\\",\\\"ubicacion\\\":\\\"Atrio de la Catedral de Ambato\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Lago Agrio\\\",\\\"ubicacion\\\":\\\"parque central nueva Loja\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Naranjal\\\",\\\"ubicacion\\\":\\\"Parque Ecologico\\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Máchala\\\",\\\"ubicacion\\\":\\\"parque central nueva Loja\\\",\\\"hora\\\":\\\"15:30\\\"},{\\\"ciudad\\\":\\\"Ibarra\\\",\\\"ubicacion\\\":\\\"Redondel de la Madre Bulevar\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Santo Domingo de Tsachilas\\\",\\\"ubicacion\\\":\\\"Parque de la Juventud\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Provincia de los Rios Babahoyo \\\",\\\"ubicacion\\\":\\\"Ciudadela el chofer, restaurant Meriendas postres y algo más\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-08-14 00:22:46', '2024-08-14 00:22:46'),
(6, 1, 'CL', 'Chile', '\"[{\\\"ciudad\\\":\\\"Santiago\\\",\\\"ubicacion\\\":\\\"Parque Almagro, detras de la Estacion del Metro\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Iquique\\\",\\\"ubicacion\\\":\\\"Plaza 21 de Mayo, diagonal final paseo Baquedano\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Puerto Montt\\\",\\\"ubicacion\\\":\\\"Plaza de Armas\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Concepción\\\",\\\"ubicacion\\\":\\\"Plaza Los Tribunales, Barros Arana 915\\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-08-14 00:25:00', '2024-08-14 00:34:06'),
(7, 1, 'AR', 'Argentina', '\"[{\\\"ciudad\\\":\\\"Cordoba\\\",\\\"ubicacion\\\":\\\"Patio Olmos \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Carlos Paz, Cordoba\\\",\\\"ubicacion\\\":\\\"Costanera (Cerca Hidropedales y Kayaks, esta cerca entre Av. Arturo Umberto Illia y Av. Uruguay), 5:00 PM a 7:00 PM\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Mendoza\\\",\\\"ubicacion\\\":\\\"Peatonal Sarmiento y San Martin\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Rio Gallegos, Provincia de Santa Cruz\\\",\\\"ubicacion\\\":\\\"Monumento Vapor Villarino. Av. San Martín y Av. Kirchner.\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Neuquén\\\",\\\"ubicacion\\\":\\\"Monumento San Martín\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Bahía Blanca\\\",\\\"ubicacion\\\":\\\"Plaza Rivadavia\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"San Clemente del Tuyú\\\",\\\"ubicacion\\\":\\\"Plaza de las Banderas\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Puerto Madryn\\\",\\\"ubicacion\\\":\\\"Monumento a la Mujer Galesa\\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-08-14 00:30:21', '2024-08-14 00:30:21'),
(8, 1, 'UY', 'Uruguay', '\"[{\\\"ciudad\\\":\\\"Montevideo\\\",\\\"ubicacion\\\":\\\"Plaza Independencia\\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-08-14 00:31:31', '2024-08-14 00:31:31'),
(9, 1, 'BO', 'Bolivia', '\"[{\\\"ciudad\\\":\\\"La Paz\\\",\\\"ubicacion\\\":\\\"Plaza de San Miguel, Calacoto\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Cochabamba\\\",\\\"ubicacion\\\":\\\"Plaza las Banderas\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Santa Cruz de la Sierra\\\",\\\"ubicacion\\\":\\\"Plaza El Estudiante\\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-08-14 00:33:43', '2024-08-14 00:33:57'),
(10, 1, 'PY', 'Paraguay', '\"[{\\\"ciudad\\\":\\\"Asunción\\\",\\\"ubicacion\\\":\\\"Plaza de la Democracia\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Encarnación\\\",\\\"ubicacion\\\":\\\"Costanera Playa San José\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Ciudad del Este\\\",\\\"ubicacion\\\":\\\"Área 1 \\\",\\\"hora\\\":\\\"18:30\\\"}]\"', 'isVisible', '2024-08-14 00:36:36', '2024-08-14 00:36:36'),
(11, 1, 'AW', 'Aruba', '\"[{\\\"ciudad\\\":\\\"Oranjestad\\\",\\\"ubicacion\\\":\\\"Plaza Bolivar, 6:00 pm - 7:00 pm\\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-08-14 00:37:34', '2024-08-14 00:37:42'),
(12, 1, 'DO', 'Republica Dominicana', '\"[{\\\"ciudad\\\":\\\"Santo Domingo\\\",\\\"ubicacion\\\":\\\"Playa Guibia\\\",\\\"hora\\\":\\\"14:00\\\"}]\"', 'isVisible', '2024-08-14 00:39:13', '2024-08-14 00:39:13'),
(13, 1, 'CR', 'Costa Rica', '\"[{\\\"ciudad\\\":\\\"San José\\\",\\\"ubicacion\\\":\\\"Plaza La Democracia\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-08-14 00:40:12', '2024-08-14 00:40:12'),
(14, 1, 'PR', 'Puerto Rico', '\"[{\\\"ciudad\\\":\\\"San Juan\\\",\\\"ubicacion\\\":\\\"Capitolio, Plaza La Democracia\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-08-14 00:41:00', '2024-08-14 00:41:08'),
(15, 1, 'SV', 'El Salvador', '\"[{\\\"ciudad\\\":\\\"San Salvador\\\",\\\"ubicacion\\\":\\\"Redondel Masferrer, Paseo Gral. Escalón\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-08-14 00:43:08', '2024-08-14 00:43:08'),
(16, 1, 'LU', 'Luxemburgo', '\"[{\\\"ciudad\\\":\\\"Luxemburgo\\\",\\\"ubicacion\\\":\\\"Place Emile Hamilius\\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-08-14 00:45:52', '2024-08-14 00:45:52'),
(17, 1, 'NO', 'Noruega', '\"[{\\\"ciudad\\\":\\\"Stavanger\\\",\\\"ubicacion\\\":\\\"Torget 7, 4006 Stavanger\\\",\\\"hora\\\":\\\"13:00\\\"}]\"', 'isVisible', '2024-08-14 00:47:00', '2024-08-14 00:47:00'),
(18, 1, 'HU', 'Hungria', '\"[{\\\"ciudad\\\":\\\"Budapest\\\",\\\"ubicacion\\\":\\\"Deák Ference tér, Budapest\\\",\\\"hora\\\":\\\"19:00\\\"}]\"', 'isVisible', '2024-08-14 00:48:59', '2024-08-14 00:48:59'),
(19, 1, 'PT', 'Portugal', '\"[{\\\"ciudad\\\":\\\"Oporto\\\",\\\"ubicacion\\\":\\\"Av Dos Aliados\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Funchal, Madeira\\\",\\\"ubicacion\\\":\\\"Praça Do Município\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Lisboa\\\",\\\"ubicacion\\\":\\\"Av. Liberdade Estátua de Bolívar\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Aveiro\\\",\\\"ubicacion\\\":\\\"Largo Do Rossio\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Braga\\\",\\\"ubicacion\\\":\\\"Praça Da República\\\",\\\"hora\\\":\\\"19:00\\\"}]\"', 'isVisible', '2024-08-14 00:51:34', '2024-08-14 00:51:34'),
(20, 1, 'GB', 'Reino Unido', '\"[{\\\"ciudad\\\":\\\"Manchester\\\",\\\"ubicacion\\\":\\\"St. Peter\'s Square, Manchester M2 5PD\\\",\\\"hora\\\":\\\"13:00\\\"}]\"', 'isVisible', '2024-08-14 00:54:07', '2024-08-14 00:54:07'),
(21, 1, 'NZ', 'Nueva Zelanda', '\"[{\\\"ciudad\\\":\\\"Auckland\\\",\\\"ubicacion\\\":\\\"Aotea Square\\\",\\\"hora\\\":\\\"14:00\\\"}]\"', 'isVisible', '2024-08-14 00:55:03', '2024-08-14 00:55:03'),
(22, 1, 'AT', 'Austria', '\"[{\\\"ciudad\\\":\\\"Viena\\\",\\\"ubicacion\\\":\\\"Parlamento Nacional Burgring\\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-08-14 00:55:52', '2024-08-14 00:55:52'),
(23, 1, 'IL', 'Israel', '\"[{\\\"ciudad\\\":\\\"Tel Aviv\\\",\\\"ubicacion\\\":\\\"Plaza Isaac Rabin\\\",\\\"hora\\\":\\\"18:30\\\"}]\"', 'isVisible', '2024-08-14 00:56:55', '2024-08-14 00:56:55'),
(24, 1, 'CZ', 'República Checa', '\"[{\\\"ciudad\\\":\\\"Praga\\\",\\\"ubicacion\\\":\\\"Václavské Náměstí (Bajo la estatua del caballo)\\\",\\\"hora\\\":\\\"12:00\\\"}]\"', 'isVisible', '2024-08-14 00:57:46', '2024-08-14 00:57:46'),
(25, 1, 'NL', 'Holanda', '\"[{\\\"ciudad\\\":\\\"Amsterdam\\\",\\\"ubicacion\\\":\\\"Stationsplein 10, 1012AB Amsterdam\\\",\\\"hora\\\":\\\"13:00\\\"}]\"', 'isVisible', '2024-08-14 01:00:00', '2024-08-14 01:00:00'),
(26, 1, 'GR', 'Grecia', '\"[{\\\"ciudad\\\":\\\"Atenas\\\",\\\"ubicacion\\\":\\\"Plaza Síntagma\\\",\\\"hora\\\":\\\"19:00\\\"}]\"', 'isVisible', '2024-08-14 01:00:37', '2024-08-14 01:00:37'),
(27, 1, 'DE', 'Alemania', '\"[{\\\"ciudad\\\":\\\"Dresden\\\",\\\"ubicacion\\\":\\\"Wiener Platz (Frente al Hauptbahnhof)\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Munich\\\",\\\"ubicacion\\\":\\\"Rindermarkt, 80331 München-Altstadt-Lehel, 13:30 a 16:00 hrs\\\",\\\"hora\\\":\\\"13:30\\\"}]\"', 'isVisible', '2024-08-14 01:08:17', '2024-08-14 01:08:17'),
(28, 1, 'BE', 'Belgica', '\"[{\\\"ciudad\\\":\\\"Bruselas\\\",\\\"ubicacion\\\":\\\"Place de L´Albertine \\\",\\\"hora\\\":\\\"12:00\\\"}]\"', 'isVisible', '2024-08-14 01:09:56', '2024-08-14 01:09:56'),
(29, 1, 'IT', 'Italia', '\"[{\\\"ciudad\\\":\\\"Roma\\\",\\\"ubicacion\\\":\\\"Largo Corrado Ricci - Tempio della Pace\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Napoles\\\",\\\"ubicacion\\\":\\\"Piazza del Plebiscito\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Milán\\\",\\\"ubicacion\\\":\\\"Piazza Castello\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Palermo\\\",\\\"ubicacion\\\":\\\"Piazza Pretoria\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Coroto\\\",\\\"ubicacion\\\":\\\"Centro Italovenezolano vía A. Moro 56\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Florencia\\\",\\\"ubicacion\\\":\\\"Piazza Santa Maria Novella\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Génova\\\",\\\"ubicacion\\\":\\\"Piazza de Ferrari\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"La Spezia\\\",\\\"ubicacion\\\":\\\"Piazza Garibaldi\\\",\\\"hora\\\":\\\"15:30\\\"},{\\\"ciudad\\\":\\\"Amantea\\\",\\\"ubicacion\\\":\\\"Piazza Commercio\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Torino\\\",\\\"ubicacion\\\":\\\"Piazza Castello\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Scalea\\\",\\\"ubicacion\\\":\\\"Cortile Palazzo dei Principi Spinelli\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Montesilvano\\\",\\\"ubicacion\\\":\\\"Piazza Largo Venezuela\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Brescia\\\",\\\"ubicacion\\\":\\\"Largo Formentone\\\",\\\"hora\\\":\\\"20:00\\\"}]\"', 'isVisible', '2024-08-14 01:16:00', '2024-08-14 01:16:00'),
(30, 1, 'ES', 'España', '\"[{\\\"ciudad\\\":\\\"Barcelona\\\",\\\"ubicacion\\\":\\\"Arco del Triunfo\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Valencia\\\",\\\"ubicacion\\\":\\\"Praça de la Verge, 4, Ciutat Vella,46001, Valéncia.\\\",\\\"hora\\\":\\\"19:30\\\"},{\\\"ciudad\\\":\\\"Tenerife\\\",\\\"ubicacion\\\":\\\"Plaza España\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Valladolid\\\",\\\"ubicacion\\\":\\\"Plaza Mayor de Valladolid al frente del Ayuntamiento\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Marbella\\\",\\\"ubicacion\\\":\\\"Plaza La Alameda\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Gran Canaria\\\",\\\"ubicacion\\\":\\\"Paseo Las Canteras \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Santa Cruz de Palma\\\",\\\"ubicacion\\\":\\\"Plaza de España\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Vigo\\\",\\\"ubicacion\\\":\\\"Calle, Príncipe en la Farola\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Granada\\\",\\\"ubicacion\\\":\\\"Fuente de la Batallas\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Lugo\\\",\\\"ubicacion\\\":\\\"Plaza Mayor\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Villagarcia de Arosa\\\",\\\"ubicacion\\\":\\\"Plaza de Villagarcía\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Pontevedra\\\",\\\"ubicacion\\\":\\\"Plaza de la Peregrina\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Salamanca\\\",\\\"ubicacion\\\":\\\"Plaza Mayor de Salamanca\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Zaragoza\\\",\\\"ubicacion\\\":\\\"Plaza España / DPZ\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Santiago de Compostela\\\",\\\"ubicacion\\\":\\\"Plaza Roja\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Logroño\\\",\\\"ubicacion\\\":\\\"Plaza El Espelón, Monumento Homenaje a las Víctimas del Terrorismo\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Santander\\\",\\\"ubicacion\\\":\\\"Ayuntamiento de Santander\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Pamplona (Navarra)\\\",\\\"ubicacion\\\":\\\"Marcha desde Plaza la Libertad con Av. Carlos III\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Jávea (Alicante)\\\",\\\"ubicacion\\\":\\\"Paseo Playa de la Grava\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Vitoria Gasteiz, Alava\\\",\\\"ubicacion\\\":\\\"Plaza de la Virgen Blanca\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Bilbao\\\",\\\"ubicacion\\\":\\\"Plaza Federico Moyúa de Bilbao\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Gijón - Asturias\\\",\\\"ubicacion\\\":\\\"Plaza del Márquez\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"San Sebastian\\\",\\\"ubicacion\\\":\\\"Desde Plaza de Cervantes hasta Jardines Alderdi Eder\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Alicante\\\",\\\"ubicacion\\\":\\\"Plaza de Los Luceros\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Ourense\\\",\\\"ubicacion\\\":\\\"Plaza Mayor\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Ferrol\\\",\\\"ubicacion\\\":\\\"Plaza España\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Cordoba\\\",\\\"ubicacion\\\":\\\"Cúpula del Bulevar Gran Capitan\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"A Coruña\\\",\\\"ubicacion\\\":\\\"Obelisco\\\",\\\"hora\\\":\\\"20:00\\\"}]\"', 'isVisible', '2024-08-14 01:26:26', '2024-08-14 01:26:26'),
(31, 1, 'BR', 'Brasil', '\"[{\\\"ciudad\\\":\\\"Manaos\\\",\\\"ubicacion\\\":\\\"Praça Da Saudade\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Fraiburgo S/C\\\",\\\"ubicacion\\\":\\\"Praça María Frey\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Rio de Janeiro\\\",\\\"ubicacion\\\":\\\"Praia de Copacabana, frente al Hotel Copacabana Palace\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Foz do Iguaçu PR\\\",\\\"ubicacion\\\":\\\"Final da Avenida Juscelino Kubitschek (Praça da paz) centro\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Sorocaba, Sp \\\",\\\"ubicacion\\\":\\\"Praça Cel Fernando Prestes - Centro\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"SÃO PAULO\\\",\\\"ubicacion\\\":\\\"Av. Paulista, estatua de Francisco de Miranda, al lado de la Plaza del Ciclista\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Vitória, ES\\\",\\\"ubicacion\\\":\\\"Frente Assembleia Legislativa de Espiritud Santo (ALES), Av. Americo Buaiz, 205-Enseada do Súa\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Florianópolis\\\",\\\"ubicacion\\\":\\\"Frente de la Catedral Metropolitana de Florianópolis Nossa Senhora Do Desterro - Centro\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Maragogi Alagoas\\\",\\\"ubicacion\\\":\\\"Restaurente Planet Food Maragogi Peroba\\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Porto Alegre (POA)\\\",\\\"ubicacion\\\":\\\"Mercado Público (Centro POA)\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Porto Velho - RO\\\",\\\"ubicacion\\\":\\\"Skate Parque Av. Guapore, 3842-4000 -  Cuniã (Zona Leste)\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Vacaria RS\\\",\\\"ubicacion\\\":\\\"Praca Daltro Filho. Centro\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-08-14 02:27:04', '2024-08-14 02:27:04'),
(32, 1, 'AU', 'Australia', '\"[{\\\"ciudad\\\":\\\"Perth, WA, Australia\\\",\\\"ubicacion\\\":\\\"Northbridge Piazza\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Brisbane\\\",\\\"ubicacion\\\":\\\"King George Square\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Melbourne\\\",\\\"ubicacion\\\":\\\"Old Treasury Building\\\",\\\"hora\\\":\\\"15:00\\\"}]\"', 'isVisible', '2024-08-14 05:34:17', '2024-08-14 05:34:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_30_175428_create_jobs_table', 1),
(6, '2022_12_18_035041_create_contacts_table', 1),
(7, '2023_11_29_231903_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `code`, `title`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AR', 'Argentina'),
(10, 'AS', 'American Samoa'),
(11, 'AT', 'Austria'),
(12, 'AU', 'Australia'),
(13, 'AW', 'Aruba'),
(14, 'AX', 'Aland Islands'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BA', 'Bosnia and Herzegovina'),
(17, 'BB', 'Barbados'),
(18, 'BD', 'Bangladesh'),
(19, 'BE', 'Belgium'),
(20, 'BF', 'Burkina Faso'),
(21, 'BG', 'Bulgaria'),
(22, 'BH', 'Bahrain'),
(23, 'BI', 'Burundi'),
(24, 'BJ', 'Benin'),
(25, 'BL', 'Saint Barthelemy'),
(26, 'BN', 'Brunei Darussalam'),
(27, 'BO', 'Bolivia'),
(28, 'BM', 'Bermuda'),
(29, 'BQ', 'Bonaire, Sint Eustatius and Saba'),
(30, 'BR', 'Brazil'),
(31, 'BS', 'Bahamas'),
(32, 'BT', 'Bhutan'),
(33, 'BV', 'Bouvet Island'),
(34, 'BW', 'Botswana'),
(35, 'BY', 'Belarus'),
(36, 'BZ', 'Belize'),
(37, 'CA', 'Canada'),
(38, 'CC', 'Cocos (Keeling) Islands'),
(39, 'CD', 'Democratic Republic of Congo'),
(40, 'CF', 'Central African Republic'),
(41, 'CG', 'Republic of Congo'),
(42, 'CH', 'Switzerland'),
(43, 'CI', 'Côte d\'Ivoire'),
(44, 'CK', 'Cook Islands'),
(45, 'CL', 'Chile'),
(46, 'CM', 'Cameroon'),
(47, 'CN', 'China'),
(48, 'CO', 'Colombia'),
(49, 'CR', 'Costa Rica'),
(50, 'CU', 'Cuba'),
(51, 'CV', 'Cape Verde'),
(52, 'CW', 'Curaçao'),
(53, 'CX', 'Christmas Island'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DE', 'Germany'),
(57, 'DJ', 'Djibouti'),
(58, 'DK', 'Denmark'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'DZ', 'Algeria'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'EE', 'Estonia'),
(65, 'EH', 'Western Sahara'),
(66, 'ER', 'Eritrea'),
(67, 'ES', 'Spain'),
(68, 'ET', 'Ethiopia'),
(69, 'FI', 'Finland'),
(70, 'ET', 'Ethiopia'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Federated States of Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GE', 'Georgia'),
(79, 'GD', 'Grenada'),
(80, 'GG', 'Guernsey'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GL', 'Greenland'),
(84, 'GM', 'Gambia'),
(85, 'GN', 'Guinea'),
(86, 'GO', 'Glorioso Islands'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'JU', 'Juan De Nova Island'),
(116, 'KE', 'Kenya'),
(117, 'KG', 'Kyrgyzstan'),
(118, 'KH', 'Cambodia'),
(119, 'KI', 'Kiribati'),
(120, 'KM', 'Comoros'),
(121, 'KN', 'Saint Kitts and Nevis'),
(122, 'KP', 'North Korea'),
(123, 'KR', 'South Korea'),
(124, 'KR', 'South Korea'),
(125, 'XK', 'Kosovo'),
(126, 'KW', 'Kuwait'),
(127, 'KY', 'Cayman Islands'),
(128, 'KZ', 'Kazakhstan'),
(129, 'LA', 'Lao People\'s Democratic Republic'),
(130, 'LB', 'Lebanon'),
(131, 'LC', 'Saint Lucia'),
(132, 'LI', 'Liechtenstein'),
(133, 'LK', 'Sri Lanka'),
(134, 'LR', 'Liberia'),
(135, 'LS', 'Lesotho'),
(136, 'LT', 'Lithuania'),
(137, 'LU', 'Luxembourg'),
(138, 'LV', 'Latvia'),
(139, 'LY', 'Libya'),
(140, 'MA', 'Morocco'),
(141, 'MC', 'Monaco'),
(142, 'MD', 'Moldova'),
(143, 'MG', 'Madagascar'),
(144, 'ME', 'Montenegro'),
(145, 'MF', 'Saint Martin'),
(146, 'MH', 'Marshall Islands'),
(147, 'MK', 'Macedonia'),
(148, 'ML', 'Mali'),
(149, 'MO', 'Macau'),
(150, 'MM', 'Myanmar'),
(151, 'MN', 'Mongolia'),
(152, 'MP', 'Northern Mariana Islands'),
(153, 'MQ', 'Martinique'),
(154, 'MR', 'Mauritania'),
(155, 'MS', 'Montserrat'),
(156, 'MT', 'Malta'),
(157, 'MU', 'Mauritius'),
(158, 'MV', 'Maldives'),
(159, 'MW', 'Malawi'),
(160, 'MX', 'Mexico'),
(161, 'MY', 'Malaysia'),
(162, 'MZ', 'Mozambique'),
(163, 'NA', 'Namibia'),
(164, 'NC', 'New Caledonia'),
(165, 'NE', 'Niger'),
(166, 'NF', 'Norfolk Island'),
(167, 'NG', 'Nigeria'),
(168, 'NI', 'Nicaragua'),
(169, 'NL', 'Netherlands'),
(170, 'NO', 'Norway'),
(171, 'NP', 'Nepal'),
(172, 'NR', 'Nauru'),
(173, 'NU', 'Niue'),
(174, 'NZ', 'New Zealand'),
(175, 'OM', 'Oman'),
(176, 'PA', 'Panama'),
(177, 'OM', 'Oman'),
(178, 'PE', 'Peru'),
(179, 'PF', 'French Polynesia'),
(180, 'PG', 'Papua New Guinea'),
(181, 'PH', 'Philippines'),
(182, 'PK', 'Pakistan'),
(183, 'PL', 'Poland'),
(184, 'PM', 'Saint Pierre and Miquelon'),
(185, 'PN', 'Pitcairn Islands'),
(186, 'PR', 'Puerto Rico'),
(187, 'PS', 'Palestinian Territories'),
(188, 'PT', 'Portugal'),
(189, 'PW', 'Palau'),
(190, 'PY', 'Paraguay'),
(191, 'QA', 'Qatar'),
(192, 'RE', 'Reunion'),
(193, 'RO', 'Romania'),
(194, 'RS', 'Serbia'),
(195, 'RU', 'Russia'),
(196, 'RW', 'Rwanda'),
(197, 'SA', 'Saudi Arabia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SC', 'Seychelles'),
(200, 'SD', 'Sudan'),
(201, 'SE', 'Sweden'),
(202, 'SG', 'Singapore'),
(203, 'SH', 'Saint Helena'),
(204, 'SI', 'Slovenia'),
(205, 'SJ', 'Svalbard and Jan Mayen'),
(206, 'SK', 'Slovakia'),
(207, 'SL', 'Sierra Leone'),
(208, 'SM', 'San Marino'),
(209, 'SN', 'Senegal'),
(210, 'SO', 'Somalia'),
(211, 'SR', 'Suriname'),
(212, 'SS', 'South Sudan'),
(213, 'ST', 'Sao Tome and Principe'),
(214, 'SV', 'El Salvador'),
(215, 'SX', 'Sint Maarten'),
(216, 'SY', 'Syria'),
(217, 'SZ', 'Swaziland'),
(218, 'TC', 'Turks and Caicos Islands'),
(219, 'TD', 'Chad'),
(220, 'TF', 'French Southern and Antarctic Lands'),
(221, 'TG', 'Togo'),
(222, 'TH', 'Thailand'),
(223, 'TJ', 'Tajikistan'),
(224, 'TK', 'Tokelau'),
(225, 'TL', 'Timor-Leste'),
(226, 'TM', 'Turkmenistan'),
(227, 'TN', 'Tunisia'),
(228, 'TO', 'Tonga'),
(229, 'TR', 'Turkey'),
(230, 'TT', 'Trinidad and Tobago'),
(231, 'TV', 'Tuvalu'),
(232, 'TW', 'Taiwan'),
(233, 'TZ', 'Tanzania'),
(234, 'UA', 'Ukraine'),
(235, 'UG', 'Uganda'),
(236, 'UM-DQ', 'Jarvis Island'),
(237, 'UM-FQ', 'Baker Island'),
(238, 'UM-HQ', 'Howland Island'),
(239, 'UM-JQ', 'Johnston Atoll'),
(240, 'UM-MQ', 'Midway Islands'),
(241, 'UM-WQ', 'Wake Island'),
(242, 'US', 'United States'),
(243, 'UY', 'Uruguay'),
(244, 'UZ', 'Uzbekistan'),
(245, 'VA', 'Vatican City'),
(246, 'VC', 'Saint Vincent and the Grenadines'),
(247, 'VE', 'Venezuela'),
(248, 'VG', 'British Virgin Islands'),
(249, 'VI', 'US Virgin Islands'),
(250, 'VN', 'Vietnam'),
(251, 'VU', 'Vanuatu'),
(252, 'WF', 'Wallis and Futuna'),
(253, 'WS', 'Samoa'),
(254, 'YE', 'Yemen'),
(255, 'YT', 'Mayotte'),
(256, 'ZA', 'South Africa'),
(257, 'ZM', 'Zambia'),
(258, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'register_rol', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(2, 'list_rol', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(3, 'edit_rol', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(4, 'delete_rol', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(5, 'register_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(6, 'list_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(7, 'edit_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(8, 'delete_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(9, 'profile_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(10, 'register_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(11, 'list_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(12, 'edit_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(13, 'delete_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(14, 'profile_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(15, 'register_staff', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(16, 'list_staff', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(17, 'edit_staff', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(18, 'delete_staff', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(19, 'register_appointment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(20, 'list_appointment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(21, 'edit_appointment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(22, 'delete_appointment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(23, 'register_specialty', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(24, 'list_specialty', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(25, 'edit_specialty', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(26, 'delete_specialty', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(27, 'show_payment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(28, 'edit_payment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(29, 'activitie', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(30, 'calendar', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(31, 'expense_report', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(32, 'invoice_report', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(33, 'settings', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(34, 'doctor_dashboard', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(35, 'admin_dashboard', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(36, 'patient_dashboard', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(37, 'add_payment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(38, 'list_specialty_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SUPERADMIN', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(2, 'ADMIN', 'api', '2023-12-01 04:09:47', '2023-12-01 04:09:47'),
(3, 'MEMBER', 'api', '2023-12-01 04:38:36', '2023-12-02 23:29:30'),
(5, 'GUEST', 'api', '2023-12-05 18:58:54', '2023-12-05 18:58:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1:masculino,2:femenino',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `surname`, `birth_date`, `gender`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', 'superadmin@superadmin.com', NULL, NULL, 1, '2023-11-30 03:32:36', '$2y$10$PiKCOHK3XOBlqiL0kgJwLOMILMA6uVAAS1ou7JqHsUQaH4yvPkAiC', 'guHmnxhKw1', '2023-11-30 03:32:36', '2023-11-30 03:32:36', NULL),
(2, 'prueba', 'prueba@prueba.com', NULL, NULL, 1, NULL, '$2y$10$H0fxBNjgemJvzzw6ENMsveay06884b5reXnZxMKDLnrQUF9ng3bbS', NULL, '2024-08-08 21:32:18', '2024-08-08 21:32:18', NULL),
(3, 'test', 'test@test.com', NULL, NULL, 1, NULL, '$2y$10$xqBVq4LTcpLtl0imBo70Cuan447N2b2WmL9gDlCM6JwdDSpXV6VWK', NULL, '2024-08-08 22:14:46', '2024-08-08 22:14:46', NULL),
(4, 'testt', 'testt@testt.com', NULL, NULL, 1, NULL, '$2y$10$a0r7176bG82leblp4Q8toOP/DbS3tcFQ29KlO8sneOFaMTlzdJ/Rm', NULL, '2024-08-10 15:18:15', '2024-08-10 15:18:15', NULL),
(5, 'tessst', 'tessst@tessst.com', NULL, NULL, 1, NULL, '$2y$10$0I1ciz6H4GpwU4tjKhW6Ee/98.yv3DWtxU4QRJhZiAYYVVgTsgKLW', NULL, '2024-08-10 15:19:33', '2024-08-10 15:19:33', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
