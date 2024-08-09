-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 09-08-2024 a las 20:38:09
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
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text,
  `avatar` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `user_id`, `category_id`, `favorite_id`, `description`, `avatar`, `is_featured`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '¿Qué hace un cirujano bucomaxilofacial?', 'que-hace-un-cirujano-bucomaxilofacial', 1, 1, NULL, '<p>De acuerdo con la <a href=\"http://alacibu.org/\">Asociaci&oacute;n Latinoamericana de Cirug&iacute;a Bucomaxilofacial, Alacibu, </a>la Cirug&iacute;a Bucomaxilofacial &ldquo;es aquella especialidad de la odontolog&iacute;a que se ocupa de la prevenci&oacute;n, diagn&oacute;stico y tratamiento de las enfermedades, traumatismos y defectos funcionales o est&eacute;ticos, cong&eacute;nitos o adquiridos, de los tejidos duros y blandos de la regi&oacute;n bucal y maxilofacial, as&iacute; como de los tejidos y &oacute;rganos relacionados que la limitan e integran.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En Venezuela solamente puede utilizar el t&iacute;tulo de &ldquo;Cirujano Bucal&rdquo; o &ldquo;Cirujano Bucomaxilofacial&rdquo; aquel Odont&oacute;logo que ha culminado a cabalidad un curso de postgrado en Cirug&iacute;a Bucal de no menos de dos a&ntilde;os de duraci&oacute;n, o de Cirug&iacute;a Bucomaxilofacial de no menos de tres a&ntilde;os de duraci&oacute;n, en una instituci&oacute;n universitaria u hospitalaria reconocida por el Ministerio del Poder Popular para la Salud y el Ministerio del Poder Popular para la Educaci&oacute;n y validada dicha especialidad por el <a href=\"http://www.elcov.org/\">Colegio de Odont&oacute;logos de Venezuela.</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Los campos de actuaci&oacute;n, del cual se desprenden &aacute;reas de formaci&oacute;n acad&eacute;mica e investigaci&oacute;n cient&iacute;fica, incluyen entre otros: anomal&iacute;as y patolog&iacute;as de las estructuras buco-maxilofaciales, cirug&iacute;a de labio y paladar hendido; implantes endo&oacute;seos, transplantes y reimplantes en la regi&oacute;n buco-maxilofacial, injertos y cirug&iacute;a reconstructiva de los tejidos duros y blandos en la regi&oacute;n bucomaxilofacial, distracci&oacute;n osteog&eacute;nica; cirug&iacute;a dentoalveolar; tratamiento de trauma de los tejidos duros y blandos de la regi&oacute;n maxilofacial; cirug&iacute;a ortogn&aacute;tica, preprot&eacute;sica y ortop&eacute;dica facial, cirug&iacute;a con finalidades ortod&oacute;nticas y anomal&iacute;as dentofaciales, biopsias de la regi&oacute;n bucomaxilofacial, tratamiento conservador y quir&uacute;rgico de los trastornos de la articulaci&oacute;n temporomandibular, diagn&oacute;stico y tratamiento quir&uacute;rgico y no quir&uacute;rgico de los quistes, tumores y enfermedades de la regi&oacute;n bucomaxilofacial, tratamiento de las malformaciones cong&eacute;nitas, adquiridas y del desarrollo de los tejidos blandos y duros de la regi&oacute;n bucomaxilofacial, tratamiento del dolor en regi&oacute;n bucomaxilofacial</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>El rol del cirujano bucomaxilofacial es determinante, por lo tanto su presencia en las &aacute;reas de emergencia en cl&iacute;nicas y hospitales es vital, especialmente si hay sospecha de traumatismo que involucre el &aacute;rea maxilofacial</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si usted requiere mayor informaci&oacute;n acerca de esta especialidad, los profesionales miembros de la <a href=\"http://www.svcbmf.net/\">Sociedad Venezolana de Cirug&iacute;a Bucomaxilofacial</a>, cursos de postgrado o cualquier duda relacionada, comun&iacute;quese con nosotros aqu&iacute; y con gusto le responderemos.</p>', 'blogs/y0mG1klmJpf45Ane95KdOOL2GQysSydSO3CY4OEC.jpg', 1, 1, '2018-10-27 08:12:09', '2024-04-20 19:18:41', NULL),
