-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 26-09-2024 a las 14:39:02
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
-- Base de datos: `api_rest_mapas1`
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
(1, 1, 'GN', 'Guinea, Bissau', '\"[{\\\"ciudad\\\":\\\"Bissau\\\",\\\"ubicacion\\\":\\\"Bairro ajuda 1ra fase, Rua Jose carlos Schwarz \\\",\\\"hora\\\":\\\"02:00\\\"}]\"', 'isVisible', '2024-09-16 21:29:39', '2024-09-20 20:10:04'),
(2, 1, 'AR', 'Argentina', '\"[{\\\"ciudad\\\":\\\"Cordoba\\\",\\\"ubicacion\\\":\\\"Patio Olmos \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Río Gallegos\\\",\\\"ubicacion\\\":\\\"Av San Martín y Av Kirchner\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Mar del Plata \\\",\\\"ubicacion\\\":\\\"Frente a la catedral \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Mendoza\\\",\\\"ubicacion\\\":\\\"Plaza Independencia Ciudad Mendoza\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Neuquén\\\",\\\"ubicacion\\\":\\\"Momento san Martín \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Puerto Madryn\\\",\\\"ubicacion\\\":\\\"Monumento a La Galesa\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Pilar\\\",\\\"ubicacion\\\":\\\"plaza 12 de octubre\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Rosario\\\",\\\"ubicacion\\\":\\\"Redoma Parque Independencia\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Buenos Aires \\\",\\\"ubicacion\\\":\\\"Parque Saavedra. de 4pm a 6pm \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Belén de Escobar - Provincia Bs As\\\",\\\"ubicacion\\\":\\\"Plaza General San Martin. Belén de Escobar\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"GeneralPico, La Pampa\\\",\\\"ubicacion\\\":\\\"Plaza San Martín, Ubicada en las intersección de las calles Avenida San Martín, 18, 9 y 11\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Santa Fe\\\",\\\"ubicacion\\\":\\\"La costanera ( donde están las letras de Santa Fe)\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"San Miguel Arcángel \\\",\\\"ubicacion\\\":\\\"Plaza San Miguel \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Villa Carlos Paz\\\",\\\"ubicacion\\\":\\\" Costanera (cerca hidropedales y Kayaks, esta cerca entre Av. Arturo Umberto Illia y Av. Uruguay)\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Santa Teresita\\\",\\\"ubicacion\\\":\\\"Carabela de santa Teresita\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"San Salvador de Jujuy\\\",\\\"ubicacion\\\":\\\"Plaza Belgrano\\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-09-16 22:33:52', '2024-09-26 16:53:53'),
(3, 1, 'AW', 'Aruba', '\"[{\\\"ciudad\\\":\\\"Oranjestad\\\",\\\"ubicacion\\\":\\\"Plaza Bolivar\\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-09-16 22:34:42', '2024-09-16 22:34:50'),
(4, 1, 'BR', 'Brasil', '\"[{\\\"ciudad\\\":\\\"Maragogi\\\",\\\"ubicacion\\\":\\\"Al 101 norte , galeria santa luzia loja 9 peroba maragogi alagoas, estacionamiento frente al restaurante planet food maragogi \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Vacaria RS\\\",\\\"ubicacion\\\":\\\"Praça Daltro Filho, Centro \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Recife \\\",\\\"ubicacion\\\":\\\"Marco cero centro\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Boa Vista\\\",\\\"ubicacion\\\":\\\"Praça de Nova Cidade\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Sau Paulo\\\",\\\"ubicacion\\\":\\\"Jundiai \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Florianopolis\\\",\\\"ubicacion\\\":\\\"Praça Hercilio Luz\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Manaus\\\",\\\"ubicacion\\\":\\\"Praça São Sebastião  (Teatro Amazonas) Centro.\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Porto Alegre\\\",\\\"ubicacion\\\":\\\"Mercado Publico (Centro)\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"São José \\\",\\\"ubicacion\\\":\\\"Beiramar de Sao José, do lado do PROCON \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Belo Horizonte \\\",\\\"ubicacion\\\":\\\"Praça da liberdade \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Rio de Janeiro\\\",\\\"ubicacion\\\":\\\"Praia de Copacabana, frente al hotel Copacabana Palace\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Seara\\\",\\\"ubicacion\\\":\\\"Avenida Anita Garibaldi \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Chapecó \\\",\\\"ubicacion\\\":\\\"Praça coronel Bertazo \\\",\\\"hora\\\":\\\"15:00\\\"}]\"', 'isVisible', '2024-09-16 22:36:31', '2024-09-26 16:47:54'),
(5, 1, 'CA', 'Canadá', '\"[{\\\"ciudad\\\":\\\"Victoria \\\",\\\"ubicacion\\\":\\\"812 Wharf St, Victoria, BC V8W 1T3\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Montreal \\\",\\\"ubicacion\\\":\\\"Parterre de Quartier des Spectacles / Metro Place des Arts / Sorti President Kennedy. de 11:00 am / 3:00 pm \\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Red Deer\\\",\\\"ubicacion\\\":\\\"49 Ave, Red Deer, AB T4N 1T9\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Halifax\\\",\\\"ubicacion\\\":\\\"Grand Parade--1770 Barrington Street, 12:00-2:00 P.M\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Lethbridge \\\",\\\"ubicacion\\\":\\\"Downtown of Lethbridge \\\",\\\"hora\\\":\\\"11:30\\\"},{\\\"ciudad\\\":\\\"Kitchener \\\",\\\"ubicacion\\\":\\\"200 King St. West\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Edmonton\\\",\\\"ubicacion\\\":\\\"Centennial Plaza, 9924 101A Ave #9904, Edmonton, AB T5J 2V4\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Vancouver\\\",\\\"ubicacion\\\":\\\"Jack Poole Plaza, 1500 Canada Place, Vancouver. 2:00 - 4:00 P.M.\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Quebec\\\",\\\"ubicacion\\\":\\\"Al frente de la Asamblea Naciional de Québec. 1045 rue des parlementaires\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Ottawa\\\",\\\"ubicacion\\\":\\\"111 Wellington y marcha hacia 220 Elgin St\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Calgary\\\",\\\"ubicacion\\\":\\\"Peace Bridge. 1 Ave SW\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Moncton\\\",\\\"ubicacion\\\":\\\"655 Main Street \\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Kingston Ontario\\\",\\\"ubicacion\\\":\\\"Confederation Park. 2-4pm\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Winnipeg\\\",\\\"ubicacion\\\":\\\"Winnipeg, Manitoba Legislative Building\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"London\\\",\\\"ubicacion\\\":\\\"Victoria Park. Richmond St. Con Central Ave. 12 mediodía a 2pm\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"St Catharine’s Ontario \\\",\\\"ubicacion\\\":\\\"Lakeside park Port Dalhousie \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Toronto\\\",\\\"ubicacion\\\":\\\"Superior Court of Justice, 361 University Avenue\\\",\\\"hora\\\":\\\"14:00\\\"}]\"', 'isVisible', '2024-09-16 22:38:57', '2024-09-25 23:22:30'),
(6, 1, 'CL', 'Chile', '\"[{\\\"ciudad\\\":\\\"Los Angeles \\\",\\\"ubicacion\\\":\\\"Los Angeles. Plaza de Armas \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Iquique \\\",\\\"ubicacion\\\":\\\"Estacionamiento de la universidad Arturo prat \\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Viña del Mar \\\",\\\"ubicacion\\\":\\\"Plaza Eduardo Grove 380 Viña del Mar (al lado de la Parroquia Nuestra Señora de los Dolores)\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Puerto Montt\\\",\\\"ubicacion\\\":\\\"Plaza de Armas \\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Valparaíso \\\",\\\"ubicacion\\\":\\\"Plaza O\'Higgins \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Castro\\\",\\\"ubicacion\\\":\\\"Plaza de armas \\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Santiago \\\",\\\"ubicacion\\\":\\\"Parque Almagro, detrás de la estación del metro.\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Casablanca. Valparaíso \\\",\\\"ubicacion\\\":\\\"Villa Rocío I pasaje las petunias \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Constitución \\\",\\\"ubicacion\\\":\\\"Plaza de Armas \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"La serena\\\",\\\"ubicacion\\\":\\\"El faro monumental\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Talca \\\",\\\"ubicacion\\\":\\\"1 y 2 oriente con la Alameda (Frente al Teatro Regional del Maule) \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"La serena 2\\\",\\\"ubicacion\\\":\\\"Malecón de la serena \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Iquique \\\",\\\"ubicacion\\\":\\\"marcha que se va a comenzar desde las letras de Iquique del lago norte hasta llegar a la plaza 21 de mayo que es dnd vamos a cerrar con una concentración simbólica.\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"CONCEPCIÓN Concepción\\\",\\\"ubicacion\\\":\\\"Víctor Lamas, 499. (Referencia: Víctor Lamas con Rengo) \\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Arica y Parinacota \\\",\\\"ubicacion\\\":\\\"Catedral san marcos Arica  \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Temuco\\\",\\\"ubicacion\\\":\\\"Blanco encalada\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Temuco 2\\\",\\\"ubicacion\\\":\\\"Temuco\\\",\\\"hora\\\":\\\"07:00\\\"},{\\\"ciudad\\\":\\\"Castro - Isla de Chiloé\\\",\\\"ubicacion\\\":\\\"Plaza de Armas Castro \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Copiapó\\\",\\\"ubicacion\\\":\\\"Plaza de Armas\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Angol \\\",\\\"ubicacion\\\":\\\"Plaza de Armas Calle Lautaro \\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Puchuncavi \\\",\\\"ubicacion\\\":\\\"Plaza De Armas de Puchuncavi \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"8va Región del Biobio\\\",\\\"ubicacion\\\":\\\"Plaza de Armas de Cañete\\\",\\\"hora\\\":\\\"14:30\\\"}]\"', 'isVisible', '2024-09-16 22:41:29', '2024-09-26 16:42:03'),
(7, 1, 'CO', 'Colombia', '\"[{\\\"ciudad\\\":\\\"Cúcuta\\\",\\\"ubicacion\\\":\\\"Av 0 calle 10 Plazoleta externa del CC Ventura plaza\\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Bogotá DC\\\",\\\"ubicacion\\\":\\\"Plaza Simón Bolivar\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Cali valle del cauca \\\",\\\"ubicacion\\\":\\\"Carrera 28 40-22 Palmira valle del cauca \\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Medellín \\\",\\\"ubicacion\\\":\\\"Parque de las luces\\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Bucaramanga\\\",\\\"ubicacion\\\":\\\"Carrera 27 con Calle 32\\\",\\\"hora\\\":\\\"15:30\\\"},{\\\"ciudad\\\":\\\"Barranquilla \\\",\\\"ubicacion\\\":\\\"Plaza de la Paz fte. Catedral B/quilla.\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Antioquia - Municipio de Bello \\\",\\\"ubicacion\\\":\\\"Plaza Andrés Bello \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Medellin 2\\\",\\\"ubicacion\\\":\\\"Plaza Botero \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Antioquia-  El Carmen de Viboral \\\",\\\"ubicacion\\\":\\\"Parque Principal \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Antioquia- Municipio Guarne\\\",\\\"ubicacion\\\":\\\"Parque Principal \\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Antioquia- Municipio Rionegro \\\",\\\"ubicacion\\\":\\\"Parque de la Libertad \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Valledupar\\\",\\\"ubicacion\\\":\\\"Plaza primero de Mayo \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Cúcuta 2\\\",\\\"ubicacion\\\":\\\"PLAZOLETA CC. VENTURA PLAZA (Frente a Movistar), Av. Cero con Calle 10 4:30 pm\\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Cúcuta 3\\\",\\\"ubicacion\\\":\\\"PLAZOLETA CC. VENTURA PLAZA\\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Papayan \\\",\\\"ubicacion\\\":\\\"Parque caldas \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Tuluá \\\",\\\"ubicacion\\\":\\\"Parque de la Familia Gidelpa\\\",\\\"hora\\\":\\\"15:30\\\"},{\\\"ciudad\\\":\\\"Santa Marta \\\",\\\"ubicacion\\\":\\\"Parque de Bolivar \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Rionegro\\\",\\\"ubicacion\\\":\\\"Plazoleta del espíritu santo, barrio: El porvenir. de 5pm - 7 pm\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Cartagena de india \\\",\\\"ubicacion\\\":\\\"Plazoleta del Edificio Caja agraria Centro . Detrás del Sombrero Vueltiao . Centro Histórico. \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Ibague\\\",\\\"ubicacion\\\":\\\"Parque Murillo toro\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Antioquia Marinilla \\\",\\\"ubicacion\\\":\\\"Parque Principal \\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-09-16 22:44:25', '2024-09-25 23:16:33'),
(8, 1, 'EC', 'Ecuador', '\"[{\\\"ciudad\\\":\\\"Santo Domingo de los tsachilas\\\",\\\"ubicacion\\\":\\\"Parque Jelen Tenka\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Portoviejo- Manabi\\\",\\\"ubicacion\\\":\\\"Plaza Eloy Alfaro\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Cuenca\\\",\\\"ubicacion\\\":\\\"Panadería Táchira, Plaza Otorongo\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Machala\\\",\\\"ubicacion\\\":\\\"Parque Ismael pasmiño\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Ambato\\\",\\\"ubicacion\\\":\\\"Atrio la catedral de ambato\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Ibarra\\\",\\\"ubicacion\\\":\\\"Redondel de la madre (Boulevard letras Ibarra)\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Los Rios-Babahoyo\\\",\\\"ubicacion\\\":\\\"Malecón a la altura del Hosp Martín Ycaza\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Manta\\\",\\\"ubicacion\\\":\\\"Monumento el Reloj\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Quito\\\",\\\"ubicacion\\\":\\\"Parque Bicentenario pista ppal (entrada Av amazonas)\\\",\\\"hora\\\":\\\"15:30\\\"},{\\\"ciudad\\\":\\\"Guayaquil\\\",\\\"ubicacion\\\":\\\"Explanada Agora, Teatro Centro Civico\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Galápagos- Puerto Ahora Isla Santa Cruz\\\",\\\"ubicacion\\\":\\\"Parque San Francisco, Muelle de pasajeros\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Azogues\\\",\\\"ubicacion\\\":\\\"Restaurant Venezuelan Fast Food, Av 16 de abril\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Echeandia Provincia Bolívar \\\",\\\"ubicacion\\\":\\\"Plaza Bolívar de Echeandia\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Cantón Nabón \\\",\\\"ubicacion\\\":\\\"Av. constitución c/ Calle onda, Multiservicios Virgen del Valle\\\",\\\"hora\\\":\\\"21:00\\\"}]\"', 'isVisible', '2024-09-16 22:48:34', '2024-09-25 18:56:39'),
(9, 1, 'US', 'Estados Unidos', '\"[{\\\"ciudad\\\":\\\"Raleigh\\\",\\\"ubicacion\\\":\\\"201 S Blount St, Raleigh, NC 27601\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Jacksonville \\\",\\\"ubicacion\\\":\\\"1620 Riverside Ave, Jacksonville, FL 32204. de 4pm a 6pm\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Austin, Texas\\\",\\\"ubicacion\\\":\\\"1100 Congress Ave, Austin, Texas 78701\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Washington\\\",\\\"ubicacion\\\":\\\"United States Capitol, Washington DC, 20004\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Fort Myers \\\",\\\"ubicacion\\\":\\\"1140 Colonial Boulevard \\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Philadelphia \\\",\\\"ubicacion\\\":\\\"Philadelphia City Hall. 1400 John F Kennedy Blvd ( enfrente del Templo Masónico)\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Wilmington, Delaware\\\",\\\"ubicacion\\\":\\\"1000 N. Market St. Wilmington, DE 19801\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Midland\\\",\\\"ubicacion\\\":\\\"Beal Park. 5200 W Wall St, Midland, TX\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Los Angeles\\\",\\\"ubicacion\\\":\\\" 532 S Olive St, Los Ángeles, CA 90013, de 5 pm a 8 pm\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Naples\\\",\\\"ubicacion\\\":\\\"5800 Golden Gate Pkwy, Pelican Lutheran Church. Naples Fl 34116, de 4:00 pm a 6:00 pm\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Boston\\\",\\\"ubicacion\\\":\\\"Faneuil Hall Square, Boston, Massachusetts \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Manor \\\",\\\"ubicacion\\\":\\\"12800 Lexington St Manor Texas 78653\\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Dallas\\\",\\\"ubicacion\\\":\\\"Vitruvian park, 3875 Ponte Av, Addison Tx 75001. de 6:00 pm a 8:00 pm \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Seattle \\\",\\\"ubicacion\\\":\\\"Bellevue downtown park\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Oklahoma city \\\",\\\"ubicacion\\\":\\\"2300 N Lincoln Blvd. Oklahoma City , Ok 73105\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Atlanta\\\",\\\"ubicacion\\\":\\\"Thrasher Park. 93 Park Dr, Norcross, GA 30071. de 2pm a 5pm\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Charlotte\\\",\\\"ubicacion\\\":\\\"800 E Third St, Charlotte, NC  28202\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Nashville\\\",\\\"ubicacion\\\":\\\"San José Fiesta Restaurant. 99 Wallace Rd Nashville TN.37211\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"New York\\\",\\\"ubicacion\\\":\\\"Times Squares Times Squared 3015 al frente de la Levi’s. de 6 pm a 8 pm\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"The Woodlands \\\",\\\"ubicacion\\\":\\\"Lake Woodlands Dr Bridge. de 11 am a 12:30 pm\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Batón Rouge\\\",\\\"ubicacion\\\":\\\"25692 Rosedown Dr, Denham Springs, LA 70726-6333.\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Columbia, SC\\\",\\\"ubicacion\\\":\\\"1100 Gervais St. Columbia, SC 29208. de 5:00 PM - 7:00 PM\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Chicago\\\",\\\"ubicacion\\\":\\\"Congress Plaza, North or South, E Congress Plaza Dr.  de 3 PM a 7PM\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Chicago 2\\\",\\\"ubicacion\\\":\\\"Plaza of the Americas, 430 Michigan Av. de 3PM a 7PM\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Richmond \\\",\\\"ubicacion\\\":\\\"620 W Main Street Richmond Virginia 23220\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Tampa \\\",\\\"ubicacion\\\":\\\"Are-Pitas 2734 University Square Dr. de 4:30 PM a 7:00 PM\\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Sandy, Utah \\\",\\\"ubicacion\\\":\\\"9750 S 300W, UT 84070. de 3:00 pm a 4:pm\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Detroit, Michigan \\\",\\\"ubicacion\\\":\\\"Grand Circus Park. de 5.00  a 6.00 pm \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"San Antonio, TX\\\",\\\"ubicacion\\\":\\\"300 Alamo Plaza, San Antonio, TX 78205\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Minneapolis\\\",\\\"ubicacion\\\":\\\"Sculpture Garden 14357 Loring Greenway,   Minneapolis, MN 55403. de 4:00 a 7:00 pm\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Houston \\\",\\\"ubicacion\\\":\\\"Bendwood Park, 12700 Kimberley Ln, Houston, TX 77024\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Omaha, Nebraska\\\",\\\"ubicacion\\\":\\\"Elmwood Park playground. de 4 a 6 pm\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Chicago\\\",\\\"ubicacion\\\":\\\"Congress Plaza Garden-North E Congress Plaza Dr, Chicago, IL\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"New Orleans\\\",\\\"ubicacion\\\":\\\"City Park pavilion. 1 Palm Dr New Orleans, LA 70124 United States. de 5 pm a 7 pm\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Chicago 3\\\",\\\"ubicacion\\\":\\\"Plaza of the Americas 430 Michigan Av, Chicago,IL\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Phoenix\\\",\\\"ubicacion\\\":\\\"Govermental Mall, 1700 W Washington ST,  Phoenix AZ. 85007. de 10:00 AM a  1:00 PM\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Louisville \\\",\\\"ubicacion\\\":\\\"8019 Dixie Hwy Louisville Kentucky 40258. de  5:30pm a 7:00pm\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"San Diego, CA\\\",\\\"ubicacion\\\":\\\"Balboa Park Park Blvd and President Way Park and President’s Lawn  San Diego, CA 92101. de 12:30pm a 3:30pm \\\",\\\"hora\\\":\\\"12:30\\\"},{\\\"ciudad\\\":\\\"Deerfield Beach\\\",\\\"ubicacion\\\":\\\"Gustico Bistró. 2249 W Hillsboro Blvd, Deerfield Beach, Fl 33442\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Tulsa\\\",\\\"ubicacion\\\":\\\"S Yale Ave & E 57th st S SB, Tulsa, OK 74135. 4:00pm 6:00pm \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"New York\\\",\\\"ubicacion\\\":\\\"Times square. de 6:00 pm to 8:00 pm\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Hightstown-New Jersey \\\",\\\"ubicacion\\\":\\\"Memorial Park - 114 Franklin St, Hightstown, NJ 08520. 10:00am -2-00pm\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"San Francisco \\\",\\\"ubicacion\\\":\\\"Harry Bridges Plaza, The Embarcadero, San Francisco, CA 94111 - Frente al Ferry Building. de 10:00 AM - 12:00 PM\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Orlando\\\",\\\"ubicacion\\\":\\\"1709 N John Young Pkwy, Kissimmee Fl 34741\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Tulsa2\\\",\\\"ubicacion\\\":\\\"5505 East 51st Street South, Tulsa, OK 74135. de 4:00 pm a 6:00pm \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Port Saint Lucie, FL\\\",\\\"ubicacion\\\":\\\"119 SW CASHMERE BLVD, FL\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Worcester \\\",\\\"ubicacion\\\":\\\"965 Main St, Worcester, MA 01610. University park.\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Corpus Christi\\\",\\\"ubicacion\\\":\\\"602 S Shoreline Blvd. 11 am to 1 pm\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Providence \\\",\\\"ubicacion\\\":\\\"82 Smith St Providence. RI. Afuera del state house\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Tucson\\\",\\\"ubicacion\\\":\\\"Gene c. Reid Park, Tucson AZ 85716. Esquina de S Country Club Rd y E 22nd St\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Providence, Rhode Island\\\",\\\"ubicacion\\\":\\\"Ewing Multicultural Center\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Charleston\\\",\\\"ubicacion\\\":\\\"1 Vendue Range Charleston SC 29401\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Miami \\\",\\\"ubicacion\\\":\\\"3005 NW 92nd Ave, Doral, FL 33172. de 6 pm hasta las 8 pm \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Indianápolis \\\",\\\"ubicacion\\\":\\\"Monument Circle, 1 Monument Circle, Indianapolis, In 46204. de 4pm a 6pm\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Sumter\\\",\\\"ubicacion\\\":\\\"Main con Liberty. 10 E Liberty St  Sumter, SC 29150\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Anchorage, Alaska\\\",\\\"ubicacion\\\":\\\"Northwood Street con Rasberry road. 4 PM Alaska Time\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Lafayette, Louisiana\\\",\\\"ubicacion\\\":\\\"233 N College Rd. Lafayette, LA 70506. 5 a 7 pm\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Kansas City\\\",\\\"ubicacion\\\":\\\"Fuente del Plaza. \\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-09-16 22:53:03', '2024-09-26 18:37:34'),
(10, 1, 'MX', 'México', '\"[{\\\"ciudad\\\":\\\"Villahermosa\\\",\\\"ubicacion\\\":\\\"Parque La Choca \\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Ciudad del Carmen\\\",\\\"ubicacion\\\":\\\"Barco Isla de Tris Playa Norte\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Cancún\\\",\\\"ubicacion\\\":\\\"Av. Bonampack Malecón Tajamar frente Plaza las Américas\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Mérida\\\",\\\"ubicacion\\\":\\\"Monumento a la Patria\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"CDMX\\\",\\\"ubicacion\\\":\\\"Monumento a la Revolución\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Chihuahua\\\",\\\"ubicacion\\\":\\\"Plaza Lerdo\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Leon Guanajuato \\\",\\\"ubicacion\\\":\\\"Arco de la Calzada\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Guadalajara\\\",\\\"ubicacion\\\":\\\"Paseo Chapultepec\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Colima\\\",\\\"ubicacion\\\":\\\"Jardín Libertad centro\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Aguascaliente\\\",\\\"ubicacion\\\":\\\"Plaza Patria\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Puerto Vallarta\\\",\\\"ubicacion\\\":\\\"Faro del malecón\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Toluca\\\",\\\"ubicacion\\\":\\\"Calle López rayón monumento a Simón Bolívar \\\",\\\"hora\\\":\\\"10:30\\\"},{\\\"ciudad\\\":\\\"Cuernavaca\\\",\\\"ubicacion\\\":\\\"Zócalo de Cuernavaca\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Tijuana\\\",\\\"ubicacion\\\":\\\"Glorieta Cuauhtémoc\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Veracruz Puerto\\\",\\\"ubicacion\\\":\\\"Asta Bandera Blvd. Manuel Avila Camaño\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"San Luis Potosi\\\",\\\"ubicacion\\\":\\\"Plaza de los Fundadores\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Puebla\\\",\\\"ubicacion\\\":\\\"Zócalo de Puebla\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Monterrey\\\",\\\"ubicacion\\\":\\\"Plaza Simón Bolivar Col.Obispado\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Morelia\\\",\\\"ubicacion\\\":\\\"La Fuente de las Tarascas\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Tampico\\\",\\\"ubicacion\\\":\\\"Iglesia nuestra señora de Lourdes\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Torreón\\\",\\\"ubicacion\\\":\\\"Fuente del Pensador (Alameda de Zaragoza)\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Queretaro\\\",\\\"ubicacion\\\":\\\"Plaza el estudiante Calle tecnológico \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Puerto Morelos\\\",\\\"ubicacion\\\":\\\"Ventana al Mar calle Rafael E. Melgar\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Los Cabos\\\",\\\"ubicacion\\\":\\\"Plaza de la Delegacion\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Tulum\\\",\\\"ubicacion\\\":\\\"Palma central av kukulcan con xcaret Tulum\\\",\\\"hora\\\":\\\"08:00\\\"},{\\\"ciudad\\\":\\\"Juarez Chihuahua\\\",\\\"ubicacion\\\":\\\"Monumento a la Mexicanidad, Chamizal\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Xalapa\\\",\\\"ubicacion\\\":\\\"Parque Juarez\\\",\\\"hora\\\":\\\"20:00\\\"}]\"', 'isVisible', '2024-09-16 22:56:01', '2024-09-24 18:07:23'),
(11, 1, 'PE', 'Perú', '\"[{\\\"ciudad\\\":\\\"Trujillo\\\",\\\"ubicacion\\\":\\\"Plaza de Armas \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Arequipa\\\",\\\"ubicacion\\\":\\\"Plaza las Américas. Cerro Colorado \\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Tarapoto \\\",\\\"ubicacion\\\":\\\"Parque Suchiche\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Chiclayo\\\",\\\"ubicacion\\\":\\\"Plaza San Carlos\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Huancayo\\\",\\\"ubicacion\\\":\\\"Parque Constitución \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Lima\\\",\\\"ubicacion\\\":\\\"Parque Alameda 28 de Julio, frente al Parque de la Exposición \\\",\\\"hora\\\":\\\"15:00\\\"}]\"', 'isVisible', '2024-09-16 22:57:05', '2024-09-24 18:08:45'),
(12, 1, 'UY', 'Uruguay', '\"[{\\\"ciudad\\\":\\\"Montevideo \\\",\\\"ubicacion\\\":\\\"Plaza Independencia \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Punta del Este\\\",\\\"ubicacion\\\":\\\"Av Italia frente Plaza Mexico\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Rodriguez, departamento de san José\\\",\\\"ubicacion\\\":\\\"Plaza Rodriguez \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Ciudad de la Costa\\\",\\\"ubicacion\\\":\\\"Plaza Becu Av. Giannattasio\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-09-16 22:57:50', '2024-09-20 19:36:54'),
(13, 1, 'IN', 'India', '\"[{\\\"ciudad\\\":\\\"Bombay, Pune Maharashtra \\\",\\\"ubicacion\\\":\\\"Kalyani Nagar \\\",\\\"hora\\\":\\\"10:30\\\"},{\\\"ciudad\\\":\\\"Pune\\\",\\\"ubicacion\\\":\\\"Kalyan nagar \\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Bangalore\\\",\\\"ubicacion\\\":\\\"Bangalore,  Gokul 95 (ACTUALIZACIÓN)\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Bangalore 2\\\",\\\"ubicacion\\\":\\\"Estado de Karnakata\\\",\\\"hora\\\":\\\"10:30\\\"}]\"', 'isVisible', '2024-09-16 22:59:42', '2024-09-23 17:20:07'),
(14, 1, 'JP', 'Japón', '\"[{\\\"ciudad\\\":\\\"Matsumoto\\\",\\\"ubicacion\\\":\\\"Castillo de matsumoto\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Kobe\\\",\\\"ubicacion\\\":\\\"Meriken Park, frente a BE KOBE\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Osaka\\\",\\\"ubicacion\\\":\\\"Castillo de Osaka (plaza del castillo)\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Nagoya\\\",\\\"ubicacion\\\":\\\"Torre de Nagoya\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Tokyo\\\",\\\"ubicacion\\\":\\\"Estación central de Tokyo\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Yokohama\\\",\\\"ubicacion\\\":\\\"Yamashita Koen, Frente al café The Warf House\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Hiroshima\\\",\\\"ubicacion\\\":\\\"Parque Memorial de la Paz. Frente al Domo de la Bomba Atómica\\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-09-16 23:02:24', '2024-09-18 22:23:44'),
(15, 1, 'MY', 'Malasia', '\"[{\\\"ciudad\\\":\\\"Kuala Lumpur\\\",\\\"ubicacion\\\":\\\"Exxon Mobil parking KLCC park \\\",\\\"hora\\\":\\\"10:00\\\"}]\"', 'isVisible', '2024-09-16 23:04:21', '2024-09-16 23:04:21'),
(16, 1, 'DE', 'Alemania', '\"[{\\\"ciudad\\\":\\\"Berlin \\\",\\\"ubicacion\\\":\\\"Wittenbergplatz (Auf der Seite von Kadewe)15 - 17 horas\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Munich \\\",\\\"ubicacion\\\":\\\"Wittelsbacherplatz , Briennerstr. 6-10 Múnich. de 1:00 pm - 3:30 pm \\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Köln/Colonia\\\",\\\"ubicacion\\\":\\\"Breslauerplatz (hinter hbf)\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Stuttgart\\\",\\\"ubicacion\\\":\\\"Schlossplatz vor der Comerzbank. 16:00 a 18:00\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-09-16 23:07:46', '2024-09-25 18:55:50'),
(17, 1, 'ES', 'España', '\"[{\\\"ciudad\\\":\\\"Sevilla \\\",\\\"ubicacion\\\":\\\"Plaza Nueva\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Pamplona\\\",\\\"ubicacion\\\":\\\"Plaza del Castillo - Centro de Pamplona\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Ourense \\\",\\\"ubicacion\\\":\\\"Plaza Mayor\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Javea\\\",\\\"ubicacion\\\":\\\"Paseo de La Grava \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Bilbao\\\",\\\"ubicacion\\\":\\\"Esplanada Museo Gugenheim \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Alicante-Alicante\\\",\\\"ubicacion\\\":\\\"Plaza de los Luceros de Alicante \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Isla salinetas gran canarias\\\",\\\"ubicacion\\\":\\\"Gran Canarias España \\\",\\\"hora\\\":\\\"10:30\\\"},{\\\"ciudad\\\":\\\"Tenerife\\\",\\\"ubicacion\\\":\\\"Desde el Consulado de Venezuela hasta el Cabildo de Tenerife\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Icod de Los Vinos\\\",\\\"ubicacion\\\":\\\"Plaza Andrés de Lorenzo Cáceres\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Vigo\\\",\\\"ubicacion\\\":\\\"Calle Príncipe, La Farola.\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Bandeira, Silleda\\\",\\\"ubicacion\\\":\\\"frente a Plazoleta\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Girona\\\",\\\"ubicacion\\\":\\\"Plaza Independencia\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Granada \\\",\\\"ubicacion\\\":\\\"Fuente de las Batallas \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Santiago de Compostela \\\",\\\"ubicacion\\\":\\\"Praza do Obradoiro \\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Salamanca\\\",\\\"ubicacion\\\":\\\"Plaza Mayor de Salamanca \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Ferrol\\\",\\\"ubicacion\\\":\\\"Plaza de España\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Pontevedra\\\",\\\"ubicacion\\\":\\\"Plaza la Peregrina \\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"A Coruña \\\",\\\"ubicacion\\\":\\\"Obelisco \\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Alicante \\\",\\\"ubicacion\\\":\\\"Plaza de los Luceros Alicante \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Ourense\\\",\\\"ubicacion\\\":\\\"Plaza Mayor\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Vitoria-Gasteiz\\\",\\\"ubicacion\\\":\\\"Plaza Virgen Blanca\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Miranda de Ebro - Burgos\\\",\\\"ubicacion\\\":\\\"Parque Antonio Machado\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Barcelona\\\",\\\"ubicacion\\\":\\\"Arco del Triunfo\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Moaña\\\",\\\"ubicacion\\\":\\\"Frente al Ayuntamiento de Moaña\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Vilanova de arousa\\\",\\\"ubicacion\\\":\\\"Parque Xerardo Fernández Albor\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Arrecife, Lanzarote\\\",\\\"ubicacion\\\":\\\"Parque José Ramírez Cerda, Kiosco La Música frente al antiguo Correos.\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Valverde, El Hierro\\\",\\\"ubicacion\\\":\\\"Plaza Quintero Núñez Virrey de Manila\\\",\\\"hora\\\":\\\"19:30\\\"},{\\\"ciudad\\\":\\\"Santander\\\",\\\"ubicacion\\\":\\\"Plaza del Ayuntamiento, Santander\\\",\\\"hora\\\":\\\"19:30\\\"},{\\\"ciudad\\\":\\\"Donostia/San Sebastián \\\",\\\"ubicacion\\\":\\\"Kiosko Plaza del Boulevard Donostia, San Sebastian \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Lugo\\\",\\\"ubicacion\\\":\\\"Plaza Mayor \\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Palma de Mallorca\\\",\\\"ubicacion\\\":\\\"Plaza España, 18:00 a 20:00\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Melide\\\",\\\"ubicacion\\\":\\\"Plaza de San Roque, Avenida de Lugo\\\",\\\"hora\\\":\\\"21:30\\\"},{\\\"ciudad\\\":\\\"Valladolid \\\",\\\"ubicacion\\\":\\\"Plaza Zorrilla\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Santa Cruz de La Palma\\\",\\\"ubicacion\\\":\\\"Plaza de España\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"San Vicente \\\",\\\"ubicacion\\\":\\\"Partida Inmediaciones. Número 30\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"SN Vicente del Raspeig \\\",\\\"ubicacion\\\":\\\"Calle Alfonso XIII\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"San Sebastián de La Gomera\\\",\\\"ubicacion\\\":\\\"Parada de Taxis de San Sebastián\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Cambados\\\",\\\"ubicacion\\\":\\\"Frente al Ayuntamiento de Cambados\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Caldas de Reis \\\",\\\"ubicacion\\\":\\\"Plaza Las Palmera\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Vilagarcia de Arousa\\\",\\\"ubicacion\\\":\\\"Plaza Galicia\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Alicante 2\\\",\\\"ubicacion\\\":\\\"San Vicente Del Raspeig\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Tarragona\\\",\\\"ubicacion\\\":\\\"Rambla Nova frente a Mc Donald\'s\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Bilbao2\\\",\\\"ubicacion\\\":\\\"Frente al Ayuntamiento de Bilbao (Escultura Ovoide)\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Logroño\\\",\\\"ubicacion\\\":\\\"Plaza Espolón, Monumento a las Víctimas del Terrorismo. \\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Santo Domingo de la Calzada\\\",\\\"ubicacion\\\":\\\"Plaza del Ayuntamiento \\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"A ESTRADA A Estrada\\\",\\\"ubicacion\\\":\\\"Plaza Ayuntamiento\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Asturias Mieres\\\",\\\"ubicacion\\\":\\\"Adornamiento de Mieres\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Leon\\\",\\\"ubicacion\\\":\\\"Museo Casa Botines. de 20:00 a 22:00\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Avilés \\\",\\\"ubicacion\\\":\\\"Plaza de España (ayuntamiento)\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Pola de Siero Asturias\\\",\\\"ubicacion\\\":\\\"Plaza central\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Valencia \\\",\\\"ubicacion\\\":\\\"Plaça de la Mare de Déu, Ciutat Vella \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Elche centro \\\",\\\"ubicacion\\\":\\\"Paseo de la estación al lado bandera de España\\\",\\\"hora\\\":\\\"17:15\\\"},{\\\"ciudad\\\":\\\"Lleida \\\",\\\"ubicacion\\\":\\\"Estación Renfe\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Granada\\\",\\\"ubicacion\\\":\\\"Plaza Fuente de las Batallas. de 18:00 - 20:00\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Oviedo Asturias\\\",\\\"ubicacion\\\":\\\"Plaza La  Escandalera.\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Jijona\\\",\\\"ubicacion\\\":\\\"Calle Alicante \\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Torrevieja\\\",\\\"ubicacion\\\":\\\"Paseo Juan Aparicio, Frente al Hombre del Mar.\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Arenales del Sol Elche\\\",\\\"ubicacion\\\":\\\"Paseo Marítimo. de 11:00 a 12:00H\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Gijon Asturias\\\",\\\"ubicacion\\\":\\\"Plaza Italia Gijón\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Ourense\\\",\\\"ubicacion\\\":\\\"Plaza Mayor\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Villagarcia\\\",\\\"ubicacion\\\":\\\"Plaza Galicia\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Lalin\\\",\\\"ubicacion\\\":\\\"Plaza La Iglesia\\\",\\\"hora\\\":\\\"21:00\\\"},{\\\"ciudad\\\":\\\"Avion\\\",\\\"ubicacion\\\":\\\"Covelo\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Avion 2\\\",\\\"ubicacion\\\":\\\"Plaza del Ayuntamiento\\\",\\\"hora\\\":\\\"19:30\\\"},{\\\"ciudad\\\":\\\"El Campello\\\",\\\"ubicacion\\\":\\\"Calle san Bartolomé 35\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Jijona 2\\\",\\\"ubicacion\\\":\\\"Calle Alicante \\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"San juan pueblo Alicante \\\",\\\"ubicacion\\\":\\\"Av. La Rambla. de 5 a 6pm\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Arenales del Sol Elxe \\\",\\\"ubicacion\\\":\\\"Paseo Marítimo Arenales del Sol. de 11:00 - 12:00H\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Madrid\\\",\\\"ubicacion\\\":\\\"Puerta del Sol\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"O Carballiño\\\",\\\"ubicacion\\\":\\\"Plaza Mayor\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"San Cristóbal de La Laguna \\\",\\\"ubicacion\\\":\\\"Desde Plaza del Adelantado hasta La Concepción \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Santander\\\",\\\"ubicacion\\\":\\\"Plaza México\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Almoradi\\\",\\\"ubicacion\\\":\\\"Plaza Constitución \\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Zaragoza \\\",\\\"ubicacion\\\":\\\"Plaza de España\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Santander - Cantabria\\\",\\\"ubicacion\\\":\\\"Plaza Méjico \\\",\\\"hora\\\":\\\"19:30\\\"},{\\\"ciudad\\\":\\\"Granada\\\",\\\"ubicacion\\\":\\\"Fuente de las Batallas, Calle Acera del Darro, Granada\\\",\\\"hora\\\":\\\"20:00\\\"},{\\\"ciudad\\\":\\\"Fuenlabrada \\\",\\\"ubicacion\\\":\\\"Plaza Bellas Artes, Loranca\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Binéfar Provincia Huesca\\\",\\\"ubicacion\\\":\\\"Plaza España\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Maria de Huerva - Aragon\\\",\\\"ubicacion\\\":\\\"Plaza de España 1\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Lleida\\\",\\\"ubicacion\\\":\\\"Frente Estación de RENFE. de 19 a 20 h\\\",\\\"hora\\\":\\\"19:00\\\"}]\"', 'isVisible', '2024-09-16 23:12:03', '2024-09-26 16:43:28'),
(18, 1, 'IS', 'Islandia', '\"[{\\\"ciudad\\\":\\\"Reykjavik \\\",\\\"ubicacion\\\":\\\"Capital \\\",\\\"hora\\\":\\\"14:00\\\"}]\"', 'isVisible', '2024-09-16 23:12:48', '2024-09-16 23:12:48'),
(19, 1, 'IL', 'Israel', '\"[{\\\"ciudad\\\":\\\"Jerusalén \\\",\\\"ubicacion\\\":\\\"Plaza tzion Jerusalén \\\",\\\"hora\\\":\\\"20:30\\\"},{\\\"ciudad\\\":\\\"Tel Aviv\\\",\\\"ubicacion\\\":\\\"Plaza Rabin\\\",\\\"hora\\\":\\\"20:30\\\"},{\\\"ciudad\\\":\\\"Ra\'anana \\\",\\\"ubicacion\\\":\\\"Yad Levanim Ahuza 147\\\",\\\"hora\\\":\\\"20:30\\\"}]\"', 'isVisible', '2024-09-16 23:13:49', '2024-09-23 17:55:51'),
(20, 1, 'IT', 'Italia', '\"[{\\\"ciudad\\\":\\\"Brescia \\\",\\\"ubicacion\\\":\\\"Largo Formentone \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Milán\\\",\\\"ubicacion\\\":\\\"Piazza San Babila \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Florencia\\\",\\\"ubicacion\\\":\\\"Piazza di Santa María Novella \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Bari\\\",\\\"ubicacion\\\":\\\"Piazza del Ferrarese\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Corato\\\",\\\"ubicacion\\\":\\\"Vía Aldo Moro 56\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Boloña\\\",\\\"ubicacion\\\":\\\"Scalinata del Pincio (Inicio Vía Indipendenza)\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Nápoles\\\",\\\"ubicacion\\\":\\\"Piazza del Plebiscito \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Roma\\\",\\\"ubicacion\\\":\\\"Largo di Torre Argentina. (Vía S.N. DeCesarini)\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Abano Terme\\\",\\\"ubicacion\\\":\\\"Via Monte Lozzo 7\\\",\\\"hora\\\":\\\"16:30\\\"},{\\\"ciudad\\\":\\\"Roma 2\\\",\\\"ubicacion\\\":\\\"Vía di San Nicola de\' Cesarini \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Rimini\\\",\\\"ubicacion\\\":\\\"Piazza Cavour\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Genova\\\",\\\"ubicacion\\\":\\\"Piazza de Ferrari \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Piacenza \\\",\\\"ubicacion\\\":\\\"Piazza Cavalli \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Torino\\\",\\\"ubicacion\\\":\\\"Piazza Castello. 17:30/19:30\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Balestrate, Sicilia\\\",\\\"ubicacion\\\":\\\"Piazza Rettore Evola\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Catania, Sicilia\\\",\\\"ubicacion\\\":\\\"Piazza Stesicoro\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Palermo, Sicilia\\\",\\\"ubicacion\\\":\\\"Piazza Giuseppe Verdi, Teatro Massimo\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Montesilvano\\\",\\\"ubicacion\\\":\\\"Piazza Largo Venezuela\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Marina di Carrara\\\",\\\"ubicacion\\\":\\\"Piazza Menconi\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Agropoli\\\",\\\"ubicacion\\\":\\\"Piazza Vittorio Veneto\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Campobasso\\\",\\\"ubicacion\\\":\\\"Piazza del Municipio\\\\n\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Modica, Sicilia\\\",\\\"ubicacion\\\":\\\"Piazza Matteotti\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Parma\\\",\\\"ubicacion\\\":\\\"La Pilotta\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Scalea\\\",\\\"ubicacion\\\":\\\"Piazza Caloprese\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Bisenti\\\",\\\"ubicacion\\\":\\\"Redoma di Bisenti. de 15:00 a16:00\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Cagliari\\\",\\\"ubicacion\\\":\\\"Parco Terramini\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Cosenza\\\",\\\"ubicacion\\\":\\\"Piazza XI Settembre\\\",\\\"hora\\\":\\\"18:30\\\"},{\\\"ciudad\\\":\\\"Venezia\\\",\\\"ubicacion\\\":\\\"Stazione Ferrovia Santa Lucia \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Isola del Gran Sasso\\\",\\\"ubicacion\\\":\\\"Centro Isola\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Monastir\\\",\\\"ubicacion\\\":\\\"Frente a Biblioteca Comunale Grazia Deledda\\\",\\\"hora\\\":\\\"11:30\\\"},{\\\"ciudad\\\":\\\"Piacenza\\\",\\\"ubicacion\\\":\\\"Piazza Duomo de 4 a 6 pm\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Verona\\\",\\\"ubicacion\\\":\\\"Piazza Bra\\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-09-16 23:14:50', '2024-09-26 16:40:45'),
(21, 1, 'NO', 'Noruega', '\"[{\\\"ciudad\\\":\\\"Oslo\\\",\\\"ubicacion\\\":\\\"STORTINGET, Karl Johans gt.22, Oslo/Noruega\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Bergen \\\",\\\"ubicacion\\\":\\\"Festplassen 12:00-14:00 \\\",\\\"hora\\\":\\\"12:00\\\"}]\"', 'isVisible', '2024-09-16 23:15:36', '2024-09-20 19:20:18'),
(22, 1, 'GB', 'Reino Unido', '\"[{\\\"ciudad\\\":\\\"Bristol\\\",\\\"ubicacion\\\":\\\"Bristol City Council, College Green Bristol City Council, College Green\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Edinburgh, escocía. \\\",\\\"ubicacion\\\":\\\"The Royal Scottish Academy Square \\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Londres\\\",\\\"ubicacion\\\":\\\"Parliament Square \\\",\\\"hora\\\":\\\"16:06\\\"},{\\\"ciudad\\\":\\\"Portsmouth \\\",\\\"ubicacion\\\":\\\"Caminata:Punto de encuentro Southsea y termina Cathedral de Old Portsmouth. \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Oxford\\\",\\\"ubicacion\\\":\\\"Cornmaket Street\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Bournemouth \\\",\\\"ubicacion\\\":\\\"Lower Garden\\\",\\\"hora\\\":\\\"10:30\\\"},{\\\"ciudad\\\":\\\"Portsmouth 2\\\",\\\"ubicacion\\\":\\\"Caminata desde The Naval war Memorial hasta la Cathedral Old Portsmouh. \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Tunbridge Wells\\\",\\\"ubicacion\\\":\\\"The Millenium Clock Tower Calverley Road\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Coventry\\\",\\\"ubicacion\\\":\\\"Broadgate. de 18h a 19h.\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Dublín \\\",\\\"ubicacion\\\":\\\"Barnardo Square  Dame Street (D2).  de 2:00 Pm a 4:00 Pm \\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Knighton\\\",\\\"ubicacion\\\":\\\"West St, Knighton LD7 1EN\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Manchester\\\",\\\"ubicacion\\\":\\\"St. Peter\'s Square, M2 5PD, UK\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Stafford\\\",\\\"ubicacion\\\":\\\"Stafford Market Square. Market St, Forebridge Stafford ST16 2LD England. de 2:00-4:00\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Aberdeen\\\",\\\"ubicacion\\\":\\\"Castle Gate\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Reading\\\",\\\"ubicacion\\\":\\\"Friar St., Reading. RG1 1DB (detrás de M&S). de 2 a 4 pm\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"South Ockendon \\\",\\\"ubicacion\\\":\\\"Toplands Avenue Aveley. South Ockendon. \\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Guildford \\\",\\\"ubicacion\\\":\\\"Guildford Cathedral, Stag Hill\\\",\\\"hora\\\":\\\"13:30\\\"},{\\\"ciudad\\\":\\\"Nottingham \\\",\\\"ubicacion\\\":\\\"Old Market Square. Nottingham. NG1 2HU. de 1pm-3pm\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Birmingham \\\",\\\"ubicacion\\\":\\\"Centenary Sq, Birmingham B1 2ND. 2:00pm a 4:00pm \\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Banbury\\\",\\\"ubicacion\\\":\\\"Centro de Banbury Oxfordshire\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Aldershot\\\",\\\"ubicacion\\\":\\\"Alderhsot train station\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Nottingham \\\",\\\"ubicacion\\\":\\\"Weekday Cross Monument. Nottingham NG1 2GB. 1pm a 3pm\\\",\\\"hora\\\":\\\"13:00\\\"}]\"', 'isVisible', '2024-09-16 23:19:11', '2024-09-26 18:38:53'),
(23, 1, 'AU', 'Australia', '\"[{\\\"ciudad\\\":\\\"Perth \\\",\\\"ubicacion\\\":\\\"Parliament of Western Australia \\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Agnes Water  \\\",\\\"ubicacion\\\":\\\"Main Beach\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Canberra\\\",\\\"ubicacion\\\":\\\"City Hill (Vernon Circuit cnr Theatre Ln) \\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Sydney \\\",\\\"ubicacion\\\":\\\"West Circular Quay (North end of the Overseas Terminal) \\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\" Warrnambool    \\\",\\\"ubicacion\\\":\\\"Warrnambool Civic Green, 34-48 Liebig St\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Gold Coast\\\",\\\"ubicacion\\\":\\\"Victoria Park, Broadbeach\\\",\\\"hora\\\":\\\"13:30\\\"},{\\\"ciudad\\\":\\\"Melbourne \\\",\\\"ubicacion\\\":\\\"Shrine of Remembrance, Botanical Garden\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Brisbane \\\",\\\"ubicacion\\\":\\\"King George Square\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Newcastle     \\\",\\\"ubicacion\\\":\\\"Dixon Park\\\",\\\"hora\\\":\\\"12:30\\\"},{\\\"ciudad\\\":\\\"Noosa  \\\",\\\"ubicacion\\\":\\\"The Big Pelican  \\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Geelong\\\",\\\"ubicacion\\\":\\\"Hitchcock Memorial Rotunda, Gheringhap St. 1\\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Gladstone\\\",\\\"ubicacion\\\":\\\"Marina Parklands\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Adelaide \\\",\\\"ubicacion\\\":\\\"Park 12, Warrawirra (detras del St Peter\'s College Boat Club) \\\",\\\"hora\\\":\\\"13:30\\\"}]\"', 'isVisible', '2024-09-16 23:19:48', '2024-09-25 18:35:26');
INSERT INTO `countries` (`id`, `user_id`, `code`, `title`, `ciudades`, `isActive`, `created_at`, `updated_at`) VALUES
(24, 1, 'FR', 'Francia', '\"[{\\\"ciudad\\\":\\\"Toulouse\\\",\\\"ubicacion\\\":\\\"Allées Jean Jaurès (Ramblas)\\\",\\\"hora\\\":\\\"15:30\\\"},{\\\"ciudad\\\":\\\"La Rochelle\\\",\\\"ubicacion\\\":\\\"Statue Duperré a côté du grand horloge \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Lyon\\\",\\\"ubicacion\\\":\\\"Place Bellecour \\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Dijon \\\",\\\"ubicacion\\\":\\\"Place Repúblique de Dijon \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"París\\\",\\\"ubicacion\\\":\\\"Place de la Nation, terre-plein de l\'Avenue du Trône\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Lille\\\",\\\"ubicacion\\\":\\\"Opera de Lille. 15h a 17h\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Bordeaux\\\",\\\"ubicacion\\\":\\\"Place de la bourse\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Saint Pierre,  Isla Reunión,  Océano Índico \\\",\\\"ubicacion\\\":\\\"63C rue Charles Baudelaire, 97430 Le Tampon \\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Bayonne \\\",\\\"ubicacion\\\":\\\"Place de la Liberté. 17h a 20h\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Marsella\\\",\\\"ubicacion\\\":\\\"Quai des belges (sous l’ombrière)\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Nantes \\\",\\\"ubicacion\\\":\\\"Place Royale \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Rouen\\\",\\\"ubicacion\\\":\\\"Place de la Cathédrale. de 17h à 19h\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Besançon\\\",\\\"ubicacion\\\":\\\"Place de la Révolution. 15h00 - 17h30\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Strasbourg \\\",\\\"ubicacion\\\":\\\"Place Gutenberg \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Saint Pierre\\\",\\\"ubicacion\\\":\\\"Hôtel de ville (Mairie)\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Montpellier \\\",\\\"ubicacion\\\":\\\"Place de la Comédie. de 16 a 18H\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Rennes\\\",\\\"ubicacion\\\":\\\"Gare de Rennes. Place de la Gare\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Niza\\\",\\\"ubicacion\\\":\\\"Plaza Masséna. De 6 a 7 PM\\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-09-16 23:34:07', '2024-09-26 16:41:28'),
(25, 1, 'CH', 'Suiza', '\"[{\\\"ciudad\\\":\\\"Bellinzona\\\",\\\"ubicacion\\\":\\\"Piazzale Stazione, Bellinzona, Canton Ticino\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Ginebra\\\",\\\"ubicacion\\\":\\\"Palais Wilson, 52 rue des Pâquis\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Zurich\\\",\\\"ubicacion\\\":\\\"Hirschenplatz. de 14:30-16:30\\\",\\\"hora\\\":\\\"14:30\\\"}]\"', 'isVisible', '2024-09-16 23:46:20', '2024-09-23 18:04:21'),
(26, 1, 'DO', 'Republica Dominicana', '\"[{\\\"ciudad\\\":\\\"Cabarete\\\",\\\"ubicacion\\\":\\\"Av. Principal Cabarete, parador fotográfico \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Santo Domingo\\\",\\\"ubicacion\\\":\\\"Playa De Güibia dirección: Calle Avenida George Washington en Distrito Nacional. de 3 a 6pm\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Santo Domingo 2\\\",\\\"ubicacion\\\":\\\"Punto de Encuentro: Av. George Washington, el Maleconcito frente a Migración\\\",\\\"hora\\\":\\\"15:30\\\"},{\\\"ciudad\\\":\\\"San cristobal\\\",\\\"ubicacion\\\":\\\"Parque piedras vivas\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-09-18 21:25:39', '2024-09-23 18:03:21'),
(27, 1, 'NL', 'Paises Bajos', '\"[{\\\"ciudad\\\":\\\"Utrecht\\\",\\\"ubicacion\\\":\\\"Stationplein Utrecht, 13:00 a 15:00 pm.\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Ámsterdam\\\",\\\"ubicacion\\\":\\\"Stationplein Ámsterdam, 13:00 a 15:00 pm.\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Den Hagg \\\",\\\"ubicacion\\\":\\\"Oude Waalsdorperweg 10 (CPI, La Haya)13:00 a 15:00 pm.\\\",\\\"hora\\\":\\\"13:00\\\"},{\\\"ciudad\\\":\\\"Eindhoven\\\",\\\"ubicacion\\\":\\\"Piazza Center Eindhoven. 13.00 a 15.00 pm. \\\",\\\"hora\\\":\\\"13:00\\\"}]\"', 'isVisible', '2024-09-18 22:17:21', '2024-09-18 22:17:21'),
(28, 1, 'IE', 'Irlanda', '\"[{\\\"ciudad\\\":\\\"Cork\\\",\\\"ubicacion\\\":\\\"Emmet Pl near Cork Opera House\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-09-18 22:19:36', '2024-09-18 22:19:36'),
(29, 1, 'PT', 'Portugal', '\"[{\\\"ciudad\\\":\\\"Anadia\\\",\\\"ubicacion\\\":\\\"Paços Câmara Municipal Anadia\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Espinho\\\",\\\"ubicacion\\\":\\\"Praça Dr José Salvador Camara Municipal\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Oliveira de Azeméis\\\",\\\"ubicacion\\\":\\\"Praça da Cidade\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Faro\\\",\\\"ubicacion\\\":\\\"Av. Jose María Nunes. Frente al Fórum Algarve\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Portimão\\\",\\\"ubicacion\\\":\\\"Av. Guarané. Ribeirinha\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Albufeira\\\",\\\"ubicacion\\\":\\\"R. dos Pescadores (Mirador Pau da Bandeira)\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Aveiro\\\",\\\"ubicacion\\\":\\\"Largo do Rossio\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Braga\\\",\\\"ubicacion\\\":\\\"Praça da Republica\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Porto \\\",\\\"ubicacion\\\":\\\"Ponte D. Luis (Porto) hasta Praça infante D. Henrique\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Lisboa\\\",\\\"ubicacion\\\":\\\"Praça dos Restauradores\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Funchal\\\",\\\"ubicacion\\\":\\\"Praça do Município\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Beja\\\",\\\"ubicacion\\\":\\\"Praça da República\\\",\\\"hora\\\":\\\"13:00\\\"}]\"', 'isVisible', '2024-09-18 22:21:20', '2024-09-20 19:11:20'),
(30, 1, 'NZ', 'Nueva Zelanda', '\"[{\\\"ciudad\\\":\\\"Christchurch  \\\",\\\"ubicacion\\\":\\\" Bridge of Remembrance\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Auckland  \\\",\\\"ubicacion\\\":\\\"Aotea Square\\\",\\\"hora\\\":\\\"14:00\\\"}]\"', 'isVisible', '2024-09-18 22:25:46', '2024-09-18 22:25:46'),
(31, 1, 'SE', 'Suecia', '\"[{\\\"ciudad\\\":\\\"Gotemburgo \\\",\\\"ubicacion\\\":\\\"Gustav Adolfs Torg \\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Malmö\\\",\\\"ubicacion\\\":\\\"Stortorget. de 15:00-19:00\\\",\\\"hora\\\":\\\"15:00\\\"},{\\\"ciudad\\\":\\\"Nyköping \\\",\\\"ubicacion\\\":\\\"Stora Torget \\\",\\\"hora\\\":\\\"12:00\\\"}]\"', 'isVisible', '2024-09-18 22:28:27', '2024-09-24 17:52:18'),
(32, 1, 'LT', 'Lituania', '\"[{\\\"ciudad\\\":\\\"Kaunas\\\",\\\"ubicacion\\\":\\\"Plaza de la Iglesia del Arcángel San Miguel (Soboras). 16:00 a 18:00\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-09-18 22:30:33', '2024-09-18 22:30:33'),
(33, 1, 'LU', 'Luxemburgo', '\"[{\\\"ciudad\\\":\\\"Luxemburgo Centro\\\",\\\"ubicacion\\\":\\\"Hamilius \\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-09-18 22:34:57', '2024-09-18 22:34:57'),
(34, 1, 'CW', 'Curazao', '\"[{\\\"ciudad\\\":\\\"Willemstad\\\",\\\"ubicacion\\\":\\\"Wilhelminaplein, 6:00 pm a 9:00pm\\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-09-18 22:38:55', '2024-09-18 22:38:55'),
(35, 1, 'GT', 'Guatemala', '\"[{\\\"ciudad\\\":\\\"Guatemala\\\",\\\"ubicacion\\\":\\\"Monumento a Simón Bolívar, Plaza Venezuela, Avenida Las Américas, Ciudad de Guatemala. 4:00 pm a 6:00pm\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-09-18 22:40:19', '2024-09-18 22:40:19'),
(36, 1, 'BB', 'Barbados', '\"[{\\\"ciudad\\\":\\\"Christ Church\\\",\\\"ubicacion\\\":\\\"Accra Beach. 3:00 - 6:00 pm\\\",\\\"hora\\\":\\\"15:00\\\"}]\"', 'isVisible', '2024-09-18 22:42:04', '2024-09-18 22:42:04'),
(37, 1, 'DK', 'Dinamarca', '\"[{\\\"ciudad\\\":\\\"Copenhague\\\",\\\"ubicacion\\\":\\\"Højbro Plads. Codigo postal 1200. de 11 a 13 h\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Aarhus\\\",\\\"ubicacion\\\":\\\"Rådhuspladsen 8000, åarhus\\\",\\\"hora\\\":\\\"13:00\\\"}]\"', 'isVisible', '2024-09-20 18:52:58', '2024-09-25 18:38:22'),
(38, 1, 'CZ', 'República Checa', '\"[{\\\"ciudad\\\":\\\"Praga\\\",\\\"ubicacion\\\":\\\"Palackého náměstí. En la estatua. 5:00 pm a 7:00 pm\\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-09-20 18:56:24', '2024-09-20 18:56:24'),
(39, 1, 'SN', 'Senegal', '\"[{\\\"ciudad\\\":\\\"Dakar\\\",\\\"ubicacion\\\":\\\"Liberte  6\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"Dakar 2\\\",\\\"ubicacion\\\":\\\"Liberté 6 \\\",\\\"hora\\\":\\\"13:00\\\"}]\"', 'isVisible', '2024-09-20 18:58:53', '2024-09-20 18:58:53'),
(40, 1, 'CY', 'Chipre', '\"[{\\\"ciudad\\\":\\\"Limassol\\\",\\\"ubicacion\\\":\\\"Molos (frente a Café Nero)\\\",\\\"hora\\\":\\\"16:00\\\"}]\"', 'isVisible', '2024-09-20 19:03:27', '2024-09-20 19:03:27'),
(41, 1, 'BE', 'Bélgica', '\"[{\\\"ciudad\\\":\\\"Liege \\\",\\\"ubicacion\\\":\\\"Parc de la Boverie \\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Mons\\\",\\\"ubicacion\\\":\\\"Gran plaza de Mons \\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Lieja \\\",\\\"ubicacion\\\":\\\"Parc de la Boverie \\\",\\\"hora\\\":\\\"12:00\\\"},{\\\"ciudad\\\":\\\"Turnhout \\\",\\\"ubicacion\\\":\\\"Grote Markt \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Amberes\\\",\\\"ubicacion\\\":\\\"Museo M.A.S\\\",\\\"hora\\\":\\\"11:00\\\"},{\\\"ciudad\\\":\\\"Bruselas \\\",\\\"ubicacion\\\":\\\"Place de  L’ ALBERTINE, 1000. de 11:00 à 13h\\\",\\\"hora\\\":\\\"11:00\\\"}]\"', 'isVisible', '2024-09-20 19:23:28', '2024-09-20 19:25:39'),
(42, 1, 'MT', 'Malta', '\"[{\\\"ciudad\\\":\\\"Valetta\\\",\\\"ubicacion\\\":\\\"Tritóns fountain in Valetta\\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-09-20 19:28:21', '2024-09-20 19:28:21'),
(43, 1, 'GR', 'Grecia', '\"[{\\\"ciudad\\\":\\\"Kos island\\\",\\\"ubicacion\\\":\\\"Ifestou str 13\\\",\\\"hora\\\":\\\"14:00\\\"},{\\\"ciudad\\\":\\\"Atenas \\\",\\\"ubicacion\\\":\\\"Plaza Síntagma \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Patras\\\",\\\"ubicacion\\\":\\\"Plaza Francisco de Miranda\\\",\\\"hora\\\":\\\"17:30\\\"},{\\\"ciudad\\\":\\\"Tesalónica\\\",\\\"ubicacion\\\":\\\"Frente a la Torre Blanca (Lefkos Pirgos)\\\",\\\"hora\\\":\\\"18:00\\\"}]\"', 'isVisible', '2024-09-23 17:54:38', '2024-09-25 18:44:05'),
(44, 1, 'AT', 'Austria', '\"[{\\\"ciudad\\\":\\\"Viena\\\",\\\"ubicacion\\\":\\\"Stock im Eisen Platz 3,1010. de 16:30 a 18:00\\\",\\\"hora\\\":\\\"16:30\\\"}]\"', 'isVisible', '2024-09-23 18:05:54', '2024-09-23 18:05:54'),
(45, 1, 'PY', 'Paraguay', '\"[{\\\"ciudad\\\":\\\"Encarnación\\\",\\\"ubicacion\\\":\\\"Costanera Playa San José. de 18.30 A 20:30\\\",\\\"hora\\\":\\\"18:30\\\"}]\"', 'isVisible', '2024-09-23 19:01:41', '2024-09-23 19:01:41'),
(46, 1, 'PA', 'Panamá', '\"[{\\\"ciudad\\\":\\\"Colón \\\",\\\"ubicacion\\\":\\\"Paseo marino. de 10:00 am a 2:00 pm1\\\",\\\"hora\\\":\\\"10:00\\\"},{\\\"ciudad\\\":\\\"David \\\",\\\"ubicacion\\\":\\\"Parque de las madres. 4:00 a 8:00 pm\\\",\\\"hora\\\":\\\"16:00\\\"},{\\\"ciudad\\\":\\\"Volcán \\\",\\\"ubicacion\\\":\\\"Parador fotográfico de Volcán \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Las tablas\\\",\\\"ubicacion\\\":\\\"Parque Angelita Cedeño. de 6 a 7:00 pm\\\",\\\"hora\\\":\\\"18:00\\\"},{\\\"ciudad\\\":\\\"Santiago\\\",\\\"ubicacion\\\":\\\"Parque Juan Demostenes Arosemena. de 5:00 a 7:00pm\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Chitre\\\",\\\"ubicacion\\\":\\\"Parque Unión. de 7:00 a 8:00 pm\\\",\\\"hora\\\":\\\"19:00\\\"},{\\\"ciudad\\\":\\\"Panama\\\",\\\"ubicacion\\\":\\\"Parque Francisco Arias. 5:00 a 8:00 pm \\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-09-23 23:43:56', '2024-09-26 16:53:07'),
(47, 1, 'BO', 'Bolivia', '\"[{\\\"ciudad\\\":\\\"Cochabamba \\\",\\\"ubicacion\\\":\\\"Plaza de Las Banderas \\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"La Paz \\\",\\\"ubicacion\\\":\\\"Plaza Venezuela\\\",\\\"hora\\\":\\\"17:00\\\"},{\\\"ciudad\\\":\\\"Santa Cruz de la Sierra \\\",\\\"ubicacion\\\":\\\"Plaza El Estudiante \\\",\\\"hora\\\":\\\"17:00\\\"}]\"', 'isVisible', '2024-09-23 23:50:07', '2024-09-23 23:50:07'),
(48, 1, 'AG', 'Antigua y Barbuda', '\"[{\\\"ciudad\\\":\\\"Antigua y Barbuda\\\",\\\"ubicacion\\\":\\\"St. John\'s city\\\",\\\"hora\\\":\\\"14:00\\\"}]\"', 'isVisible', '2024-09-25 23:21:42', '2024-09-25 23:21:42');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