(2, 'Libro Dr. César Guerrero Barros', 'libro-dr-cesar-guerrero-barros', 1, 1, NULL, '<p>Es un orgullo Venezolano exponer los conocimientos cient&iacute;ficos que durante a&ntilde;os han sido desarrollados por el Dr C&eacute;sar Guerrero y su equipo (Dres. Gisela y Rafael Contasti, Elena Mujica, Mariana Henriquez, Enif Dominguez, Marianela Gonzalez, Wendy Camacho, Helen Rivera y Aura Marina Rodriguez) en la correcci&oacute;n de Deformidades Craneofaciales y Reconstrucci&oacute;n Facial en publicaciones de prestigio Internacional, entre ellos:<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Atlas of Oral and Maxillofacial Surgery.</strong> Kademani / Tiwana. Elsevier 2016, Mandibular and Maxillary Intraoral Distraction Osteogenesis.</p>\r\n\r\n<p><strong>Orthognathic Surgery:</strong> Principles, Planning and Practice .Naini/Gil Wiley-Blackwell 2017 Mandibular and Maxillary Distraction Osteogenesis.</p>\r\n\r\n<p><strong>Craniofacial Distraction J McCarthy.</strong> 2nd Edition. Springer 2017. Intraoral mandibular distraction.</p>\r\n\r\n<p><strong>Oral and Maxillofacial Surgery .Fonseca. </strong>3rd Edition. Elsevier 2017. Intraoral distraction osteogenesis.</p>\r\n\r\n<p><strong>Principles of Oral and Maxillofacial Surgery.</strong> Miloro-Ghali-Larsen-Waite. Elsevier 2018.</p>\r\n\r\n<p>Publicaciones que han contribuido a la formaci&oacute;n de profesionales en nuestro pa&iacute;s y fuera de sus fronteras, siendo referencia en los siete continentes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>El Dr. C&eacute;sar A. Guerrero es Odont&oacute;logo graduado de la Universidad Central de Venezuela, continu&oacute; su educaci&oacute;n en el Hospital de la Cruz Roja de Venezuela por 3 a&ntilde;os en el &aacute;rea de Cirug&iacute;a Maxilofacial del postgrado de Cirug&iacute;a Pl&aacute;stica y Reconstructiva. Hizo su residencia completa en Cirug&iacute;a Bucal y Maxilofacial en la Escuela de Medicina de la Universidad del Suroeste, en el Hospital de Parkland Memorial y hospitales asociados de Dallas y Fort Worth, Texas. Fue Director del Centro de Cirug&iacute;a Maxilofacial Santa Rosa y Profesor colaborador de las C&aacute;tedras de Cirug&iacute;a y Ortodoncia de la UCV. Continu&oacute; como profesor de la Universidad de Texas en la Escuela de Medicina de Galveston, como Profesor en Cirug&iacute;a Bucal y Maxilofacial; actualmente est&aacute; dedicado a la pr&aacute;ctica privada de la especialidad en el Sur de Houston, Texas. Recibi&oacute; el premio &quot;como cirujano del a&ntilde;o&quot; del Colegio Americano de Cirug&iacute;a Bucal y Maxilofacial, con el premio Harry Archer en el 2016, di&oacute; la conferencia presidencial Kurt H Thoma, recibi&oacute; el segundo premio en Innovaciones en Cirug&iacute;a Bucal y Maxilofacial en el congreso mundial de la Asociaci&oacute;n Internacional en Hong Kong, China, en el 2017.</p>', 'blogs/itDnTcllQvLEETWKhXqS7eS7IVhSaZeLFJIHDlbi.jpg', 1, 1, '2018-10-27 10:12:09', '2024-04-20 19:20:00', NULL),
(3, 'Venezuela tiene un nuevo Delegado AOCMF para el periodo 2018-2021', 'venezuela-tiene-un-nuevo-delegado-aocmf-para-el-periodo-2018-2021', 1, 2, NULL, '<p>En el mes de Julio, se abri&oacute; la postulaci&oacute;n para la elecci&oacute;n del nuevo delegado (chair) de la AOCMF para Venezuela, siendo electo posterior al an&aacute;lisis curricular, experiencia docente y finalmente sometido al proceso de votaci&oacute;n entre los miembros del pa&iacute;s y latinoam&eacute;rica el Dr. Paul Maurette, Actual presidente de nuestra Sociedad.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>La AOCMF (la división clínica craneo maxilofacial de AO Foundation) &nbsp;con m&aacute;s de 60 a&ntilde;os de actividades educativas, est&aacute; conformada por un grupo multidisciplinario de participantes y profesores de diversas especialidades como lo son la Cirug&iacute;a Buco-Maxilofacial. Otorrinolaringologia, Cirug&iacute;a de cabeza y cuello, Cirug&iacute;a Pl&aacute;stica y Reconstructiva. &nbsp;Cada año, AOCMF ofrece alrededor de 110 actividades educativas celebradas en todo el mundo a más de 5.000 apasionados cirujanos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>La misión de AOCMF es la excelencia en el tratamiento de la cirugía facial en sus diversas especialidades. Por ello, desde AOCMF animamos a todos aquellos profesionales interesados en el campo de la cirugía craneo-maxilofacial, cirugía plástica, ENT, cirugía oculoplástica y neurocirugía a que participen y hagan suya esta organización. Para conseguirlo, nos comprometemos a permanecer en la vanguardia de la educación y de los nuevos avances, ofreciendo aprendizaje y experiencias destacables en la red enfocadas en el tratamiento de trauma y reconstrucción craneo-maxilofacial.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Es un orgullo para nuestro gremio que &eacute;l haya sido electo nuevamente un delegado para Venezuela de nuestra especialidad, Esto refuerza el compromiso y la excelencia desarrollada durante la gesti&oacute;n del Dr. Jos&eacute; Gregorio Melillo quien despu&eacute;s de 6 a&ntilde;os dejo esta gran responsabilidad, la cual llev&oacute; de manera impecable y logr&oacute; grandes avances y el posicionamiento de nuestro pa&iacute;s a nivel regional e internacional a pesar de la crisis que atravesamos actualmente. &nbsp; &Eacute;xitos al Dr. Maurette en esta nueva responsabilidad el pro de Venezuela.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En el Mes de Septiembre el Dr. C&eacute;sar Guerrero Barros, Cirujano Buco-Maxilofacial venezolano Expresidente y Miembro activo de nuestra Sociedad, fue electo miembro de la Junta Directiva de la Asociaci&oacute;n Latinoamericana de Cirug&iacute;a Craneofacial, &nbsp;durante el congreso de esta asociaci&oacute;n cient&iacute;fica multidisciplinaria congreso en la ciudad de Sao Paulo- Brasil, siendo el presidente electo el Dr. Percy Rossell de Per&uacute; y el Dr. Fernando Molina Montalvo de M&eacute;xico, Cirujano Pl&aacute;stico y Reconstructivo, como vice-presidente. &nbsp;EL Dr Guerrero es el primer Cirujano Maxilofacial en la Junta Directiva, y tendr&aacute; dentro de sus actividades gran responsabilidad de organizar tres eventos en Bogot&aacute;, Santo Domingo y Panama, en los pr&oacute;ximos 2 a&ntilde;os.</p>\r\n\r\n<p>Noticias como las anteriores refuerzan la proyecci&oacute;n internacional de nuestra especialidad con el reconocimiento de nuestros miembros como l&iacute;deres y voceros con proyecci&oacute;n internacional dentro de una visi&oacute;n de trabajo en equipos, &nbsp;de reconocimiento de pares y que complementan el estudio, investigaci&oacute;n, el desarrollo de proyectos sobre diferentes problem&aacute;ticas y patol&oacute;gicas con visi&oacute;n de teamwork complementandose las diversas especialidades para el tratamiento de las patolog&iacute;as en el &aacute;rea craneomaxilofacial</p>\r\n\r\n<p>Enhorabuena! Y felicidades a los Dres Guerrero, Melillo y Maurette.</p>', 'blogs/7HArU6Uj1i6BVy4iO5h1OaMlZr1ssBDGqI4dhuqv.jpg', 1, 1, '2018-10-27 11:12:09', '2024-04-21 00:53:11', NULL),
(4, 'Plataforma Virtual Educativa de la Sociedad Venezolana de Cirugía Buco-Maxilofacial', 'plataforma-virtual-educativa-de-la-sociedad-venezolana-de-cirugia-buco-maxilofacial', 1, 2, NULL, '<p>Con una Visi&oacute;n Innovadora en pro de la Educaci&oacute;n.</p>\r\n\r\n<p>Rompiendo Fronteras!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En poco tiempo nuestros miembros, residentes y colegas del &aacute;rea de la salud contar&aacute;n con un recurso innovador que se encuentra en la fase final de implantaci&oacute;n y que conjugara herramientas, recursos educativos, de intercambio cl&iacute;nico y acad&eacute;mico, &nbsp;para el fortalecimientos de nuestras especialidades.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nuestra Sociedad sigue avanzando con visi&oacute;n innovadora, con el fortalecimiento de los valores institucionales, bajo pilares de educaci&oacute;n, profesionalismo y &eacute;tica que consolidan el trabajo de m&aacute;s de 60 a&ntilde;os en pro de nuestra Venezuela.</p>', 'blogs/lGddqiH0XyQJhlrbm0DN4sDNAR0fcVodCss7DNiS.jpg', 1, 1, '2018-10-27 13:12:09', '2024-04-21 00:53:19', NULL),
(5, 'Educación continúa 2021', 'educacion-continua-2021', 1, 0, NULL, '<p><img alt=\"\" src=\"https://tipscirubucal.com/wp-content/uploads/2021/04/jorn2.jpg\" style=\"height:242px; width:500px\" /></p>\r\n\r\n<p>Reg&iacute;strate en el siguiente link:</p>\r\n\r\n<p><a href=\"https://www.eventbrite.com/e/jornadas-de-educacion-continua-2021-tickets-150555544687\" target=\"_blank\">https://www.eventbrite.com/e/jornadas-de-educacion-continua-2021-tickets-150555544687</a></p>\r\n\r\n<hr />\r\n<p>Fecha: 14 de abril<br />\r\nHora: 8:00pm (Hora de Venezuela)</p>\r\n\r\n<p><br />\r\nCon&eacute;ctate en Zoom:<br />\r\n<a href=\"https://us02web.zoom.us/j/87672680634?pwd=bXJGQ1BIWUJ1Z3dHaHMvMElhMVVIdz09\" target=\"_blank\">https://us02web.zoom.us/j/87672680634?pwd=bXJGQ1BIWUJ1Z3dHaHMvMElhMVVIdz09</a></p>\r\n\r\n<p><br />\r\nID de la reuni&oacute;n: 876 7268 0634<br />\r\nC&oacute;digo de acceso: 524298</p>\r\n\r\n<hr />\r\n<p><strong>Rinoplastia como procedimiento complementario en la cirug&iacute;a Ortognatica</strong></p>\r\n\r\n<p>Dr. Paolo Verona</p>\r\n\r\n<p><img alt=\"\" src=\"https://tipscirubucal.com/wp-content/uploads/2021/04/91003820-D2F8-4161-B5E3-27535EF0E69D-1.jpeg\" style=\"height:248px; width:250px\" /></p>\r\n\r\n<p>Cirujano Maxilofacial de la universidad militar nueva granada / Hospital militar Central de Bogot&aacute; ,entrenamiento en Cirugia artroscopia de ATM hospital Clinico San Carlos Madrid , fellow en Cirugia estetica facial y rinoplastia Leon, Mexico y Roma Italia , Diplomado en Cirug&iacute;a estetica facial , certificaci&oacute;n board en Cirug&iacute;a oral y maxilofacial por alacibu board en Cirugia estetica facial academia internacional de Cirugia estetica , coordinador de la seccional de cirug&iacute;a est&eacute;tica maxilofacial de alacibu , miembro de la junta directiva de la SVCBMF.</p>\r\n\r\n<hr />\r\n<p><strong>Osteotom&iacute;as Faciales Complementarias a la Cirug&iacute;a Ortogn&aacute;tica</strong></p>\r\n\r\n<p>Dr. Sergio Olate</p>\r\n\r\n<p><img alt=\"\" src=\"https://tipscirubucal.com/wp-content/uploads/2021/04/Olate12-1.jpeg\" style=\"height:375px; width:250px\" /></p>\r\n\r\n<p>Sergio Olate, CD, COMF, MSc, PhD Fellow del European Face Centre Profesor Asociado, Divisi&oacute;n de Cirug&iacute;a Oral, Facial y Maxilofacial, Universidad de La Frontera Sub Director, Centro de Excelencia en Estudios Morfol&oacute;gicos y Quir&uacute;rgicos, Universidad de La Frontera CHILE.</p>\r\n\r\n<h3>Moderadores:</h3>\r\n\r\n<h3>Dr. Jos&eacute; Luis Castro</h3>\r\n\r\n<h3>Dr. Fidel Guzm&aacute;n</h3>\r\n\r\n<hr />\r\n<p>Fecha: 14 de abril</p>\r\n\r\n<p>Hora: 8:00pm (Hora de Venezuela)</p>\r\n\r\n<p>Con&eacute;ctate en Zoom:&nbsp;<a href=\"https://us02web.zoom.us/j/87672680634?pwd=bXJGQ1BIWUJ1Z3dHaHMvMElhMVVIdz09\">https://us02web.zoom.us/j/87672680634?pwd=bXJGQ1BIWUJ1Z3dHaHMvMElhMVVIdz09</a></p>\r\n\r\n<p>ID de la reuni&oacute;n: 876 7268 0634</p>\r\n\r\n<p>C&oacute;digo de acceso: 524298</p>', 'jorn11.jpg', 1, 0, '2021-04-10 20:46:24', '2024-04-20 19:21:17', NULL),
(6, 'prueba', 'prueba', 1, 0, NULL, '<h2><img alt=\"\" src=\"https://mmedia.eluniversal.com/18726/proceso-de-vacunacion-para-personas-de-tercera-edad-71928.jpg\" style=\"height:406px; width:720px\" /></h2>\r\n\r\n<h2><strong>Mant&eacute;ngase &aacute;gil y eficiente en tiempos de transformaci&oacute;n digital</strong></h2>\r\n\r\n<p>Realizamos asociaciones estrat&eacute;gicas con proveedores de tecnolog&iacute;a, con soluciones y servicios de clase mundial.</p>\r\n\r\n<p>Con nuestras soluciones apoyamos el desarrollo de las capacidades tecnol&oacute;gicas que le permitir&aacute; dar una respuesta r&aacute;pida a las demandas de sus clientes, actualizar eficazmente sus sistemas, desarrollar nuevas aplicaciones con lanzamiento acelerado al mercado y generar mas presupuesto para la innovaci&oacute;n.</p>\r\n\r\n<p>Somos especialistas en automatizaci&oacute;n de procesos para clientes con soluciones de tipo ERP de proveedores de tecnolog&iacute;a como SAP, Oracle, Microsoft, etc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'osteo.jpg', 0, 0, '2021-04-11 01:49:07', '2024-04-20 19:21:28', NULL),
(7, 'Educación Continua 2021 - Videos', 'educacion-continua-2021-videos', 1, 0, NULL, '<p>Procedimientos est&eacute;ticos asociados a Cirug&iacute;a Ortogn&aacute;tica:</p>\r\n\r\n<p><a href=\"https://youtu.be/2IHBwBptYrQ\">https://youtu.be/2IHBwBptYrQ</a></p>', 'Screen_Shot_2021-07-30_at_2_13_12_AM.png', 1, 0, '2021-04-17 20:49:15', '2024-04-20 19:21:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Tips y Publicidad', '2023-05-14 21:06:54', '2023-05-18 16:57:58'),
(3, 'Proyecto de Clase', '2023-05-14 21:13:20', '2023-05-14 21:13:20'),
(4, 'prueba', '2023-08-06 19:25:40', '2023-08-06 19:25:40');

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
  `informacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudades` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `user_id`, `code`, `informacion`, `ciudades`, `title`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 1, 'AD', '<p>Esto es una muestra para guia</p>', '<ol>\r\n	<li>Esto es una muestra para guia</li>\r\n	<li>Esto es una muestra para guia</li>\r\n	<li>Esto es una muestra para guia</li>\r\n	<li>Esto es una muestra para guia</li>\r\n</ol>', 'Actualizado', 'noVisible', '2022-02-12 00:49:27', '2024-08-09 18:58:36'),
(2, 1, 'VE', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<ul>\r\n	<li>Amazonas</li>\r\n	<li>Anzo&aacute;tegui</li>\r\n	<li>Bol&iacute;var</li>\r\n	<li>Carabobo</li>\r\n	<li>Cojedes</li>\r\n	<li>Distrito Capital</li>\r\n	<li>Falc&oacute;n</li>\r\n	<li>Lara</li>\r\n	<li>M&eacute;rida</li>\r\n	<li>Miranda</li>\r\n	<li>T&aacute;chira</l', 'Venezuela', 'isVisible', '2022-05-06 08:19:23', NULL),
(3, 1, 'ES', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'España', 'isVisible', '2022-05-06 08:25:39', NULL),
(4, 1, 'CO', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n.&nbsp;&nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n.&nbsp;&nbsp;</p>\r\n', 'Colombia', 'isVisible', '2022-05-06 08:30:24', NULL),
(5, 1, 'US', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Estados Unidos', 'isVisible', '2022-05-06 08:33:07', NULL),
(6, 1, 'PE', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Perú', 'isVisible', '2022-05-06 08:35:28', NULL),
(7, 1, 'CL', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Chile', 'isVisible', '2022-05-06 08:37:25', NULL),
(8, 1, 'BE', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Bélgica', 'isVisible', '2022-05-06 08:39:41', NULL),
(9, 1, 'AR', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Argentina', 'isVisible', '2022-05-06 08:41:37', NULL),
(10, 1, 'MX', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'México', 'isVisible', '2022-05-06 08:44:09', NULL),
(11, 1, 'PA', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Panamá', 'isVisible', '2022-05-06 08:45:21', NULL),
(12, 1, 'BR', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Brasil', 'isVisible', '2022-05-06 08:47:24', NULL),
(13, 1, 'CA', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Canadá', 'isVisible', '2022-05-06 08:49:08', NULL),
(14, 1, 'CR', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Costa Rica', 'isVisible', '2022-05-06 08:51:11', NULL),
(15, 1, 'IT', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Italia', 'isVisible', '2022-05-06 08:53:54', NULL),
(16, 1, 'NL', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Países Bajos', 'isVisible', '2022-05-06 08:55:46', NULL),
(17, 1, 'CH', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Suiza', 'isVisible', '2022-05-06 08:57:22', NULL),
(18, 1, 'UY', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Uruguay', 'isVisible', '2022-05-06 08:59:11', NULL),
(20, 1, 'ZM', 'dsadas', 'dasdas', 'Zambia', 'isVisible', '2024-08-09 20:14:21', '2024-08-09 20:32:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crimeneslhs`
--

CREATE TABLE `crimeneslhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais_code` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `crimeneslh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacionColectiva` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacionIndividual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `breveDescripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosCPIAprobados` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosCPIPendientes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosNoCpiAprobado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosNoCpiPendiente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `crimeneslhs`
--

INSERT INTO `crimeneslhs` (`id`, `pais_code`, `user_id`, `crimeneslh`, `clasificacionColectiva`, `clasificacionIndividual`, `lugar`, `breveDescripcion`, `numCasosCPIAprobados`, `numCasosCPIPendientes`, `numCasosNoCpiAprobado`, `numCasosNoCpiPendiente`, `created_at`, `updated_at`) VALUES
(1, 'AD', 1, 'Esto es una muestra para guia', 'Esto es una muestra para guia', 'Esto es una muestra para guia', 'Esto es una muestra para guia', '<p>Esto es una muestra para guia</p>\r\n', 'Esto es una muestra para guia', 'Esto es una muestra para guia', 'Esto es una muestra para guia', 'Esto es una muestra para guia', '2022-02-12 00:50:15', NULL);
INSERT INTO `crimeneslhs` (`id`, `pais_code`, `user_id`, `crimeneslh`, `clasificacionColectiva`, `clasificacionIndividual`, `lugar`, `breveDescripcion`, `numCasosCPIAprobados`, `numCasosCPIPendientes`, `numCasosNoCpiAprobado`, `numCasosNoCpiPendiente`, `created_at`, `updated_at`) VALUES
(2, 'VE', 1, '284', '79,78%', '20,22%', '<ol>\r\n	<li>Anzo&aacute;tegui: Caso 014, Caso 268, Caso 275, Caso 276, Caso 301.</li>\r\n	<li>Apure: Caso 158, Caso 211, Caso 212, Caso 273, Caso 274</li>\r\n	<li>Aragua: Caso 020, Caso 095, Caso 099, Caso 147, Caso 173, Caso 174, Caso 175, Caso 226, Caso 227.</li>\r\n	<li>Barinas: Caso 028, Caso 103, Caso 125, Caso 165, Caso 269, Caso 308</li>\r\n	<li>Bol&iacute;var: Caso 033, Caso 042, Caso 047, Caso 048, Caso 049, Caso 050, Caso 051, Caso 052, Caso 053, Caso 054, Caso 055, Caso 056, Caos 063, Caso 064, Caso 217, Caso 218, Caso 225, Caso 233, Caso 253, Caso 298.</li>\r\n	<li>Carabobo: Caso 121, Caso 145, Caso 157, Caso 228, Caso 229, Caso 230, Caso 231, Caso 232, Caso 237, Caso 279, Caso 280, Caso 297, Caso 306</li>\r\n	<li>Cojedes: Caso 016, Caso 017, Caso 019, Caso 021, Caso 092, Caso 100, Caso 101, Caso 102, Caso 180, Caso 277, Caso 278, Caso 282, Caso 283, Caso 289, Caso 291, Caso 309</li>\r\n	<li>Distrito Capital: Caso 010, Caso 031, Caso 033, Caso 034, Caso 035, Caso 036, Caso 037, Caso 038, Caso 039, Caso 040, Caso 041, Caso 043, Caso 044, Caso 045, Caso 046, Caso 066, Caso 068, Caso 069, Caso 070, Caso 071, Caso 072, Caso 073, Caso 074, Caso 075, Caso 076, Caso 079, Caso 080, Caso 083, Caso 089, Caso 090, Caso 098, Caso 105, Caso 106, Caso 107, Caso 113, Caso 122, Caso 126, Caso 127, Caso 128, Caso 133, Caso 134, Caso 135, Caso 139, Caso 141, Caso 142, Caso 143, Caso 144, Caso 146, Caso 149, Caso 150, Caso 155, Caso 156, Caso 166, Caso 170, Caso 171, Caso 176, Caso 181, Caso 182, Caso 183, Caso 184, Caso 185, Caso 186, Caso 187, Caso 188, Caso 189, Caso 190, Caso 191, Caso 192, Caso 193, Caso 194, Caso 195, Caso 196, Caso 197, Caso 198, Caso 199, Caso 200, Caso 201, Caso 202, Caso 203, Caso 204, Caso 213, Caso 221, Caso 222, Caso 235, Caso 236, Caso 238, Caso 251, Caso 255, Caso 256, Caso 261, Caso 263, Caso 264, Caso 284, Caso 293, Caso 294, Caso 295, Caso 296, Caso 300, Caso 313, Caso 314, Caso 315, Caso 317</li>\r\n	<li>Falc&oacute;n: Caso 025, Caso 239, Caso 240.</li>\r\n	<li>Gu&aacute;rico: Caso 257, Caso 258, Caso 259, Caso 260.</li>\r\n	<li>Lara: Caso 012, Caso 023, Caso 091, Caso 093, Caso 094, Caso 111, Caso 114, Caso 119, Caso 123, Caso 124, Caso 129, Caso 136, Caso 151, Caso 169, Caso 172, Caso 178, Caso 224, Caso 241, Caso 249, Caso 250.</li>\r\n	<li>M&eacute;rida: Caso 061, Caso 062, Caso 077, Caso 081, Caso 082, Caso 086, Caso 087, Caso 088, Caso 118, Caso 130, Caso 131, Caso 154, Caso 167, Caso 168, Caso 177.</li>\r\n	<li>Miranda: Caso 013, Caso 015, Caso 032, Caso 065, Caso 067, Caso 096, Caso 097, Caso 215, Caso 246, Caso 247, Caso 248, Caso 252, Caso 290.</li>\r\n	<li>Monagas: Caso 115.</li>\r\n	<li>Nueva Esparta: Caso 078, Caso 148, Caso 265, Caso 310</li>\r\n	<li>Portuguesa: Caso 022, Caso 117.</li>\r\n	<li>Sucre: Caso 267, Caso 270, Caso 281.</li>\r\n	<li>T&aacute;chira: Caso 024, Caso 026, Caso 027, Caso 029, Caso 030, Caso 057, Caso 058, Caso 059, Caso 060, Caso 285.</li>\r\n	<li>Trujillo: Caso 094, Caso 109, Caso 216.</li>\r\n	<li>Vargas: Caso 205, Caso 206, Caso 207, Caso 208, Caso 209, Caso 210, Caso 214, Caso 271.</li>\r\n	<li>Yaracuy: Caso 011, Caso 018.</li>\r\n	<li>Zulia: Caso 104, Caso 272.</li>\r\n</ol>\r\n', '<table cellspacing=\"0\" style=\"border-collapse:collapse; width:670px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #cccccc; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 001</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #cccccc; vertical-align:middle; width:603px\">\r\n			<p>Persecuci&oacute;n pol&iacute;tica y aprehensi&oacute;n por orden de tribunales militares</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 002</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>La v&iacute;ctima asegura haber sufrido persecuci&oacute;n, amenazas y abuso judicial.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 004</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Denuncia haber sido testigo de una ejecuci&oacute;n extrajudicial por civiles armados y organismos policiales.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 009</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>La v&iacute;ctima refiere una violaci&oacute;n a su derecho de propiedad efectuada por colectivos y alega que ese&nbsp; hecho estuvo motivado a su participaci&oacute;n pol&iacute;tica</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 010</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>El 12 de junio asisti&oacute; por una citaci&oacute;n que le hicieron donde deb&iacute;a ir en calidad de testigo a declarar sobre un caso que a&uacute;n desconoce a la sede del SEBIN, estuvo m&aacute;s de 5 horas rindiendo declaraci&oacute;n. Dice que su caso fue p&uacute;blico y notorio y que su detenci&oacute;n fue transmitida en vivo por varios medios de comunicaci&oacute;n como Caraota Digital</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 011</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenci&oacute;n arbitraria y represi&oacute;n por parte de funcionarios del Estado.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 012</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenci&oacute;n arbitraria y tortura.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 013</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenci&oacute;n arbitraria</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 014</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Persecuci&oacute;n pol&iacute;tica por parte de diferentes dirigentes pol&iacute;ticos del gobierno y omisi&oacute;n policial.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 015</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Se convoc&oacute; una marcha el 01 de mayo en el municipio Tinaquillo debido a los sucesos del 30 de abril de 2019 en La Carlota.&nbsp; Estuvieron detenidos hasta el d&iacute;a siguiente y fueron sometidos a interrogatorios por varios funcionarios. En la tarde del 2 de mayo realizaron un procedimiento y fueron presentados en fiscal&iacute;a y en tribunales. Fueron liberados a los 92 d&iacute;as (3-4 de agosto de 2019)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 016</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue detenida en la estaci&oacute;n de servicio Los Pinos, Tinaquillo, estado Cojedes, por funcionarios de la Polic&iacute;a Estadal, siendo trasladada por delitos de resistencia a la autoridad y alteraci&oacute;n del orden p&uacute;blico ante la protesta que exig&iacute;a la venta de gasolina, testigos aseguraron que fue detenida arbitraria e ilegalmente adem&aacute;s de ser sujeto de agresiones f&iacute;sicas.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 017</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>En el 2019 cuando visualizaba violaciones de DDHH a personas que estaban en inmediaciones de un supermercado, fu&eacute; detenido junto a 5 personas, durante el forcejeo con la fuerza de seguridad les manifest&oacute; que era activista de derechos humanos. Las fuerzas de seguridad manifestaron que no ten&iacute;a el deber y el derecho de estar all&iacute; adem&aacute;s de violarle el derecho al debido proceso durante los 3 d&iacute;as que estuvo detenido, al impedirle comunicarse con su abogado o familiares, impedirle el acceso a servicios b&aacute;sicos como el aseo personal, no se le dio acceso a su expediente y adem&aacute;s sufri&oacute; maltrato psicol&oacute;gico y f&iacute;sico.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 018</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>&ldquo;Hubo una protesta social en Aroa por la fuerte escasez de comida que se viv&iacute;a en aquel a&ntilde;o, producto a los controles de precio del r&eacute;gimen y el control de la distribuci&oacute;n de alimentos, los cuales el estado hab&iacute;a asumido el 100% de control de alimentos importante en la dieta de la poblaci&oacute;n, estos alimentos eran almacenados en un centro de acopio los cuales se estaban descomponiendo por el mal manejo de las autoridades, el cual fue saqueado por los protestantes, las autoridades reprimieron y todo esto fue documentado, tambi&eacute;n denunciado por mi a trav&eacute;s de mi red social Twitter. Muchos medios de comunicaciones se conectaron con mis publicaciones, haciendo de esta manera Aroa tendencia en esta red social, luego de esto me buscaron en mi casa para detenerme de forma arbitraria. Mi detenci&oacute;n dur&oacute; 43 d&iacute;as.&quot;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 019</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Se encontraba junto a un grupo de vecinos en una protesta frente a la alcald&iacute;a por las fallas del servicio de recolecci&oacute;n de basura, donde llevaron bolsas de basura de manera alusiva y de protesta pac&iacute;fica. 7:00 AM se acerca una comisi&oacute;n de la Polic&iacute;a Estadal a detenerlo donde fue llevado a la comandancia de Macapo donde estuvo detenido aproximadamente 8 horas. Recibi&oacute; amenazas de que iba a ser presentado en fiscalia por terrorismo, asociaci&oacute;n para delinquir, alteraci&oacute;n del orden publico, pero por ordenes de la fiscal auxiliar del ministerio publico pidi&oacute; la liberaci&oacute;n inmediata y el no proceder del traslado al ministerio publico.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p>Caso 020</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Militante de PJ que se encontraba en una jornada de desinfecci&oacute;n donde los vecinos de las distintas urbanizaciones y condominios solicitaban dichas jornadas como medida de bioseguridad ante la COVID-19. Utilizando hipoclorito diluido en agua desinfectaban &aacute;reas comunes. Aproximadamente a las 12:30 PM, cuando sucede la detenci&oacute;n, se encontraban almorzando, siendo abordados por una comisi&oacute;n armada de la Polic&iacute;a Municipal. Fueron trasladados a la Comandancia Regional del estado Aragua donde se les inculp&oacute; de estar rociando qu&iacute;micos para dormir a las personas y posteriormente robarlos en sus casas. Luego de nueve d&iacute;as detenido, fue liberado.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 021</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Se encontraba en la entrada de la casa de un militante de Voluntad Popular cuando fueron abordados por cinco patrullas del SEBIN con fusiles, al momento de ser detenidos fueron golpeados y los trasladaron a su sede. Estando all&iacute; sufrieron torturas (golpes, lesiones f&iacute;sicas, bolsas para asfixia, a David lo electrocutaron) fueron obligados a grabar un v&iacute;deo dando declaraciones junto a materiales como bombas molotov, granadas, gasolina para inculcarlos. Posterior a estas declaraciones fueron trasladados a un tribunal militar donde les dictaron prisi&oacute;n preventiva durante 15 d&iacute;as, los cuales se convirtieron en 54 d&iacute;as de detenci&oacute;n y luego, fueron puestos en libertad bajo una medida cautelar de presentaci&oacute;n en San Juan de Los Morros cada 15 d&iacute;as. Puestos en libertad, ambos salieron del pa&iacute;s, aunque regres&oacute; y se le notific&oacute; que su caso est&aacute; cerrado aunque no cuenta con una boleta oficial.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 022</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue llevado detenido sin raz&oacute;n alguna por el Sebin junto con dos de sus compa&ntilde;eros de equipo, en un carro sedan modelo Orinoco sin placas. Les permitieron llamar a sus familiares el d&iacute;a siguiente a las 11:00am y los acusaron de terrorismo, sembrandoles armas de guerra y equipo militar.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 023</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Durante unas manifestaciones llevadas en Barquisimeto, fue detenido por protestar con solo 18 a&ntilde;os por funcionarios de la GNB, siendo torturado f&iacute;sica y psicol&oacute;gicamente con diferentes instrumentos en varias ocasiones en el destacamento 121 de Barquisimeto. Mientras el m&eacute;dico le preguntaba qu&eacute; le hab&iacute;a pasado en la frente el GNB le respondi&oacute; de una vez: &ldquo;Se cay&oacute; del cami&oacute;n&rdquo;. Estaba detenido &ldquo;preventivamente&rdquo; desde las 12:30 del mediod&iacute;a hasta las 6:30 pm. Nunca tuvo acceso o acercamientos con abogados.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 024</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>El 30 de julio de 2017 fue detenido en el estado T&aacute;chira. La detenci&oacute;n se realiz&oacute; a mano armada por una comisi&oacute;n mixta de la PNB, GNB y la Polic&iacute;a del estado T&aacute;chira, cuando se encontraban junto a 3 compa&ntilde;eros del sector Troncal 5 del estado T&aacute;chira.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 025</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>El 26 de julio de 2017 fue detenido por efectivos de la Guardia Nacional Bolivariana mientras se encontraba manifestando junto a otros 13 manifestantes en la ciudad de Punto Fijo. La v&iacute;ctima para el momento era el Secretario Juvenil del partido pol&iacute;tico Acci&oacute;n Democr&aacute;tica.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 026</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Efectivos de seguridad detuvieron a Gustavo Gandica, secretario del partido Primero Justicia, mientras acompa&ntilde;aba a manifestantes en la marcha nacional convocada por la oposici&oacute;n el 19 de abril. El lugar de reclusi&oacute;n fue la Zona Operativa de Defensa Integral T&aacute;chira (ZODI).</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 027</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido en la ciudad de San Crist&oacute;bal el 19 de abril, durante las protestas de calle que se generaron en la marcha hacia la Defensor&iacute;a del Pueblo.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 028</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Estudiante y Presidente de la Federaci&oacute;n de Centros Universitarios de la UNET, fue detenido y recluido en el Destacamento 331 de Ciudad Tavacare, estado Barinas. El 17 de julio inici&oacute; una huelga de hambre junto con otros 23 j&oacute;venes, que se encontraban en el destacamento para exigir su libertad inmediata, as&iacute; como para rechazar las arbitrariedades y violaciones de sus derechos.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 029</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido en el estado T&aacute;chira.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 030</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>El 13 de febrero, fue detenido cuando iba saliendo de la Universidad Cat&oacute;lica del T&aacute;chira hacia su casa. Fue liberado horas m&aacute;s tarde ese mismo d&iacute;a. No report&oacute; haber sido golpeado sino mucha presi&oacute;n psicol&oacute;gica.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 031</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido mientras manifestaba pac&iacute;ficamente en el sector de San Bernardino, en Caracas, por pedirle a la GNB a trav&eacute;s de un meg&aacute;fono que no lanzaran bombas lacrim&oacute;genas.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 032</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Presidenta del Centro de Estudiantes de la Escuela de Trabajo Social de la UCV. Detenida durante la madrugada del 8 de mayo de 2014 mientras se encontraba manifestando en el campamento estudiantil de la Plaza Alfredo Sadel. Estuvo recluida en El Helicoide, sede del SEBIN. Se le acusaba de ser la fundadora de uno de los campamentos estudiantiles de la Sadel y, era perseguida por ser la presidenta del Centro de Estudiantes de la Escuela de Trabajo Social.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 033</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Durante la represi&oacute;n en Alta Vista, en la ciudad de Puerto Ordaz, en el estado Bol&iacute;var, funcionarios de la GNB fueron en contra de una marcha estudiantil que manifestaba su rechazo a la Asamblea Nacional Constituyente. De modo que, se detuvieron 11 personas, entre quienes result&oacute; detenido, y llevado a El Dorado y luego al Centro de Coordinaci&oacute;n Policial de Guaiparo en San F&eacute;lix.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 034</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido por la PNB, metido en una encava, encerrado con bomba lacrim&oacute;gena dentro</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 035</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue detenido cerca de las instancias del BOD del Rosal por la PNB.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 036</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue detenido cerca de las instancias del BOD del Rosal por la PNB.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 037</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue detenido cerca de las instancias del BOD del Rosal por la PNB.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 038</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue detenido cerca de las instancias del BOD del Rosal por la PNB.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 039</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Funcionarios de la GNB reprimieron con bombas lacrim&oacute;genas y perdigones la movilizaci&oacute;n que&nbsp; llegaba a&nbsp; la autopista Francisco Fajardo, altura de El Rosal. A las 2 de la tarde, un grupo de manifestantes que estaba huyendo de los gases, trat&oacute; de refugiarse en edificios que se ubican en la Avenida Venezuela de esa zona. All&iacute; fueron detenidos por la PNB que lleg&oacute; a entrar a algunos de estos edificios y lanz&oacute; lacrim&oacute;genas. Tambi&eacute;n le arrebataron a los j&oacute;venes sus banderas y otras pertenencias. Fue detenida por la PNB, metida en una encava, encerrada con bomba lacrim&oacute;gena dentro.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 040</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido arbitrariamente el 1 de mayo hasta el 18, en la sede del CICPC en la avenida Urdaneta. Dos d&iacute;as despu&eacute;s de su arresto, el joven fue presentado ante la jueza del Tribunal 52 de Control de Caracas, Gabriela G&oacute;mez Sequea, quien entonces solicit&oacute; dos fiadores para otorgar su libertad bajo r&eacute;gimen de presentaci&oacute;n.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 041</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue detenido cerca de las instancias del BOD del Rosal por la PNB.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 042</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Durante protesta pac&iacute;fica, documentando por el d&iacute;a del periodista fue emboscado y amedrentado con tiros para ser capturado. Estuvo detenido en destacamento 6-25, en Guaiparo y el Dorado durante 3 meses.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 04</strong>3</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue detenido arbitrariamente mientras estaba en una protesta pac&iacute;fica en Bello Monte</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 044</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue golpeado y detenido en protesta pac&iacute;fica en Altamira.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 045</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Era parte de la l&iacute;nea de presi&oacute;n en una protesta, a la altura del CC El Recreo en la Autopista Francisco Ffajardo. En el momento que se empez&oacute; a reprimir m&aacute;s fuerte, se hizo una emboscada por detr&aacute;s. Llegando a Altamira, 40 motos vinieron por &eacute;l, lo taclearon y patearon en el suelo, golpeado con casco y escudo mientras lo trasladaban al Helicoide.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 046</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido aproximadamente a las 3:45 p.m., cuando la protesta ya hab&iacute;a finalizado, por la GNB a la altura de la avenida Las Acacias (conocida como &quot;calle de los hoteles&quot;). Pas&oacute; junto a su amigo junto a un piquete de la GNB, ellos solicitaron permiso y los funcionarios los dejaron pasar sin problema porque all&iacute; ya no hab&iacute;a marcha, los mismos efectivos de la GNB que les dieron paso, los rodearon a los j&oacute;venes y les exigieron sus celulares. Ellos accedieron y se los entregaron. Se lo llevaron detenido en un cami&oacute;n.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 047</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Los estudiantes de la UCAB Guayana aseguran que los funcionarios militares violaron la autonom&iacute;a universitaria. Denunciaron que los efectivos de seguridad del Estado usaron bombas lacrim&oacute;genas de forma excesiva y que muchos estudiantes resultaron afectados por los gases. Un profesor de la universidad y periodista trat&oacute; de negociar con los funcionarios y recibi&oacute; un impacto de perdig&oacute;n en el cuello.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 048</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Denunciaron que los efectivos de seguridad del Estado usaron bombas lacrim&oacute;genas de forma excesiva y que muchos estudiantes resultaron afectados por los gases. Un profesor de la universidad y periodista trat&oacute; de negociar con los funcionarios y recibi&oacute; un impacto de perdig&oacute;n en el cuello. Los estudiantes de la UCAB Guayana aseguran que los funcionarios militares violaron la autonom&iacute;a universitaria. Esta ser&iacute;a la segunda vez que los estudiantes del centro universitario son atacados.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 049</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Efectivos de seguridad del Estado atacaron a los estudiantes de la UCAB Guayana, usando bombas lacrim&oacute;genas de forma excesiva y afectando a varios por los gases. Un profesor de la universidad y periodista trat&oacute; de negociar con los funcionarios y recibi&oacute; un impacto de perdig&oacute;n en el cuello.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 050</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Efectivos de seguridad del Estado atacaron a los estudiantes de la UCAB Guayana, usando bombas lacrim&oacute;genas de forma excesiva y afectando a varios por los gases. Un profesor de la universidad y periodista trat&oacute; de negociar con los funcionarios y recibi&oacute; un impacto de perdig&oacute;n en el cuello.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 051</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Efectivos de seguridad del Estado atacaron a los estudiantes de la UCAB Guayana, usando bombas lacrim&oacute;genas de forma excesiva y afectando a varios por los gases. Un profesor de la universidad y periodista trat&oacute; de negociar con los funcionarios y recibi&oacute; un impacto de perdig&oacute;n en el cuello.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 052</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Efectivos de seguridad del Estado atacaron a los estudiantes de la UCAB Guayana, usando bombas lacrim&oacute;genas de forma excesiva y afectando a varios por los gases. Un profesor de la universidad y periodista trat&oacute; de negociar con los funcionarios y recibi&oacute; un impacto de perdig&oacute;n en el cuello.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 053</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Efectivos de seguridad del Estado atacaron a los estudiantes de la UCAB Guayana, usando bombas lacrim&oacute;genas de forma excesiva y afectando a varios por los gases. Un profesor de la universidad y periodista trat&oacute; de negociar con los funcionarios y recibi&oacute; un impacto de perdig&oacute;n en el cuello.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 054</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>La tarde del martes 27 de junio, tres estudiantes de esta sede fueron arrestados por efectivos de la Guardia Nacional cuando participaban en una protesta antigubernamental en el sector residencial Los Mangos de Puerto Ordaz.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 055</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Por orden del juez que llevaba su causa, los j&oacute;venes fueron enviados el 19 de junio a la c&aacute;rcel de El Dorado, penal en el que permanecieron durante una semana. El lunes 26 y por petici&oacute;n de sus abogados, los muchachos fueron trasladados al Centro de Control Policial de Guaiparo, en la ciudad de San F&eacute;lix.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 056</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Por orden del juez que llevaba su causa, los j&oacute;venes fueron enviados el 19 de junio a la c&aacute;rcel de El Dorado, penal en el que permanecieron durante una semana. El lunes 26 y por petici&oacute;n de sus abogados, los muchachos fueron trasladados al Centro de Control Policial de Guaiparo, en la ciudad de San F&eacute;lix.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 057</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Viaj&oacute; en el a&ntilde;o 2014 con Lorent Saleh a Bogot&aacute; para participar en la Mesa Nacional de V&iacute;ctimas organizada por la ONU y denunciar la presencia de la guerrilla colombiana en Venezuela, pero luego fueron deportados a su pa&iacute;s. Fue detenido sin orden de captura, sin ser informado en ning&uacute;n momento de las razones de su detenci&oacute;n, ni el lugar al cual ser&iacute;a trasladado.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 058</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>En horas de la noche un grupo de j&oacute;venes se encontraba en la plaza Juan de Maldonado que est&aacute; al frente de los Tribunales del estado, esperando noticias de otros estudiantes, quienes tambi&eacute;n hab&iacute;an sido detenidos el pasado jueves, cuando fueron rodeados por veh&iacute;culos del Seb&iacute;n y el Cuerpo de Investigaciones Cient&iacute;ficas, Penales y Criminal&iacute;sticas</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 059</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>En horas de la noche del viernes, un grupo de j&oacute;venes se encontraba en la plaza Juan de Maldonado que est&aacute; al frente de los Tribunales del estado, esperando noticias de otros estudiantes, quienes tambi&eacute;n hab&iacute;an sido detenidos el pasado jueves, cuando fueron rodeados por veh&iacute;culos del Seb&iacute;n y el Cuerpo de Investigaciones Cient&iacute;ficas, Penales y Criminal&iacute;sticas. Los funcionarios policiales solicitaron el documento de identidad de todos los presentes y cuando chequearon los nombres, se los llevaron.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 060</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>En horas de la noche un grupo de j&oacute;venes se encontraba en la plaza Juan de Maldonado que est&aacute; al frente de los Tribunales del estado, esperando noticias de otros estudiantes, quienes tambi&eacute;n hab&iacute;an sido detenidos el pasado jueves, cuando fueron rodeados por veh&iacute;culos del Seb&iacute;n y el Cuerpo de Investigaciones Cient&iacute;ficas, Penales y Criminal&iacute;sticas. Los funcionarios policiales solicitaron el documento de identidad de todos los presentes y cuando chequearon los nombres, se los llevaron.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 061</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido en un tranc&oacute;n por protesta pac&iacute;fica.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 062</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido en la protesta por exigir condiciones de seguridad en la ULA.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 063</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Un profesor se dirigi&oacute; a la entrada de la universidad donde estaban los cuerpos de seguridad, al tratar de mediar e impedir la detenci&oacute;n de unos estudiantes, fue &eacute;l mismo detenido arbitrariamente.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 064</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Un joven fue detenido en la entrada de su universidad por funcionarios de seguridad del Estado.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 065</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido en protesta pac&iacute;fica a causa de tranc&oacute;n.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 066</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue detenido en la protesta realizada el 10 de abril. Recluido en la sede de la Divisi&oacute;n Antiterrorismo del CICPC en la avenida Urdaneta, Caracas. Fue liberado luego de 28 d&iacute;as de detenci&oacute;n arbitraria.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 068</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Causa Golpe azul</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 069</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Causa Golpe azul. La v&iacute;ctima se encuentra en libertad, est&aacute; en Colombia.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 070</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Causa Francotiradores</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 071</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Causa Francotiradores</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 072</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Causa Francotiradores</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p>Caso<strong> 073</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Causa Armaged&oacute;n II</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 074</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Causa Armaged&oacute;n II</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 075</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Causa Armaged&oacute;n II</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Desde 2016, la v&iacute;ctima se desempe&ntilde;aba como l&iacute;der social en la fundaci&oacute;n de Embajadores Comunitarios. Sin embargo, debido a las declaraciones estigmatizantes por parte de Diosdado Cabello en su programa &quot;Con El Mazo Dando&quot; el 17 de enero de 2018, y tras la irrupci&oacute;n de funcionarios del SEBIN a la sede de FEC, y llevarse a sus compa&ntilde;eros de directiva, Andreina tuvo que salir del pa&iacute;s.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 077</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido frente a la residencia &quot;Las Praderas&quot; en Ejido, M&eacute;rida, por participaci&oacute;n en las protestas que se dieron en Av. Centenario contra la Asamblea Nacional Constituyente</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 078</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido por &quot;actividades sospechosas&quot; en una subdelegaci&oacute;n del CICPC en Punta de Piedra, Nueva Esparta por participaci&oacute;n en protestas durante 2017, cuando estaban a punto de tomar el ferry hacia Caracas.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 079</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>10 funcionarios del CICPC ingresaron a su casa a las 4 a.m con una orden de allanamiento para detenerlo por participaci&oacute;n en protestas.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 081</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido por ejercer su derecho a la protesta pac&iacute;fica en la Av. Las Americas</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 082</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Acorralado y detenido en la Av. Centenario de la ciudad de Ejido mientras tomaba fotograf&iacute;as en la protesta que est&aacute; ocurriendo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 083</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido en San Bernardino tras participar en una protesta convocada por la Mesa de Unidad Democr&aacute;tica (MUD) en el Centro de Caracas</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 086</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Fue detenido arbitrariamente mientras estaba en una protesta pac&iacute;fica</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 087</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Detenido despu&eacute;s de haber sido acusado por Diosdado Cabello como asesino de Giselle Victoria Rubilar Figueroa durante las protestas de 2014 en M&eacute;rida.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 089</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Ha sido perseguido y detenido en cuatro oportunidades por la GNB por sus publicaciones donde se&ntilde;ala al Estado venezolano de corrupci&oacute;n, trata de personas y uso indebido de la fuerza durante las protestas de 2017.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 092</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Se encontraba ese d&iacute;a en su casa esperando ser llamado por unos vecinos para llenar el tanque de gasolina de su veh&iacute;culo en la estaci&oacute;n de servicio Shell cuando fue interceptado por una comisi&oacute;n de la Polic&iacute;a Estadal donde fue obligado a estar en el suelo recibiendo amenazas de muerte para que respondiera sobre unas presuntas protestas en la zona sur de San Carlos, fue esposado y llevado a la Comandancia de la Polic&iacute;a, le retienen el tel&eacute;fono donde se encontraba en los grupos del Frente Amplio donde, hab&iacute;a informaci&oacute;n sobre las protestas. Quedo detenido por 7 horas y que iba a ser trasladado al d&iacute;a siguiente por desacato sanitario por el no uso del tapabocas y cuando es trasladado al fiscalia, le iban imputar terrorismo pero por la relaci&oacute;n de los hechos la fiscal quedo desentendida y aunque conoc&iacute;an que era inocente, por causas pol&iacute;ticas, estuvo detenido por 65 hasta el 5 de diciembre fue liberado con una audiciencia de fiadores.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 093</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Persecuci&oacute;n pol&iacute;tica al ser dirigente estudiantil en su estado (Actualmente est&aacute; exiliada en Espa&ntilde;a)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 094</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Dirigente juvenil en Primero Justicia y Un Nuevo Tiempo del estado Trujillo sufriendo en varias oportunidades confrontaci&oacute;n con paramilitares financiados por la dictadura; se sum&oacute; al movimiento &ldquo;La salida&rdquo; donde sufri&oacute; m&uacute;ltiples veces serias amenazas con armas de fuego golpizas y acoso permanente en las protestas pac&iacute;ficas. Tuvo que salir huyendo al estado Lara (Barquisimeto), all&iacute; sigui&oacute; luchando hasta agosto del 2021, cuando &ldquo;colectivos&rdquo; lo sorprendieron en el ascensor de su residencia y fue fuertemente golpeado y amenazado que si no se iba no la contar&iacute;a y tom&oacute; la decisi&oacute;n de irse al exilio en Espa&ntilde;a - Madrid.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 095</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Persecuci&oacute;n pol&iacute;tica y omisi&oacute;n policial por protestar pac&iacute;ficamente. Actualmente es refugiado en Per&uacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 097</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Militante de Voluntad Popular y activista en defensa de los DDHH. Su casa fue violentada una madrugada por el DGCIM, entrando de forma violenta y sustrayendo lo siguiente: pasaporte, 50.000$ d&oacute;lares, Ropa, zapatos, relojes,JEEP CHEROKEE LIBERTY A&Ntilde;O 2012, tel&eacute;fonos (c&oacute;digo IMEI) y Laptop. Se encuentra en la clandestinidad</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 098</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Lleva fuera de Venezuela 4 a&ntilde;os. Su esposo era funcionario del SEBIN, por lo cual le pidi&oacute; que se retirara: all&iacute; comenz&oacute; el acoso y el hostigamiento, ya que no dejaban que se retirara del organismo. Empezaron a buscar alternativas para resguardar su seguridad e integridad, tanto de ellos como de su familia; de este modo, coordin&oacute; con algunos funcionarios diplom&aacute;ticos en Caracas. Desde la direcci&oacute;n general del CICPC empez&oacute; una serie de abusos y extorsiones (robo de un carro, dos motos y 1000$, extorsi&oacute;n por 2000 euros, patrullas merodeando la residencia y acusaciones falsas, entre otros)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 099</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Se dispuso a salir en la ma&ntilde;ana a las actividades de protestas pac&iacute;ficas convocadas por la oposici&oacute;n venezolana, al finalizar la jornada regres&oacute; a su apartamento (Edificio Los Cedros) en Base Aragua, Maracay. Aproximadamente las 11:00 PM distintas comisiones de la polic&iacute;a nacional y estadal, CICPC, GNB, SEBIN se presentaron sin una orden de allanamiento, alegando que &eacute;l hab&iacute;a cometido un delito. Fue sacado de su departamento ubicado en el piso 11 donde lo hicieron bajar por las escaleras sufriendo agresiones y golpes. Le imputaron los delitos de instigaci&oacute;n para delinquir, da&ntilde;o a propiedad p&uacute;blica y privada, homicidio en grado de complicidad y terrorismo. Estuvo detenido en la comisar&iacute;a de San Jacinto, luego en la de Sam&aacute;n de Guere, durando 3 d&iacute;as en el CICPC de Ca&ntilde;a de Az&uacute;car donde sufri&oacute; trato inhumano, a los 12 d&iacute;as fue trasladado al Palacio de Justicia y permaneci&oacute; aproximadamente ocho meses detenido en Tocor&oacute;n y al salir, bajo r&eacute;gimen de presentaci&oacute;n.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 100</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>El 15 de abril del a&ntilde;o 2017 se estaban realizando protestas a nivel nacional, las cuales fueron convocadas por la oposici&oacute;n venezolana. La v&iacute;ctima se encontraba en una protesta pac&iacute;fica en la comunidad de Las Tejitas cuando, aproximadamente a las 8:00 PM fue interceptado por una comisi&oacute;n del Servicio Bolivariano de Inteligencia Nacional (SEBIN) y detenido y llevado a los calabozos de ese organismo de seguridad, ubicado en el sector Limoncito. Los delitos que le quer&iacute;an imputar eran traici&oacute;n a la patria, terrorismo, alteraci&oacute;n del orden publico, atentado contra el patrimonio nacional, entre otros delitos. Permaneci&oacute; detenido en el SEBIN durante 18 d&iacute;as hasta que le dieron libertad plena.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 101</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>Luego de una protesta pac&iacute;fica, a trav&eacute;s de la.pintura de.murales, la Guardia Nacional Bolivariana, detuvo de manera arbitraria y violenta a las v&iacute;ctimas por un lapso de 4 horas.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:67px\">\r\n			<p><strong>Caso 102</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #000000; border-left:1px solid #000000; border-right:1px solid #000000; border-top:1px solid #000000; vertical-align:middle; width:603px\">\r\n			<p>En un punto de control de la Guardia Nacional Bolivariana la v&iacute;ctima fue detenida, golpeada y luego encarcelada durante 27 d&iacute;as, sin elementos probatorios que lo incriminasen.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #00000', '79 que significa que es el 20,51% de los casos registrados.', 'Esta información no fue recabada en el registro original de información. ', '283 que representa el 79,49% de los casos registrados.', 'Esta información no fue recabada en el registro original de información. ', '2022-05-06 08:10:43', '2022-05-07 20:51:19');
INSERT INTO `crimeneslhs` (`id`, `pais_code`, `user_id`, `crimeneslh`, `clasificacionColectiva`, `clasificacionIndividual`, `lugar`, `breveDescripcion`, `numCasosCPIAprobados`, `numCasosCPIPendientes`, `numCasosNoCpiAprobado`, `numCasosNoCpiPendiente`, `created_at`, `updated_at`) VALUES
(3, 'ES', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n.&nbsp;&nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:29:11', NULL),
(4, 'CO', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:31:55', NULL),
(5, 'US', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:34:40', NULL),
(6, 'PE', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:36:33', NULL),
(7, 'CL', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:38:26', NULL),
(8, 'BE', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:40:51', NULL),
(9, 'AR', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:42:41', NULL),
(10, 'MX', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:44:30', NULL),
(11, 'PA', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:46:02', NULL),
(12, 'BR', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:48:24', NULL),
(13, 'CA', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:50:05', NULL),
(14, 'CR', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:52:04', NULL),
(15, 'IT', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:54:49', NULL),
(16, 'NL', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:56:40', NULL),
(17, 'CH', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:58:07', NULL),
(18, 'UY', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:59:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais_code` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pais_id` bigint(20) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `lugar` text COLLATE utf8mb4_unicode_ci,
  `hora` time DEFAULT NULL,
  `direccion` text COLLATE utf8mb4_unicode_ci,
  `ciudad` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `pais_code`, `user_id`, `pais_id`, `fecha`, `lugar`, `hora`, `direccion`, `ciudad`, `created_at`, `updated_at`) VALUES
(1, 'ZM', 1, 20, '2024-08-16 04:00:00', 'asdds', '12:15:00', 'adsdsa', 'adsdsa', '2024-08-09 20:16:27', '2024-08-09 20:28:38');

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
-- Estructura de tabla para la tabla `fotoceos`
--

CREATE TABLE `fotoceos` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fotoceos`
--

INSERT INTO `fotoceos` (`id`, `user_id`, `avatar`, `titulo`, `periodo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'fotoceos/TsZnutwOXNH4atK6DgNFlCxJbskqjLbSPvPUonDZ.jpg', 'Junta Directiva de la Sociedad Venezolana de Cirugía Bucomaxilofacial', 'Periodo 2022 - 2024', '2021-09-24 18:52:40', '2024-04-20 19:35:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `user_id`, `avatar`, `titulo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'galerias/DEPxjjzL7v8fLzDDe7VAi1JAdsTxIHkDsdaJ8qbv.jpg', 'galeria svcbmf', '2018-10-30 14:14:15', '2024-04-20 22:12:21', NULL),
(2, NULL, '7559971.jpg', 'galeria svcbmf1', '2019-12-18 06:55:49', NULL, NULL),
(3, NULL, '7549401.jpg', 'galeria svcbmf', '2019-12-19 07:34:01', NULL, NULL),
(4, NULL, '5515091.jpg', 'galeria svcbmf', '2019-12-21 04:26:43', NULL, NULL),
(5, NULL, '9227041.jpg', 'galeria svcbmf', '2019-12-21 04:28:04', NULL, NULL),
(6, NULL, '6563891.jpg', 'galeria svcbmf', '2019-12-21 04:28:17', NULL, NULL),
(7, NULL, '5533491.jpg', 'galeria svcbmf', '2019-12-21 04:28:32', NULL, NULL),
(8, NULL, '3690541.jpg', 'galeria svcbmf', '2019-12-21 04:28:46', NULL, NULL),
(9, NULL, '1302111.jpg', 'galeria svcbmf', '2019-12-21 04:29:03', NULL, NULL),
(10, NULL, '640361.jpg', 'galeria svcbmf', '2019-12-21 04:29:27', NULL, NULL),
(11, NULL, '4272491.jpg', 'galeria svcbmf', '2019-12-21 04:29:43', NULL, NULL),
(12, NULL, '4921401.jpg', 'galeria svcbmf', '2019-12-21 04:29:57', NULL, NULL),
(13, NULL, '5644281.jpg', 'galeria svcbmf', '2019-12-21 04:30:12', NULL, NULL),
(14, NULL, '2742851.jpg', 'galeria svcbmf', '2019-12-21 04:30:25', NULL, NULL),
(15, NULL, '4870561.jpg', 'galeria svcbmf', '2019-12-21 04:30:38', NULL, NULL),
(16, NULL, '490651.jpg', 'galeria svcbmf', '2019-12-21 04:30:56', NULL, NULL),
(17, NULL, '633801.jpg', 'galeria svcbmf', '2019-12-21 04:31:13', NULL, NULL),
(18, NULL, '8927341.jpg', 'galeria svcbmf', '2019-12-21 04:31:28', NULL, NULL),
(19, NULL, '4054071.jpg', 'galeria svcbmf', '2019-12-21 04:31:42', NULL, NULL),
(20, NULL, '2027801.jpg', 'galeria svcbmf', '2019-12-21 04:31:55', NULL, NULL),
(21, NULL, '7922671.jpg', 'galeria svcbmf', '2019-12-21 04:32:20', NULL, NULL),
(22, NULL, '4265731.jpg', 'galeria svcbmf', '2019-12-21 04:32:39', NULL, NULL),
(23, NULL, '6745951.jpg', 'galeria svcbmf', '2019-12-21 04:32:54', NULL, NULL),
(24, NULL, '1039171.jpg', 'galeria svcbmf', '2019-12-21 04:33:11', NULL, NULL),
(25, NULL, '567501.jpg', 'galeria svcbmf', '2019-12-21 04:33:27', NULL, NULL),
(26, NULL, '7758181.jpg', 'galeria svcbmf', '2019-12-21 04:33:41', NULL, NULL),
(27, NULL, '5836591.jpg', 'galeria svcbmf', '2019-12-21 04:34:03', NULL, NULL),
(28, NULL, '6573821.jpg', 'galeria svcbmf', '2019-12-21 04:34:48', NULL, NULL),
(29, NULL, '7570081.jpg', 'galeria svcbmf', '2019-12-21 04:35:05', NULL, NULL);

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
(3, 'App\\Models\\User', 3);

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
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` text,
  `avatar` varchar(255) DEFAULT NULL,
  `imagemovil` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_activeText` varchar(255) NOT NULL,
  `is_activeBot` varchar(255) NOT NULL,
  `boton` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `user_id`, `description`, `avatar`, `imagemovil`, `is_active`, `is_activeText`, `is_activeBot`, `boton`, `enlace`, `target`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bienvenido a la Web App SVCBMF', 1, '<p>null</p>', 'sliders/MQIn3xgfUHrKbNP5IIakcUnhuYPQReCNPQOLvNCm.jpg', 'sliders/zq4GkDfDYs4GcrxiUOyRnGWsSndxdLiauw99GDjo.jpg', 1, 'displayNone', 'displayBlok', 'Conocer más', 'nosotros', '_self', NULL, '2024-04-18 23:00:01', NULL),
(2, 'Educación Continúa 2021', 1, '<p>Educaci&oacute;n Contin&uacute;a 2021</p>', 'sliders/GJPQvQZrE5KfiAriCWFUs9QumYhFtnjOnbvP7QGe.jpg', 'sliders/sjsSxVScxNpecM0G53sFlim3QUOQyMhomSZgez4I.jpg', 0, 'displayNone', 'displayBlok', 'Regístrate aquí', 'https://attendee.gotowebinar.com/rt/5090401700977564685', '_blank', NULL, '2024-04-21 01:20:16', NULL);

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
(3, 'test', 'test@test.com', NULL, NULL, 1, NULL, '$2y$10$xqBVq4LTcpLtl0imBo70Cuan447N2b2WmL9gDlCM6JwdDSpXV6VWK', NULL, '2024-08-08 22:14:46', '2024-08-08 22:14:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` text,
  `user_id` int(11) NOT NULL,
  `video_review` text,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `title`, `user_id`, `video_review`, `is_active`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'nosotros', 1, '34pdTMKQb90', 1, 1, '2022-09-28 03:47:05', '2022-09-28 02:37:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `violacionesddhhs`
--

CREATE TABLE `violacionesddhhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais_code` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `violacionesDdhhTotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacionDCP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacionDESCA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calsificacionPueblos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `breveDescripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosCorteInterDDHH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosComDHNU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `casosNoAccionar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `violacionesddhhs`
--

INSERT INTO `violacionesddhhs` (`id`, `pais_code`, `user_id`, `violacionesDdhhTotal`, `clasificacionDCP`, `clasificacionDESCA`, `calsificacionPueblos`, `lugar`, `breveDescripcion`, `numCasosCorteInterDDHH`, `numCasosComDHNU`, `casosNoAccionar`, `created_at`, `updated_at`) VALUES
(1, 'AD', 1, 'Esto es una muestra para guia', 'Esto es una muestra para guia', 'Esto es una muestra para guia', 'Esto es una muestra para guia', 'Esto es una muestra para guia', '<p>Esto es una muestra para guia</p>\r\n', 'Esto es una muestra para guia', 'Esto es una muestra para guia', 'Esto es una muestra para guia', '2022-02-12 00:50:29', NULL),
(2, 'VE', 1, '72', '64', '8', '0', '<ul>\r\n	<li>Amazonas: Caso 006.</li>\r\n	<li>Anzo&aacute;tegui: Caso 007, Caso 292.</li>\r\n	<li>Bol&iacute;var: Caso 161, Caso 219, Caso 220, Caso 266, Caso 312.</li>\r\n	<li>Carabobo: Caso 299, Caso 304, Caso 305, Caso 318, Caso 320, Caso 331, Caso 333, Caso 340, Caso 345, Caso 346,&nbsp;</li>\r\n	<li>Cojedes: Caso 303</li>\r\n	<li>Distrito Capital: Caso 080, Caso 085, Caso 090, Caso 110, Caso 132, Caso 159, Caso 160, Caso 162, Caso 164, Caso 262, Caso 287, Caso 321, Caso 332</li>\r\n	<li>Falc&oacute;n: Caso 341&nbsp;</li>\r\n	<li>Lara: Caso 091, Caso 223, Caso 234, Caso 242, Caso 243, Caso 244, Caso 254, Caso 339</li>\r\n	<li>M&eacute;rida: Caso 088, Caso 096, Caso 116, Caso 120, Caso 152, Caso 153</li>\r\n	<li>Miranda: Caso 067.</li>\r\n	<li>T&aacute;chira: Caso 112.</li>\r\n	<li>Vargas: Caso 336</li>\r\n	<li>Yaracuy: Caso 286.</li>\r\n	<li>Zulia: Caso 138, Caso 163.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Caso 003: Denuncia sobre violaci&oacute;n al derecho a la salud por la situaci&oacute;n de falta de medicamentos y tratamientos.&nbsp;</li>\r\n	<li>Caso 005: Denuncia haber sido v&iacute;ctima de una agresi&oacute;n leve en una protesta de la oposici&oacute;n en Venezuela.&nbsp;</li>\r\n	<li>Caso 006: Denuncia haber sido v&iacute;ctima de un despido laboral injustificado.</li>\r\n	<li>Caso 007: Denuncia conectada a violaciones de Derechos Humanos.</li>\r\n	<li>Caso 008: La v&iacute;ctima expuso una violaci&oacute;n a derechos humanos por el acceso a medicamentos y luego la migraci&oacute;n forzosaa Colombia para cubrir las carencias de su nieto quien sufre de par&aacute;lisis cerebral.&nbsp;</li>\r\n	<li>Caso 067: Detenido en protesta pac&iacute;fica.</li>\r\n	<li>Caso 080: Perseguida por funcionarios del gobierno por participaci&oacute;n de ella y su familia durante las protestas.</li>\r\n	<li>Caso 084:Denuncia conectada a violaciones de Derechos Humanos.</li>\r\n	<li>Caso 085: Detenido arbitrariamente por funcionarios del SEBIN y Colectivos en El Para&iacute;so, Caracas, mientras grababa un v&iacute;deo para Venevisi&oacute;n sobre c&oacute;mo iban las elecciones de la Asamblea Nacional Constituyente.</li>\r\n	<li>Caso 088: Detenido en un allanamiento que se realiz&oacute; en su vivienda ubicada en la urbanizaci&oacute;n San Crist&oacute;bal, M&eacute;rida.</li>\r\n	<li>Caso 090: Denuncia conectada a violaciones de Derechos Humanos.</li>\r\n	<li>Caso 091: Trabajadora de CORPOELEC del estado Lara era obligada a no pagarle a los empleados que no participaran en actividades del &ldquo;PSUV&rdquo;&rdquo;, ella se opuso a &eacute;sto y empez&oacute; a recibir amenazas de sus superiores y la destituyen de su cargo. demand&oacute; a la empresa porque la despidieron, sin embargo al continuar las amenazas y luego de que secuestraran a sus hijos para salvaguardar su integridad y la vida de su familia huy&oacute; del pa&iacute;s a Espa&ntilde;a.</li>\r\n	<li>Caso 096: Persecuci&oacute;n pol&iacute;tica, violaci&oacute;n del derecho a la propiedad por parte del DGCIM. Actualmente se encuentra exiliado en Colombia.</li>\r\n	<li>Caso 108: Afectado por el pago de pensiones.</li>\r\n	<li>Caso 110: Estudiante universitario parte del ME en protestas. Recibi&oacute; disparos al pr&oacute;ximo contacto, golpes y cortes con escudos. Adem&aacute;s de esto fue hostigado por el DGCIM, quienes colocaron un comando frente a su casa por varios d&iacute;as. Por &uacute;ltimo un PoliGuaira descargo contra el 4 veces su arma reglamentaria, aunque no sali&oacute; herido.</li>\r\n	<li>Caso 112: Por pertenecer a una organizaci&oacute;n pol&iacute;tica en distintas ocasiones los cuerpos del Estado y Colectivos lo&nbsp; amenazaron verbalmente, e incluso, lo amedrentaron con armas largas en la presencia de mi madre. En actos p&uacute;blicos llegaban tambi&eacute;n amenazando, e incluso una vez me detuvieron en el comando de la Guardia Nacional en el Municipio Michelena.</li>\r\n	<li>Caso 116: Se encontraba en una protesta en Ejido, en la Av. Centenario, cuando fue herida por funcionarios de la GNB.</li>\r\n	<li>Caso 120: Detenido mientras se encontraba en protesta en el Sector El Carrizal, en contra de la Asamblea Nacional Constituyente.</li>\r\n	<li>Caso 132: Fue detenido por 15 funcionarios del FAES por el delito de incitaci&oacute;n al odio por publicar informaci&oacute;n sobre la situaci&oacute;n del COVID-19 en Venezuela.</li>\r\n	<li>Caso 138: Detenido por funcionarios de la GNB mientras regresaba a Venezuela tras una gira por Colombia y Estados Unidos.</li>\r\n	<li>Caso 140: Lo detienen en su casa, por supuestamente incurrir en terrorismo.</li>\r\n	<li>Casos 152 y 153: Detenidos por el DGCIM tras realizar una s&aacute;tira en internet, donde expuso la situaci&oacute;n de la sede del Cuerpo de Bomberos de M&eacute;rida, del Municipio Rangel.</li>\r\n	<li>Caso 159: Detenido cuando se encontraba en el Tribunal Supremo de Justicia protestando por la suspensi&oacute;n de la Asamblea Nacional.</li>\r\n	<li>Caso 160: Detenida durante protesta frente al TSJ en rechazo de las sentencias que declaran a la Asamblea Nacional en desacato.</li>\r\n	<li>Caso 161: Detenido en las inmediaciones de la Universidad Cat&oacute;lica Andr&eacute;s Bello, sede Guayana, mientras se encontraba en una protesta pac&iacute;fica.</li>\r\n	<li>Caso 162: Detenido durante protesta frente al TSJ en rechazo de las sentencias que declaran a la Asamblea Nacional en desacato.</li>\r\n	<li>Caso 163: Detenido en un comercio en la Carretera H, en Cabimas, por su activismo pol&iacute;tico y comunitario.</li>\r\n	<li>Caso 164: Detenido durante protesta frente al TSJ en rechazo de las sentencias que declaran a la Asamblea Nacional en desacato.</li>\r\n	<li>Caso 219: Era trabajador de Venalum. En virtud de los reclamos realizados por temas laborales, fue despedido injustificadamente, le suspendieron el sueldo y ha sido amenazado constantemente, raz&oacute;n por la cual se encuentra en M&eacute;xico.&nbsp;</li>\r\n	<li>Caso 220: Se encuentra en M&eacute;xico desde hace 2 a&ntilde;os, sali&oacute; del pa&iacute;s debido a las amenazas que recib&iacute;a.</li>\r\n	<li>Caso 223: Violaciones a sus derechos humanos relacionadas con eventos pol&iacute;ticos, y en particular, con la documentaci&oacute;n o pauta de la llegada de l&iacute;deres pol&iacute;ticos al pa&iacute;s.</li>\r\n	<li>Caso 234: Eventos Pol&iacute;ticos: Llegada de l&iacute;deres pol&iacute;ticos al pa&iacute;s. Documentaci&oacute;n o pautas de acontecimientos pol&iacute;ticos o relacionados con denuncia a los DDHH (llegada de representantes de la ACNUDH a recintos penitenciarios o centros hospitalarios).</li>\r\n	<li>Caso 242: Documentaci&oacute;n de acontecimientos pol&iacute;ticos o relacionados con denuncia a los DDHH (trabaja como investigador para la ONG Una ventana a la libertad que se encarga de monitorear centros penitenciarios y calabozos de Venezuela). Detenci&oacute;n arbitraria</li>\r\n	<li>Caso 243: Documentaci&oacute;n o pautas de acontecimientos pol&iacute;ticos o relacionados con denuncia a los DDHH (en las manifestaciones de 2017 y en las estaciones de servicio ante la escasez de combustible, en ambas situaciones fue intimidado por efectivos de la GNB.)</li>\r\n	<li>Caso 244: Eventos Pol&iacute;ticos: En pautas de acontecimientos pol&iacute;ticos hubo presencia de colectivos que agredieron y persiguieron a los presentes. Hubo uso de armas de fuego y lanzamiento de piedras, y pese a todo esto y que hab&iacute;a efectivos de organismos de seguridad en el lugar los mismos decidieron no intervenir.</li>\r\n	<li>Caso 254: Durante las protestas del a&ntilde;o 2017, iniciaron un plan de persecuci&oacute;n contra los periodistas que lo afect&oacute; personalmente</li>\r\n	<li>Caso 262 :Fue detenida arbitrariamente tras haber tomado una foto a una ambulancia en la que se trasladaba un paciente con COVID, hecho que ella desconoc&iacute;a.&nbsp;</li>\r\n	<li>Caso 266: Protestas 2017: Los manifestantes afectos al gobierno lo obligaron a borrar material de una protesta en Ciudad Bol&iacute;var y le dieron patadas en la espalda</li>\r\n	<li>Caso 286: Fue visto en una protesta y esa misma noche le allanaron la casa y fue detenido hasta que confesara detalles de la organizaci&oacute;n de la protesta.</li>\r\n	<li>Caso 287: Fue retenida en el helicoide durante 5 horas porque estaba saliendo de una protesta en la UCV. Fue detenida por 4 personas m&aacute;s.</li>\r\n	<li>Caso 292: Detenido en la Av. 5 de julio cuando se encontraba protestando sobre la persecuci&oacute;n a los presos pol&iacute;ticos.</li>\r\n	<li>Caso 299: Violaci&oacute;n de derechos humanos (detenido en protesta pac&iacute;fica)</li>\r\n	<li>Caso 303: Fue a visitar a su pap&aacute; en Tinaquillo porque viv&iacute;a en Naguanagua, estado Carabobo. Fue detenido por la GNB en una protesta en la urbanizaci&oacute;n al buscar a mi padre en el disturbio. Luego lo llevaron a San Carlos esperando la orden del juez, no lo pudieron atender y termin&oacute; en el calabozo de la fiscal&iacute;a de San Carlos. Al d&iacute;a siguiente le pusieron la medidas de fiadores y pasaron 14 d&iacute;as, mientras segu&iacute;a en el calabozo esperando la carta de excarcelaci&oacute;n. Despu&eacute;s de eso pas&oacute; 8 meses present&aacute;ndose a la fiscal&iacute;a de San Carlos.</li>\r\n	<li>Caso 304: Era miembro de un partido pol&iacute;tico opositor en Venezuela (Voluntad Popular) que particip&oacute; en una protesta pac&iacute;fica en la Av. Bol&iacute;var de Valencia, donde al terminar fueron perseguidos por una patrulla de la Polic&iacute;a de Carabobo, siendo detenidos por la Ley del Odio.</li>\r\n	<li>Caso 305: &ldquo;Ven&iacute;a saliendo de un plant&oacute;n en la Av. Bol&iacute;var. Iba caminando por el Elevado El Trigal y ah&iacute; fue cuando llenaron una encava de j&oacute;venes de mi edad, me metieron all&iacute;. Me llevaron al CORE 2 y el cuerpo de seguridad que particip&oacute; fue la GNB. Yo estuve tres d&iacute;as y medios ah&iacute;, no nos dejaban dormir y le daban golpes a otros compa&ntilde;eros que estaban para atemorizar al resto dentro de la celda. Me amenazaban con violarme.&quot;</li>\r\n	<li>Caso 311: Detenido en protesta pac&iacute;fica</li>\r\n	<li>Caso 312: Protestas 2017: Los manifestantes afectos al gobierno lo obligaron a borrar material de una protesta en Ciudad Bol&iacute;var y le dieron patadas en la espalda</li>\r\n	<li>Caso 318: Cuando realizaba una cobertura de manifestaci&oacute;n en El Trigal, un Polic&iacute;a de Carabobo intent&oacute; llev&aacute;rsela detenida. Actualmente se encuentra en Estados Unidos.</li>\r\n	<li>Caso 320: Cuando realizaba una cobertura de manifestaci&oacute;n en El Trigal, un Polic&iacute;a de Carabobo intent&oacute; llev&aacute;rsela detenida. Cuando la iban a montar en la unidad donde estaban los detenidos de la GNB un uniformado le dijo: &quot;corran, v&aacute;yanse de aqu&iacute;.&quot;</li>\r\n	<li>Caso 321: En el contexto de protestas ha sido perseguido y detenido.</li>\r\n	<li>Caso 323: Protestas. Por su labor como periodista ha sido hostigado y perseguido. Durante su cobertura ha sido abordado por funcionarios policiales que lo han obligado a borrar el material.</li>\r\n	<li>Caso 330: Durante el ejercicio de su profesi&oacute;n ha sido v&iacute;ctima de hostigamientos en el contexto de&nbsp; protestas y cuando se ha encontrado cubriendo una noticia.</li>\r\n	<li>Caso 331: Durante el ejercicio de su profesi&oacute;n ha sido v&iacute;ctima de hostigamientos en el contexto de&nbsp; protestas y cuando se ha encontrado cubriendo una noticia.</li>\r\n	<li>Caso 332: Durante el ejercicio de su profesi&oacute;n ha sido v&iacute;ctima de hostigamientos en el contexto de&nbsp; protestas y cuando se ha encontrado cubriendo una noticia.</li>\r\n	<li>Caso 333: 7 a&ntilde;os en RCTV y 11 a&ntilde;os en Televen, ha sido secuestrado en un carro, donde fue envuelto y amenazado con ser quemado vivo. Tambi&eacute;n ha sido perseguido, y golpeado durante pautas .Fue detenido en el Palacio de Justicia durante dos d&iacute;as mientras se encontraba documentando una detenci&oacute;n.</li>\r\n	<li>Caso 336: Eventos Pol&iacute;ticos: Llegada de l&iacute;deres pol&iacute;ticos al pa&iacute;s. Documentaci&oacute;n o pautas de acontecimientos pol&iacute;ticos.</li>\r\n	<li>Caso 337: Se encontraba cerca del destacamento 121 de la Guardia Nacional, apoyando a los pacientes renales en una manifestaci&oacute;n, cuando grab&oacute; a una se&ntilde;ora llorando porque no pod&iacute;a movilizar a su hijo. Un efectivo de la GNB le dijo que no pod&iacute;a grabar y procedi&oacute; a detenerlo y quitarle todo, incluyendo el celular.</li>\r\n	<li>Caso 340: Inici&oacute; un acoso laboral por habernos negado a participar en las elecciones de la Asamblea Nacional Constituyente, donde el acoso personal, persecuciones y amenazas duraron por m&aacute;s de un a&ntilde;o por denunciar el incumplimiento de las conquistas sociolaborales de los sindicatos conseguidas por las convenciones colectivas.</li>\r\n	<li>Caso 341: Se encontraba en una protesta que ten&iacute;a como punto de encuentro la sede de la Gobernaci&oacute;n del estado Falc&oacute;n. Al llegar a la sede de la Defensor&iacute;a del Pueblo comienza el ataque de la GNB y de la PNB, donde se escondieron durante 4 horas en las casas aleda&ntilde;as. Al salir de la zona, me dirijo a un punto c&eacute;ntrico del municipio donde llega la PNB a golpear a las personas que estaban protestando en la zona.</li>\r\n	<li>Caso 345: Ese d&iacute;a ocurri&oacute; el allanamiento de la Universidad&nbsp; por parte de organismos del Estado, mediante un uso desmesurado de la fuerza para controlar un foco de protesta y fueron violadas todas las normas de autonom&iacute;a de la universidad. Fueron agredidos muchos estudiantes que tan solo se encontraban viendo clases.&nbsp;</li>\r\n	<li>Caso 346: Esta violaci&oacute;n de DD.HH ocurri&oacute; en la Facultad de Ciencias Jur&iacute;dicas y Pol&iacute;ticas de la Universidad de Carabobo. Nos encontr&aacute;bamos en las elecciones de ese momento, cuando aproximadamente a las 10 de la ma&ntilde;ana aparecieron algunos colectivos con funcionarios vestidos de civil allanaron las sedes donde se encontraban las urnas de votaci&oacute;n, luego de 15 minutos se empezaron a o&iacute;r disparos y bombas lacrim&oacute;genas.</li>\r\n</ul>\r\n', '1', '0', '71', '2022-05-06 08:05:11', NULL),
(3, 'ES', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n.&nbsp;&nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:28:37', NULL),
(4, 'CO', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:32:11', NULL),
(5, 'US', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:35:03', NULL),
(6, 'PE', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:36:46', NULL),
(7, 'CL', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:38:44', NULL),
(8, 'BE', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:41:10', NULL),
(9, 'AR', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:43:00', NULL),
(10, 'MX', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:44:44', NULL),
(11, 'PA', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:46:46', NULL),
(12, 'BR', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:48:41', NULL),
(13, 'CA', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:50:18', NULL),
(14, 'CR', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:52:27', NULL),
(15, 'IT', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:55:04', NULL),
(16, 'NL', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:56:58', NULL),
(17, 'CH', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:58:32', NULL),
(18, 'UY', 1, 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '<p>Esta informaci&oacute;n no fue recabada en el registro original de informaci&oacute;n. &nbsp;</p>\r\n', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', 'Esta información no fue recabada en el registro original de información.  ', '2022-05-06 08:59:57', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `crimeneslhs`
--
ALTER TABLE `crimeneslhs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `fotoceos`
--
ALTER TABLE `fotoceos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `violacionesddhhs`
--
ALTER TABLE `violacionesddhhs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `crimeneslhs`
--
ALTER TABLE `crimeneslhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fotoceos`
--
ALTER TABLE `fotoceos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `violacionesddhhs`
--
ALTER TABLE `violacionesddhhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
