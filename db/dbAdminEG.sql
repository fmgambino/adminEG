-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2023 a las 15:07:53
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `my_iphone`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anexos`
--

CREATE TABLE `anexos` (
  `idAnexos` int(11) NOT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anotacoes_os`
--

CREATE TABLE `anotacoes_os` (
  `idAnotacoes` int(11) NOT NULL,
  `anotacao` varchar(255) NOT NULL,
  `data_hora` datetime NOT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `anotacoes_os`
--

INSERT INTO `anotacoes_os` (`idAnotacoes`, `anotacao`, `data_hora`, `os_id`) VALUES
(1, 'Hola Mundo', '2023-04-19 20:01:17', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('aff72f32adf00f2c9db3c01ab7394030c1e8841a', '190.55.50.99', 1681838741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313833383734313b6e6f6d655f61646d696e7c733a31333a22446179616e20426172626f7a61223b656d61696c5f61646d696e7c733a32303a22736f706f727465406e65786f6c6966652e636f6d223b75726c5f696d6167655f757365725f61646d696e7c4e3b69645f61646d696e7c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('f7f5bc84001df5737baeb4a8acd5ec23d797ae97', '190.55.50.99', 1681842894, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834323839343b6e6f6d655f61646d696e7c733a31333a22446179616e20426172626f7a61223b656d61696c5f61646d696e7c733a32303a22736f706f727465406e65786f6c6966652e636f6d223b75726c5f696d6167655f757365725f61646d696e7c4e3b69645f61646d696e7c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('b7e5a9cd034eed89440b9318c086c89677f8b897', '190.7.2.155', 1681840564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834303536343b),
('091a8f9e8ba8ec2de7cb49b7aca9b2ffb00b3ff2', '45.167.220.43', 1681842772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834323737323b),
('15ad5ee19e21139cb3ae6bbdfcc76f0f917201b5', '2800:810:52d:3a:646d:5f07:af33:816', 1681843308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834333330383b6e6f6d655f61646d696e7c733a31333a22446179616e20426172626f7a61223b656d61696c5f61646d696e7c733a32303a22736f706f727465406e65786f6c6966652e636f6d223b75726c5f696d6167655f757365725f61646d696e7c4e3b69645f61646d696e7c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b6e6f6d657c733a31333a22446179616e20426172626f7a61223b636c69656e74655f69647c733a313a2233223b656d61696c7c733a31373a22626172626f7a6140676d61696c2e636f6d223b636f6e65637461646f7c623a313b6973436c69656e74657c623a313b),
('71497e46ff17569c4e11fa1e38c2abe170cd0414', '190.55.50.99', 1681843313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834333330383b6e6f6d655f61646d696e7c733a31333a22446179616e20426172626f7a61223b656d61696c5f61646d696e7c733a32303a22736f706f727465406e65786f6c6966652e636f6d223b75726c5f696d6167655f757365725f61646d696e7c4e3b69645f61646d696e7c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b6e6f6d657c733a31333a22446179616e20426172626f7a61223b636c69656e74655f69647c733a313a2233223b656d61696c7c733a31373a22626172626f7a6140676d61696c2e636f6d223b636f6e65637461646f7c623a313b6973436c69656e74657c623a313b),
('2843a475dc205d884e7a43d8862ab0e6f8fcb686', '2a02:4780:b:c0de::54', 1681846616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834363631363b),
('7bc1db0d5ec8e1fc570107663586715f8f21f89c', '2a02:4780:b:c0de::54', 1681846616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313834363631363b),
('d7ea1565535cd7fac70755bc8b2e471eda684165', '181.9.124.26', 1681850750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313835303734323b),
('2321b01919ee29960c81464d9fdda4dc5d71f0aa', '35.165.127.97', 1681868707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313836383730373b),
('f0b35a8b6ffbee7ef6b85ed2f89fb242e0b71b79', '35.165.127.97', 1681868708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313836383730383b),
('16960dc40bbc1f14912f8d7cb03ab1bd91d6918b', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a', 1681903942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313930333934323b),
('ad7176e68ccd3749217f6cba3224d091cb0448bc', '45.167.168.200', 1681917289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313931373238393b),
('d88e9617e9fae8fbe72a84fe4a3212ed54121b18', '45.167.168.200', 1681917290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313931373239303b),
('e48303aa7b8d1c39a95d1441e0a8a421ade022c3', '190.230.158.223', 1681917786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313931373738363b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('b0e39dce889814e4084b0f9f4625e92cbf03c18a', '190.230.158.223', 1681918111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313931383131313b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('10904734eb3117ebc008e1f83930a64091f4a988', '190.230.158.223', 1681918939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313931383933393b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('05990098872e6fca3877d1e0cad9f1ff4ff9c59e', '190.230.158.223', 1681918939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313931383933393b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('9h1a29338eknnf3v6g7088luu2u0l0h9', '::1', 1681921370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932313337303b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('7u3j4noqvvmkn47pnmpka7na97v8epuf', '::1', 1681921832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932313833323b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('9agci192p76bd5tmn9ltfdp2htsrjkeu', '::1', 1681922136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932323133363b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b737563636573737c733a34353a22417320696e666f726d61c3a7c3b5657320666f72616d20616c7465726164617320636f6d207375636573736f2e223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('5ar5js84kcb6eplf4gbupbnhtfkdu7f5', '::1', 1681923268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932333236383b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('4ohig0lq60utlgkrj8d04gaq2i171jv4', '::1', 1681924514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932343531343b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b737563636573737c733a33303a225365727669c3a76f2061646963696f6e61646f20636f6d20c3897869746f223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('v31mptvoov9cqerp6rj42608v6tp15il', '::1', 1681924821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932343832313b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('sk57if26gv00dkcets6jo1rcub2o7ef8', '::1', 1681925193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932353139333b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('sbp77sv8rdh82k68honjv014dd73lmfl', '::1', 1681925581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932353538313b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('p519d26fjtur64966hjgs4lbtpdopv4i', '::1', 1681926148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932363134383b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('up7opisii0354j6q9j0ppbg5eq3v8apo', '::1', 1681926493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932363439333b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('3be6iim5f5sivm6snumdj87gveml2mjl', '::1', 1681926933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932363933333b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('j795mm0rkfk2ilshttm150h6hrsnvhfp', '::1', 1681927282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932373238323b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('9ir1bcp22t2r38uqfkmkdqgf6s02gh50', '::1', 1681927671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932373637313b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('2omun7chq5s4d0f1qfuhsbm6bdfmku2j', '::1', 1681929131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932393133313b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b737563636573737c733a32363a22436c69656e7465206564697461646f20636f6e20c3897869746f223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('b3gijf9nft44cvmikrgteq9phed18ask', '::1', 1681929659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313932393635393b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('41gfejtv19r3hrlak135cmsqfn8og4eo', '::1', 1681930812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313933303831323b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('nesue5b22qe9k9rbipt41jt3b92u6ic1', '::1', 1681931119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313933313131393b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('e8knbgs3borkv6a394oei95eiaogsesr', '::1', 1681932200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313933323230303b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('t8o1f4o1l9fbma375ahp7egafdf3vr7f', '::1', 1681931602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313933313630313b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('p41jdfhqu7hbkih4ea6h5749p8vl966n', '::1', 1681934097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313933343039373b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('6d40d0e5lphqheo1ggf6f9d8tgrplgss', '::1', 1681936612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313933363631323b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('nrgluvveh0pghtc3obik8gqaaanctnhe', '::1', 1681936612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313933363631323b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('9h6dcaliqmnuc0ii154tqrchglb1a824', '::1', 1681995552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939353535323b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('7umgh816vepip6t7sscqu7i8hi15ifd1', '::1', 1681995557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638313939353535323b6e6f6d655f61646d696e7c733a32313a22496e672e2047616d62696e6f204665726e616e646f223b656d61696c5f61646d696e7c733a32383a22656c656374726f6e69636167616d62696e6f40676d61696c2e636f6d223b75726c5f696d6167655f757365725f61646d696e7c733a33363a2236666262663364616561363330633131303635353663313531616431616162352e706e67223b69645f61646d696e7c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idClientes` int(11) NOT NULL,
  `asaas_id` varchar(255) DEFAULT NULL,
  `nomeCliente` varchar(255) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `pessoa_fisica` tinyint(1) NOT NULL DEFAULT 1,
  `documento` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `fornecedor` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idClientes`, `asaas_id`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `senha`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`, `fornecedor`) VALUES
(1, NULL, 'Mercadolivre.com Atividades De Internet Ltda', NULL, 1, '11-111111-11', '(1234)56-78-90', '(3456)78-90-09', 'cliente@demo.com', '$2y$10$48nRbo44CRYm0/wQBhO5keA2GbSoQHCpMy2WAOzMyrkiB98Dxg4V6', '2023-04-04', 'Av Das Nacoes Unidas 3000', '3003', 'Bonfim', 'Osasco', 'TF', '0623', '', 'Parte D', 1),
(2, NULL, 'Electrónica Gambino', NULL, 1, '20-341854-20', '', '(9087)65-43-21', 'fmgambino@hotmail.com', '$2y$10$XkwFSFQm0LEWSzbClh5c8OFrsAN8vPJA.O7r1iRsHRWKRMkATSDgm', '2023-04-14', 'Casita', '432', 'José', 'Monterrey', 'TU', '4000', 'Ing. Gambino Fernando', 'C', 0),
(3, NULL, 'Dayan Barboza', NULL, 1, '20-960790-44', '', '(3489)59-50-95', 'barboza@gmail.com', '$2y$10$yaxLU8ZHjWGu6Ke2BlJGEuXlxX540upPwqNSxILkIfAQ2aGc9JZS2', '2023-04-17', 'Granaderos', '831', '', 'Campana', 'BA', '2804', '', '', 0),
(4, NULL, 'ELEMENTIK SRL', NULL, 1, '30-716377-24', '', '(1151)51-92-07', 'eduardo.anfuso@itechgroup.com.ar', '$2y$10$wfgasDSCEYP4xMnCjdw49eoe8amsqpMWG4.BzQqN1oiN8EXYKhlsC', '2023-04-19', 'Uruguay', '476', 'Villa Martelli', 'Vicente López', 'BA', '', '', '', 0),
(5, NULL, 'Gastón Barouille', NULL, 1, '20-228633-13', '', '(2216)00-47-72', 'smartforma@gmail.com', '$2y$10$6XNJSD9vgZcNdYZvdozxuuCwFdzApdDWdMypNoXXoKuPjDdz2taoK', '2023-04-19', '49', '2178', '', 'La Plata', 'BA', '1900', 'Gastón Barouille', '', 0),
(6, NULL, 'CC SLOT 3D', NULL, 1, '39-709373-00', '', '(6726)03-53-3', 'ccslot3d@gmail.com', '$2y$10$3r6UaGRAKTXKS9Vgxql3quk66oe.ZREzGFcP3IRWRadkq/seSkT8u', '2023-04-19', 'Cami de l&#039;era', '9/13', 'Torredembarra', 'Tarragona - España', '', '', '', 'Local 1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobrancas`
--

CREATE TABLE `cobrancas` (
  `idCobranca` int(11) NOT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `conditional_discount_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `custom_id` int(11) DEFAULT NULL,
  `expire_at` date NOT NULL,
  `message` varchar(255) NOT NULL,
  `payment_method` varchar(11) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `request_delivery_address` varchar(64) DEFAULT NULL,
  `status` varchar(36) NOT NULL,
  `total` varchar(15) DEFAULT NULL,
  `barcode` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `payment_gateway` varchar(255) DEFAULT NULL,
  `payment` varchar(64) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `vendas_id` int(11) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracoes`
--

CREATE TABLE `configuracoes` (
  `idConfig` int(11) NOT NULL,
  `config` varchar(20) NOT NULL,
  `valor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configuracoes`
--

INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES
(2, 'app_name', 'MI-Iphone'),
(3, 'app_theme', 'default'),
(4, 'per_page', '10'),
(5, 'os_notification', 'cliente'),
(6, 'control_estoque', '1'),
(7, 'notifica_whats', 'Estimado(a), *{CLIENTE_NOME}* con OS Nº *{NUMERO_OS}* el estado de su Orden de Servicio a cambiado a : *{STATUS_OS}* cuya descripción es: {DESCRI_PRODUTOS} con valor total de *{VALOR_OS} USD*!\r\n\r\nPara más información contáctenos.\r\nAcceso a cliente: https://electronicagambino/admin/mine\r\n\r\n Atte. C.P. Carolina Juárez,\r\nResponsable Contable/Administrativa\r\nWhastapp Business: {TELEFONE_EMITENTE}.\r\n{EMITENTE}'),
(8, 'control_baixa', '1'),
(9, 'control_editos', '1'),
(10, 'control_datatable', '1'),
(11, 'pix_key', ''),
(12, 'os_status_list', '[\"Aberto\",\"Faturado\",\"Negocia\\u00e7\\u00e3o\",\"Em Andamento\",\"Or\\u00e7amento\",\"Finalizado\",\"Cancelado\",\"Aguardando Pe\\u00e7as\",\"Aprovado\"]'),
(13, 'control_edit_vendas', '1'),
(14, 'email_automatico', '1'),
(15, 'control_2vias', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contas`
--

CREATE TABLE `contas` (
  `idContas` int(11) NOT NULL,
  `conta` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `idDocumentos` int(11) NOT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_queue`
--

CREATE TABLE `email_queue` (
  `id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `email_queue`
--

INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(1, 'fernando.m.gambino@gmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Fecha Inicial: 13/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                fernando.m.gambino@gmail.com <br>\n                                (34)56789-0098                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>IPhone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>No enciende&nbsp;</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla rota</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Se debe reparar&nbsp;</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 01:34:48', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(2, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Fecha Inicial: 13/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>IPhone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>No enciende&nbsp;</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla rota</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Se debe reparar&nbsp;</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 03:15:50', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(3, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Fecha Inicial: 13/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>IPhone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>No enciende&nbsp;</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla rota</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Se debe reparar&nbsp;</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 03:16:08', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(4, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 2<br>\n                                Fecha Inicial: 04/04/2023 <br>\n                                Fecha Final: 13/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: NEOLIFE<br>\n                                demo@demo.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Aguardando Peças                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        30                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>sfsdf</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>sdf</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>sdfsdf</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>sdf</p>                    </td>\n                </tr>\n            \n            \n                <tr class=\"heading\">\n                    <td>Produto</td>\n                    <td>Quantidade</td>\n                    <td>Preço unit.</td>\n                    <td style=\"text-align: center\">Sub-total</td>\n                </tr>\n\n                <tr class=\"item\"><td>SSD 240 GB</td><td>1</td><td>1222.22<td style=\"text-align: center\">R$ 1.222,22</td></tr>\n                <tr class=\"item\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\"><strong>Total em Produtos: R$ 1.222,22</strong></td>\n                </tr>\n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 1.222,22</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 16:55:06', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(5, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Fecha Inicial: 13/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Aberto                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>IPhone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>No enciende&nbsp;</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla rota</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Se debe reparar&nbsp;</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 19:05:20', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(6, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Fecha Inicial: 13/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Aberto                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>IPhone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>No enciende&nbsp;</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla rota</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Se debe reparar&nbsp;</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 19:06:21', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(7, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Fecha Inicial: 13/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Negociação                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>IPhone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>No enciende&nbsp;</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla rota</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Se debe reparar&nbsp;</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 19:59:57', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(8, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Fecha Inicial: 13/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>IPhone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>No enciende&nbsp;</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla rota</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Se debe reparar&nbsp;</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 20:00:28', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(9, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 2<br>\n                                Fecha Inicial: 04/04/2023 <br>\n                                Fecha Final: 13/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: NEOLIFE<br>\n                                demo@demo.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        30                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>sfsdf</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>sdf</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>sdfsdf</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>sdf</p>                    </td>\n                </tr>\n            \n            \n                <tr class=\"heading\">\n                    <td>Produto</td>\n                    <td>Quantidade</td>\n                    <td>Preço unit.</td>\n                    <td style=\"text-align: center\">Sub-total</td>\n                </tr>\n\n                <tr class=\"item\"><td>SSD 240 GB</td><td>1</td><td>1222.22<td style=\"text-align: center\">R$ 1.222,22</td></tr>\n                <tr class=\"item\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\"><strong>Total em Produtos: R$ 1.222,22</strong></td>\n                </tr>\n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 1.222,22</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 20:00:53', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(10, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 1<br>\n                                Fecha Inicial: 04/04/2023 <br>\n                                Fecha Final: 14/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: NEOLIFE<br>\n                                demo@demo.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        30                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla rota</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Sin film</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Cambiar pantalla</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 20:01:05', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(11, 'cliente@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Fecha Inicial: 13/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Mercadolivre.com Atividades De Internet Ltda<br>\n                                Av Das Nacoes Unidas 3000, 3003, Bonfim<br>\n                                Osasco - TF <br>\n                                cliente@demo.com <br>\n                                (3456)78-90-09                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>IPhone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>No enciende&nbsp;</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Pantalla rota</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Se debe reparar&nbsp;</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-14 20:13:50', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(12, 'electronicagambino@gmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 4<br>\n                                Fecha Inicial: 17/04/2023 <br>\n                                Fecha Final: 17/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Dayan Barboza<br>\n                                Granaderos, 831, <br>\n                                Campana - BA <br>\n                                barboza@gmail.com <br>\n                                (3489)59-50-95                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Aberto                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>iphone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>NO ENCIENDE</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>ME DA ERRIR</p>                    </td>\n                </tr>\n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-17 13:29:21', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:47:\"Nova Ordem de Serviço #4 - Criada pelo Cliente\";s:11:\"Return-Path\";s:0:\"\";}'),
(13, 'demo@demo.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 4<br>\n                                Fecha Inicial: 17/04/2023 <br>\n                                Fecha Final: 17/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Dayan Barboza<br>\n                                Granaderos, 831, <br>\n                                Campana - BA <br>\n                                barboza@gmail.com <br>\n                                (3489)59-50-95                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Aberto                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>iphone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>NO ENCIENDE</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>ME DA ERRIR</p>                    </td>\n                </tr>\n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-17 13:29:21', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:47:\"Nova Ordem de Serviço #4 - Criada pelo Cliente\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(14, 'soporte@nexolife.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 4<br>\n                                Fecha Inicial: 17/04/2023 <br>\n                                Fecha Final: 17/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Dayan Barboza<br>\n                                Granaderos, 831, <br>\n                                Campana - BA <br>\n                                barboza@gmail.com <br>\n                                (3489)59-50-95                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Aberto                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>iphone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>NO ENCIENDE</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>ME DA ERRIR</p>                    </td>\n                </tr>\n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-17 13:29:21', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:47:\"Nova Ordem de Serviço #4 - Criada pelo Cliente\";s:11:\"Return-Path\";s:0:\"\";}'),
(15, 'barboza@gmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 4<br>\n                                Fecha Inicial: 17/04/2023 <br>\n                                Fecha Final: 17/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Dayan Barboza<br>\n                                Granaderos, 831, <br>\n                                Campana - BA <br>\n                                barboza@gmail.com <br>\n                                (3489)59-50-95                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Aberto                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>iphone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>NO ENCIENDE</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>ME DA ERRIR</p>                    </td>\n                </tr>\n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-17 13:29:21', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:47:\"Nova Ordem de Serviço #4 - Criada pelo Cliente\";s:11:\"Return-Path\";s:0:\"\";}'),
(16, 'barboza@gmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 4<br>\n                                Fecha Inicial: 17/04/2023 <br>\n                                Fecha Final: 17/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Dayan Barboza<br>\n                                Granaderos, 831, <br>\n                                Campana - BA <br>\n                                barboza@gmail.com <br>\n                                (3489)59-50-95                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>iphone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>NO ENCIENDE</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>ME DA ERRIR</p>                    </td>\n                </tr>\n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-17 13:31:58', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(17, 'barboza@gmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 4<br>\n                                Fecha Inicial: 17/04/2023 <br>\n                                Fecha Final: 17/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Dayan Barboza<br>\n                                Granaderos, 831, <br>\n                                Campana - BA <br>\n                                barboza@gmail.com <br>\n                                (3489)59-50-95                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>iphone 13</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>NO ENCIENDE</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>ME DA ERRIR</p>                    </td>\n                </tr>\n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 15:25:12', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:17:\"Ordem de Serviço\";s:11:\"Return-Path\";s:0:\"\";}'),
(18, 'eduardo.anfuso@itechgroup.com.ar', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 5<br>\n                                Fecha Inicial: 19/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: ELEMENTIK SRL<br>\n                                Uruguay, 476, Villa Martelli<br>\n                                Vicente López - BA <br>\n                                eduardo.anfuso@itechgroup.com.ar <br>\n                                (1151)51-92-07                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Web App y Mobile (iOS y Android) para un Sistema de Control y Monitoreo IoT</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Desarrollo Mobile en IONIC <strong>SIN FINALIZAR,&nbsp; </strong>No se tuvo en cuenta un <strong>pre-diseño UX/UI</strong> (webApp y Mobile)</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <h1>IOTapp Server</h1><h3>Pre requisitos</h3><p>\r\n\r\n</p><p>El código esta escrito de forma estructurada en Typescript y se basa en el framework Express, usa JWT para verificacion de usuarios en sesión. EL código esta basado en el uso de Promises para un mejor manejo de eventos como errores los caules hacen un log con el identificador de usuario.</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Informe técnico: <a href=\"https://mature-wilderness-3e1.notion.site/IOTapp-29b64057bca046ceb64ab1d8c3c64bcf\" target=\"_self\"><strong>Aquí</strong></a></p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 18:27:35', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(19, 'eduardo.anfuso@itechgroup.com.ar', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"https://mi-iphone.midemo.tech/assets/uploads/e7ab46344cbb675a66f282e920cc0ab0.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 5<br>\n                                Fecha Inicial: 19/04/2023 <br>\n                                Fecha Final: 28/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: ELEMENTIK SRL<br>\n                                Uruguay, 476, Villa Martelli<br>\n                                Vicente López - BA <br>\n                                eduardo.anfuso@itechgroup.com.ar <br>\n                                (1151)51-92-07                            </td>\n\n                            <td style=\"text-align: right\">\n                                MI-iPhone <br>\n                                sdgsdg, 1234, CABA<br>\n                                Buenos Aires - Vicente Lopez CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Web App y Mobile (iOS y Android) para un Sistema de Control y Monitoreo IoT.&nbsp; Se planea hacer un Re-diseño de la actual interfaz Web y re-build del desarrollo Mobile en Flutter Flow.</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Desarrollo Mobile en IONIC <strong>SIN FINALIZAR,&nbsp; </strong>No se tuvo en cuenta un <strong>pre-diseño UX/UI</strong> (webApp y Mobile)</p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>IOTapp Server:</strong>&nbsp; Pre requisitos</p><p>El código esta escrito de forma estructurada en Typescript y se basa en el framework Express, usa JWT para verificacion de usuarios en sesión. EL código esta basado en el uso de Promises para un mejor manejo de eventos como errores los caules hacen un log con el identificador de usuario.<br></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Informe técnico: <a href=\"https://mature-wilderness-3e1.notion.site/IOTapp-29b64057bca046ceb64ab1d8c3c64bcf\" target=\"_self\"><strong>Aquí</strong></a></p><p><br></p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 18:30:32', 'a:3:{s:4:\"From\";s:18:\"info@mi-iphone.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(20, 'gaston@gaston.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost:9000/assets/uploads/2c91b9e26e51e85deca7535c5b2c2e34.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 6<br>\n                                Fecha Inicial: 19/04/2023 <br>\n                                Fecha Final: 26/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Gastón Barouille<br>\n                                sdsaaf, 123, dfsf<br>\n                                sfsd - BA <br>\n                                gaston@gaston.com <br>\n                                (2216)00-47-72                            </td>\n\n                            <td style=\"text-align: right\">\n                                Electrónica Gambino <br>\n                                José Colombres, 78 - OF. 4, San Miguel de Tucumán<br>\n                                Provincia: Tucumán - Argentina CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        30                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Diseño y Desarrollo de un Sistema de Comunicación con ESP32. Firmware p/el correcto funcionamiento del sistema electrónico.</p>                    </td>\n                </tr>\n            \n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>El sistema está conformado por dos módulos conectados por BT.&nbsp;</strong></p><p>Módulo 1 EMISOR ( consta de un ESP32, BT, RFID, tres pulsadores y fuente de alim )&nbsp;</p><p>Módulo 2&nbsp; RECEPTOR ( consta de un ESP32, BT, RFID, 2 pulsadores una pantalla y fuente de alim ).</p><p>Procesos: Existen múltiples módulos tipo 1 y múltiples módulos 2.</p><p>Se le carga un ID mediante RFID a cada módulo 1. Cuando uno de los tres pulsadores ( A, B y C ) del módulo 1 es presionado, transmite broadcasting a los módulos tipo 2 el ID del módulo + el ID del pulsador. Lo módulos tipo 2 reciben el mensaje y lo muestran en la pantalla. Alguno de los usuarios del módulo 2 debe confirmar la recepción del mensaje&nbsp; &nbsp;tocando un RFID ubicado cerca del módulo 2.&nbsp;</p><p>El módulo 1 es un módulo ESP32</p><p>El módulo 2 es un producto ya desarrollado que posee, pantalla, batería y puertos I/O con extensa documentación disponible. <a href=\"https://shop.m5stack.com/products/m5stickc-plus-esp32-pico-mini-iot-development-kit\" target=\"_self\"><strong>Ver</strong></a></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>El trigger del módulo 1 inicializa un timer el cual se detiene cuando el módulo 2 lee el RFID. Ese valor se adjunta al ID del módulo 2 y se envía a una base de datos ( mediante BT ) que corre win en una PC de escritorio.<br></p><p>&nbsp;Básicamente es eso, se dispara un evento &gt; se mide el TOA &gt; se guarda en la DB de la PC. Todos los procesos también se visualizan en tiempo real en la PC<br></p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 19:55:34', 'a:3:{s:4:\"From\";s:28:\"electronicagambino@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(21, 'gaston@gaston.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost:9000/assets/uploads/2c91b9e26e51e85deca7535c5b2c2e34.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 6<br>\n                                Fecha Inicial: 19/04/2023 <br>\n                                Fecha Final: 26/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Gastón Barouille<br>\n                                sdsaaf, 123, dfsf<br>\n                                sfsd - BA <br>\n                                gaston@gaston.com <br>\n                                (2216)00-47-72                            </td>\n\n                            <td style=\"text-align: right\">\n                                Electrónica Gambino <br>\n                                José Colombres, 78 - OF. 4, San Miguel de Tucumán<br>\n                                Provincia: Tucumán - Argentina CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        30                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Diseño y Desarrollo de un Sistema de Comunicación con ESP32. Firmware p/el correcto funcionamiento del sistema electrónico.</p>                    </td>\n                </tr>\n            \n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>El sistema está conformado por dos módulos conectados por BT.&nbsp;</strong></p><p>Módulo 1 EMISOR ( consta de un ESP32, BT, RFID, tres pulsadores y fuente de alim )&nbsp;</p><p>Módulo 2&nbsp; RECEPTOR ( consta de un ESP32, BT, RFID, 2 pulsadores una pantalla y fuente de alim ).</p><p>Procesos: Existen múltiples módulos tipo 1 y múltiples módulos 2.</p><p>Se le carga un ID mediante RFID a cada módulo 1. Cuando uno de los tres pulsadores ( A, B y C ) del módulo 1 es presionado, transmite broadcasting a los módulos tipo 2 el ID del módulo + el ID del pulsador. Lo módulos tipo 2 reciben el mensaje y lo muestran en la pantalla. Alguno de los usuarios del módulo 2 debe confirmar la recepción del mensaje&nbsp; &nbsp;tocando un RFID ubicado cerca del módulo 2.&nbsp;</p><p>El módulo 1 es un módulo ESP32</p><p>El módulo 2 es un producto ya desarrollado que posee, pantalla, batería y puertos I/O con extensa documentación disponible. <a href=\"https://shop.m5stack.com/products/m5stickc-plus-esp32-pico-mini-iot-development-kit\" target=\"_self\"><strong>Ver</strong></a></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>El trigger del módulo 1 inicializa un timer el cual se detiene cuando el módulo 2 lee el RFID. Ese valor se adjunta al ID del módulo 2 y se envía a una base de datos ( mediante BT ) que corre win en una PC de escritorio.<br></p><p>&nbsp;Básicamente es eso, se dispara un evento > se mide el TOA > se guarda en la DB de la PC. Todos los procesos también se visualizan en tiempo real en la PC<br></p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 19:56:35', 'a:3:{s:4:\"From\";s:28:\"electronicagambino@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(22, 'gaston@gaston.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost:9000/assets/uploads/2c91b9e26e51e85deca7535c5b2c2e34.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 6<br>\n                                Fecha Inicial: 19/04/2023 <br>\n                                Fecha Final: 26/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Gastón Barouille<br>\n                                sdsaaf, 123, dfsf<br>\n                                sfsd - BA <br>\n                                gaston@gaston.com <br>\n                                (2216)00-47-72                            </td>\n\n                            <td style=\"text-align: right\">\n                                Electrónica Gambino <br>\n                                José Colombres, 78 - OF. 4, San Miguel de Tucumán<br>\n                                Provincia: Tucumán - Argentina CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        30                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Diseño y Desarrollo de un Sistema de Comunicación con ESP32. Firmware p/el correcto funcionamiento del sistema electrónico.</p>                    </td>\n                </tr>\n            \n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>El sistema está conformado por dos módulos conectados por BT.&nbsp;</strong></p><p>Módulo 1 EMISOR ( consta de un ESP32, BT, RFID, tres pulsadores y fuente de alim )&nbsp;</p><p>Módulo 2&nbsp; RECEPTOR ( consta de un ESP32, BT, RFID, 2 pulsadores una pantalla y fuente de alim ).</p><p>Procesos: Existen múltiples módulos tipo 1 y múltiples módulos 2.</p><p>Se le carga un ID mediante RFID a cada módulo 1. Cuando uno de los tres pulsadores ( A, B y C ) del módulo 1 es presionado, transmite broadcasting a los módulos tipo 2 el ID del módulo + el ID del pulsador. Lo módulos tipo 2 reciben el mensaje y lo muestran en la pantalla. Alguno de los usuarios del módulo 2 debe confirmar la recepción del mensaje&nbsp; &nbsp;tocando un RFID ubicado cerca del módulo 2.&nbsp;</p><p>El módulo 1 es un módulo ESP32</p><p>El módulo 2 es un producto ya desarrollado que posee, pantalla, batería y puertos I/O con extensa documentación disponible. <a href=\"https://shop.m5stack.com/products/m5stickc-plus-esp32-pico-mini-iot-development-kit\" target=\"_self\"><strong>Ver</strong></a></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>PLAZO DE ENTREGA:</strong> 15 a 20 días hábiles.</p><p>El trigger del módulo 1 inicializa un timer el cual se detiene cuando el módulo 2 lee el RFID. Ese valor se adjunta al ID del módulo 2 y se envía a una base de datos ( mediante BT ) que corre win en una PC de escritorio.<br></p><p>&nbsp;Básicamente es eso, se dispara un evento > se mide el TOA > se guarda en la DB de la PC. Todos los procesos también se visualizan en tiempo real en la PC<br></p>                    </td>\n                </tr>\n            \n            \n            \n                <tr class=\"heading\">\n                    <td>Serviço</td>\n                    <td>Quantidade</td>\n                    <td>Preço unit.</td>\n                    <td style=\"text-align: center\">Sub-total</td>\n                </tr>\n\n                <tr class=\"item\"><td>Diseño Hardware Esquemático x Hora</td><td>2</td><td>15.00</td><td>R$ 30,00</td></tr><tr class=\"item\"><td>Desarrollo Hardware PMV x Hora</td><td>30</td><td>9.75</td><td>R$ 292,50</td></tr><tr class=\"item\"><td>Ensayo de Laboratorio x Hora</td><td>15</td><td>7.50</td><td>R$ 112,50</td></tr><tr class=\"item\"><td>Montaje y Soldadura x Hora</td><td>3</td><td>7.50</td><td>R$ 22,50</td></tr><tr class=\"item\"><td>Medición &amp; Testing x Hora</td><td>5</td><td>7.50</td><td>R$ 37,50</td></tr>\n                <tr class=\"item\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\"><strong>Total em Serviços: R$ 495,00</strong></td>\n                </tr>\n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 495,00</strong>\n                </td>\n            </tr>\n                            <tr class=\"heading\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\">\n                        <strong>Desconto: R$ -99,00</strong>\n                    </td>\n                </tr>\n                <tr class=\"heading\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\">\n                        <strong>Total com Desconto: R$ 396,00</strong>\n                    </td>\n                </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 20:03:35', 'a:3:{s:4:\"From\";s:28:\"electronicagambino@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(23, 'gaston@gaston.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost:9000/assets/uploads/2c91b9e26e51e85deca7535c5b2c2e34.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 6<br>\n                                Fecha Inicial: 19/04/2023 <br>\n                                Fecha Final: 26/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Gastón Barouille<br>\n                                sdsaaf, 123, dfsf<br>\n                                sfsd - BA <br>\n                                gaston@gaston.com <br>\n                                (2216)00-47-72                            </td>\n\n                            <td style=\"text-align: right\">\n                                Electrónica Gambino <br>\n                                José Colombres, 78 - OF. 4, San Miguel de Tucumán<br>\n                                Provincia: Tucumán - Argentina CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        30                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p>Diseño y Desarrollo de un Sistema de Comunicación con ESP32. Firmware p/el correcto funcionamiento del sistema electrónico.</p>                    </td>\n                </tr>\n            \n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>El sistema está conformado por dos módulos conectados por BT.&nbsp;</strong></p><p>Módulo 1 EMISOR ( consta de un ESP32, BT, RFID, tres pulsadores y fuente de alim )&nbsp;</p><p>Módulo 2&nbsp; RECEPTOR ( consta de un ESP32, BT, RFID, 2 pulsadores una pantalla y fuente de alim ).</p><p>Procesos: Existen múltiples módulos tipo 1 y múltiples módulos 2.</p><p>Se le carga un ID mediante RFID a cada módulo 1. Cuando uno de los tres pulsadores ( A, B y C ) del módulo 1 es presionado, transmite broadcasting a los módulos tipo 2 el ID del módulo + el ID del pulsador. Lo módulos tipo 2 reciben el mensaje y lo muestran en la pantalla. Alguno de los usuarios del módulo 2 debe confirmar la recepción del mensaje&nbsp; &nbsp;tocando un RFID ubicado cerca del módulo 2.&nbsp;</p><p>El módulo 1 es un módulo ESP32</p><p>El módulo 2 es un producto ya desarrollado que posee, pantalla, batería y puertos I/O con extensa documentación disponible. <a href=\"https://shop.m5stack.com/products/m5stickc-plus-esp32-pico-mini-iot-development-kit\" target=\"_self\"><strong>Ver</strong></a></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>PLAZO DE ENTREGA:</strong> 15 a 20 días hábiles.</p><p>El trigger del módulo 1 inicializa un timer el cual se detiene cuando el módulo 2 lee el RFID. Ese valor se adjunta al ID del módulo 2 y se envía a una base de datos ( mediante BT ) que corre win en una PC de escritorio.<br></p><p>&nbsp;Básicamente es eso, se dispara un evento > se mide el TOA > se guarda en la DB de la PC. Todos los procesos también se visualizan en tiempo real en la PC<br></p><p><br></p><p><strong>Descripción del Presupuesto:</strong></p><p>EN DÓLARES AMERICANOS | Anticipo del 50% al Inicio del Desarrollo | 50% restante con la entrega | MEDIOS DE PAGO: Dólares / PayPal / Binance/ Transferencias&nbsp; en Pesos (TC: DB)</p>                    </td>\n                </tr>\n            \n            \n            \n                <tr class=\"heading\">\n                    <td>Serviço</td>\n                    <td>Quantidade</td>\n                    <td>Preço unit.</td>\n                    <td style=\"text-align: center\">Sub-total</td>\n                </tr>\n\n                <tr class=\"item\"><td>Diseño Hardware Esquemático x Hora</td><td>2</td><td>15.00</td><td>R$ 30,00</td></tr><tr class=\"item\"><td>Desarrollo Hardware PMV x Hora</td><td>30</td><td>9.75</td><td>R$ 292,50</td></tr><tr class=\"item\"><td>Ensayo de Laboratorio x Hora</td><td>15</td><td>7.50</td><td>R$ 112,50</td></tr><tr class=\"item\"><td>Montaje y Soldadura x Hora</td><td>3</td><td>7.50</td><td>R$ 22,50</td></tr><tr class=\"item\"><td>Medición &amp; Testing x Hora</td><td>5</td><td>7.50</td><td>R$ 37,50</td></tr>\n                <tr class=\"item\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\"><strong>Total em Serviços: R$ 495,00</strong></td>\n                </tr>\n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 495,00</strong>\n                </td>\n            </tr>\n                            <tr class=\"heading\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\">\n                        <strong>Desconto: R$ -99,00</strong>\n                    </td>\n                </tr>\n                <tr class=\"heading\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\">\n                        <strong>Total com Desconto: R$ 396,00</strong>\n                    </td>\n                </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 20:07:51', 'a:3:{s:4:\"From\";s:28:\"electronicagambino@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(24, 'ccslot3d@gmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost:9000/assets/uploads/2c91b9e26e51e85deca7535c5b2c2e34.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 7<br>\n                                Fecha Inicial: 19/04/2023 <br>\n                                Fecha Final: 26/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: CC SLOT 3D<br>\n                                Cami de l&#039;era, 9/13, Torredembarra<br>\n                                Tarragona - España -  <br>\n                                ccslot3d@gmail.com <br>\n                                (6726)03-53-3                            </td>\n\n                            <td style=\"text-align: right\">\n                                Electrónica Gambino <br>\n                                José Colombres, 78 - OF. 4, San Miguel de Tucumán<br>\n                                Provincia: Tucumán - Argentina CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><ol><li>Diseño y Desarrollo de Hardware p/Slot de Competición + Diseño.&nbsp;</li><li>Desarrollo de App Bluetooth p/visualizar varíales Multiparamétricas.</li></ol></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><ul><li>Sensor RPM con Sensor Efecto Hall.</li><li>Sensor p/Medir Atracción Magnética (UMS).</li></ul></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>Se espera del Hardware:</strong></p><p><ul><li>Medir RPM.</li><li>UMS (Atracción Magnética).</li><li>Consumo Motor.</li><li>Tensión y Corriente Motor.</li><li>Regular Voltaje del&nbsp; Motor: 0 a 16v</li><li>Cargador de Baterías/Pilas Litio-Li-ion</li><li>Medir Tensión y Capacidad Baterías.</li><li>Conector a Railes (Tensión Coche).</li></ul></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><span style=\"font-weight: 700;\">PLAZO DE ENTREGA:</span>&nbsp;15 a 20 días hábiles.<span style=\"font-weight: 700;\"><br></span></p><p><br></p><p><span style=\"font-weight: 700;\">Descripción del Presupuesto:</span></p><p>EN DÓLARES AMERICANOS | Anticipo del 50% al Inicio del Desarrollo | 50% restante con la entrega | MEDIOS DE PAGO: Dólares / PayPal / Binance/ Transferencias&nbsp; en Pesos (TC: DB)</p>                    </td>\n                </tr>\n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 21:00:12', 'a:3:{s:4:\"From\";s:28:\"electronicagambino@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(25, 'ccslot3d@gmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost:9000/assets/uploads/2c91b9e26e51e85deca7535c5b2c2e34.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 7<br>\n                                Fecha Inicial: 19/04/2023 <br>\n                                Fecha Final: 26/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: CC SLOT 3D<br>\n                                Cami de l&#039;era, 9/13, Torredembarra<br>\n                                Tarragona - España -  <br>\n                                ccslot3d@gmail.com <br>\n                                (6726)03-53-3                            </td>\n\n                            <td style=\"text-align: right\">\n                                Electrónica Gambino <br>\n                                José Colombres, 78 - OF. 4, San Miguel de Tucumán<br>\n                                Provincia: Tucumán - Argentina CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p></p><ol><li>Diseño y Desarrollo de Hardware p/Slot de Competición + Diseño.&nbsp;</li><li>Desarrollo de App Bluetooth p/visualizar varíales Multiparamétricas.</li></ol><p></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p></p><ul><li>Sensor RPM con Sensor Efecto Hall.</li><li>Sensor p/Medir Atracción Magnética (UMS).</li></ul><p></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>Se espera del Hardware:</strong></p><p></p><ul><li>Medir RPM.</li><li>UMS (Atracción Magnética).</li><li>Consumo Motor.</li><li>Tensión y Corriente Motor.</li><li>Regular Voltaje del&nbsp; Motor: 0 a 16v</li><li>Cargador de Baterías/Pilas Litio-Li-ion</li><li>Medir Tensión y Capacidad Baterías.</li><li>Conector a Railes (Tensión Coche).</li></ul><p></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><span style=\"font-weight: 700;\">PLAZO DE ENTREGA:</span>&nbsp;15 a 20 días hábiles.<span style=\"font-weight: 700;\"><br></span></p><p><strong>NO INCLUYE:</strong> Fabricación PCB, Componentes Electrónicos, Envíos</p><p><br></p><p><span style=\"font-weight: 700;\">Descripción del Presupuesto:</span></p><p>EN DÓLARES AMERICANOS | Anticipo del 50% al Inicio del Desarrollo | 50% restante con la entrega | MEDIOS DE PAGO: Dólares / PayPal / Binance/ Transferencias&nbsp; en Pesos (TC: DB)</p>                    </td>\n                </tr>\n            \n            \n            \n                <tr class=\"heading\">\n                    <td>Serviço</td>\n                    <td>Quantidade</td>\n                    <td>Preço unit.</td>\n                    <td style=\"text-align: center\">Sub-total</td>\n                </tr>\n\n                <tr class=\"item\"><td>Entorno de Desarrollo: Preparación</td><td>1</td><td>50.00</td><td>R$ 50,00</td></tr><tr class=\"item\"><td>Diseño Hardware Esquemático x Hora</td><td>10</td><td>15.00</td><td>R$ 150,00</td></tr><tr class=\"item\"><td>Diseño Hardware PCB LayOut x Hora</td><td>15</td><td>12.50</td><td>R$ 187,50</td></tr><tr class=\"item\"><td>Montaje y Soldadura x Hora</td><td>5</td><td>7.50</td><td>R$ 37,50</td></tr><tr class=\"item\"><td>Medición &amp; Testing x Hora</td><td>20</td><td>7.50</td><td>R$ 150,00</td></tr><tr class=\"item\"><td>Firmware Arduino x Hora</td><td>20</td><td>10.00</td><td>R$ 200,00</td></tr>\n                <tr class=\"item\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\"><strong>Total em Serviços: R$ 775,00</strong></td>\n                </tr>\n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 775,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 21:04:58', 'a:3:{s:4:\"From\";s:28:\"electronicagambino@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(26, 'ccslot3d@gmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost:9000/assets/uploads/2c91b9e26e51e85deca7535c5b2c2e34.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 7<br>\n                                Fecha Inicial: 19/04/2023 <br>\n                                Fecha Final: 26/04/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: CC SLOT 3D<br>\n                                Cami de l&#039;era, 9/13, Torredembarra<br>\n                                Tarragona - España -  <br>\n                                ccslot3d@gmail.com <br>\n                                (6726)03-53-3                            </td>\n\n                            <td style=\"text-align: right\">\n                                Electrónica Gambino <br>\n                                José Colombres, 78 - OF. 4, San Miguel de Tucumán<br>\n                                Provincia: Tucumán - Argentina CEP: 4000 <br>\n                                Responsável: Ing. Gambino Fernando<br>\n                                electronicagambino@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n                            <tr class=\"details\">\n                    <td colspan=\"2\">\n                        Garantia\n                    </td>\n\n                    <td colspan=\"2\" style=\"text-align: center\">\n                        45                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p></p><ol><li>Diseño y Desarrollo de Hardware p/Slot de Competición .<br></li></ol><p></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p></p><ul><li>Sensor RPM con Sensor Efecto Hall.</li><li>Sensor p/Medir Atracción Magnética (UMS).</li></ul><p></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><strong>Se espera del Hardware:</strong></p><p></p><ul><li>Medir RPM.</li><li>UMS (Atracción Magnética).</li><li>Consumo Motor.</li><li>Tensión y Corriente Motor.</li><li>Regular Voltaje del&nbsp; Motor: 0 a 16v</li><li>Cargador de Baterías/Pilas Litio-Li-ion</li><li>Medir Tensión y Capacidad Baterías.</li><li>Conector a Railes (Tensión Coche).</li></ul><p></p>                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Laudo Técnico</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        <p><span style=\"font-weight: 700;\">PLAZO DE ENTREGA:</span>&nbsp;15 a 20 días hábiles.<span style=\"font-weight: 700;\"><br></span></p><p><strong>NO INCLUYE:</strong> Fabricación PCB, Componentes Electrónicos, Envíos</p><p><br></p><p><span style=\"font-weight: 700;\">Descripción del Presupuesto:</span></p><p>EN DÓLARES AMERICANOS | Anticipo del 50% al Inicio del Desarrollo | 50% restante con la entrega | MEDIOS DE PAGO: Dólares / PayPal / Binance/ Transferencias&nbsp; en Pesos (TC: DB)</p>                    </td>\n                </tr>\n            \n            \n            \n                <tr class=\"heading\">\n                    <td>Serviço</td>\n                    <td>Quantidade</td>\n                    <td>Preço unit.</td>\n                    <td style=\"text-align: center\">Sub-total</td>\n                </tr>\n\n                <tr class=\"item\"><td>Entorno de Desarrollo: Preparación</td><td>1</td><td>50.00</td><td>R$ 50,00</td></tr><tr class=\"item\"><td>Diseño Hardware Esquemático x Hora</td><td>10</td><td>15.00</td><td>R$ 150,00</td></tr><tr class=\"item\"><td>Diseño Hardware PCB LayOut x Hora</td><td>15</td><td>12.50</td><td>R$ 187,50</td></tr><tr class=\"item\"><td>Montaje y Soldadura x Hora</td><td>5</td><td>7.50</td><td>R$ 37,50</td></tr><tr class=\"item\"><td>Medición &amp; Testing x Hora</td><td>20</td><td>7.50</td><td>R$ 150,00</td></tr><tr class=\"item\"><td>Firmware Arduino x Hora</td><td>20</td><td>10.00</td><td>R$ 200,00</td></tr><tr class=\"item\"><td>Entrega LLave en Mano [Archivos Proyecto]</td><td>1</td><td>100.00</td><td>R$ 100,00</td></tr>\n                <tr class=\"item\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\"><strong>Total em Serviços: R$ 875,00</strong></td>\n                </tr>\n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 875,00</strong>\n                </td>\n            </tr>\n                            <tr class=\"heading\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\">\n                        <strong>Desconto: R$ -131,25</strong>\n                    </td>\n                </tr>\n                <tr class=\"heading\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\">\n                        <strong>Total com Desconto: R$ 743,75</strong>\n                    </td>\n                </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-04-19 21:15:53', 'a:3:{s:4:\"From\";s:28:\"electronicagambino@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emitente`
--

CREATE TABLE `emitente` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url_logo` varchar(225) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `emitente`
--

INSERT INTO `emitente` (`id`, `nome`, `cnpj`, `ie`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `telefone`, `email`, `url_logo`, `cep`) VALUES
(1, 'Electrónica Gambino', '20-341854-20', '0', 'José Colombres', '78 - OF. 4', 'San Miguel de Tucumán', 'Provincia: Tucumán', 'Argentina', '(1124)09-97-88', 'electronicagambino@gmail.com', 'http://localhost:9000/assets/uploads/2c91b9e26e51e85deca7535c5b2c2e34.png', '4000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipamentos`
--

CREATE TABLE `equipamentos` (
  `idEquipamentos` int(11) NOT NULL,
  `equipamento` varchar(150) NOT NULL,
  `num_serie` varchar(80) DEFAULT NULL,
  `modelo` varchar(80) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `tensao` varchar(45) DEFAULT NULL,
  `potencia` varchar(45) DEFAULT NULL,
  `voltagem` varchar(45) DEFAULT NULL,
  `data_fabricacao` date DEFAULT NULL,
  `marcas_id` int(11) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipamentos_os`
--

CREATE TABLE `equipamentos_os` (
  `idEquipamentos_os` int(11) NOT NULL,
  `defeito_declarado` varchar(200) DEFAULT NULL,
  `defeito_encontrado` varchar(200) DEFAULT NULL,
  `solucao` varchar(45) DEFAULT NULL,
  `equipamentos_id` int(11) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantias`
--

CREATE TABLE `garantias` (
  `idGarantias` int(11) NOT NULL,
  `dataGarantia` date DEFAULT NULL,
  `refGarantia` varchar(15) DEFAULT NULL,
  `textoGarantia` text DEFAULT NULL,
  `usuarios_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `garantias`
--

INSERT INTO `garantias` (`idGarantias`, `dataGarantia`, `refGarantia`, `textoGarantia`, `usuarios_id`) VALUES
(1, '2023-04-14', 'Términos y cond', '<p>csdfjsdjldshvs</p>', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itens_de_vendas`
--

CREATE TABLE `itens_de_vendas` (
  `idItens` int(11) NOT NULL,
  `subTotal` decimal(10,2) DEFAULT 0.00,
  `quantidade` int(11) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT 0.00,
  `vendas_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `itens_de_vendas`
--

INSERT INTO `itens_de_vendas` (`idItens`, `subTotal`, `quantidade`, `preco`, `vendas_id`, `produtos_id`) VALUES
(1, '2444.44', 2, '1222.22', 3, 1),
(2, '2444.44', 2, '1222.22', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lancamentos`
--

CREATE TABLE `lancamentos` (
  `idLancamentos` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT 0.00,
  `desconto` decimal(10,2) DEFAULT 0.00,
  `valor_desconto` decimal(10,2) DEFAULT 0.00,
  `tipo_desconto` varchar(8) DEFAULT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT 0,
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  `categorias_id` int(11) DEFAULT NULL,
  `contas_id` int(11) DEFAULT NULL,
  `vendas_id` int(11) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `lancamentos`
--

INSERT INTO `lancamentos` (`idLancamentos`, `descricao`, `valor`, `desconto`, `valor_desconto`, `tipo_desconto`, `data_vencimento`, `data_pagamento`, `baixado`, `cliente_fornecedor`, `forma_pgto`, `tipo`, `anexo`, `observacoes`, `clientes_id`, `categorias_id`, `contas_id`, `vendas_id`, `usuarios_id`) VALUES
(1, 'Factura de OS Nº: 3', '6222.22', '0.00', '0.00', '', '2023-04-14', '2023-04-14', 1, 'Mercadolivre.com Atividades De Internet Ltda', 'Dinheiro', 'receita', NULL, '', 1, NULL, NULL, NULL, 1),
(2, 'Fatura de Venda Nº: 4', '2444.44', '10.00', '2200.00', 'porcento', '2023-04-14', '2023-04-14', 1, 'Electrónica Gambino', 'Débito', 'receita', NULL, NULL, 2, NULL, NULL, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `idLogs` int(11) NOT NULL,
  `usuario` varchar(80) DEFAULT NULL,
  `tarefa` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES
(1, NULL, 'Ingresado al sistema', '2023-03-31', '20:36:54', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(2, NULL, 'Ingresado al sistema', '2023-03-31', '20:49:32', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(3, NULL, 'Alterou a Imagem do Usuario.', '2023-03-31', '20:58:19', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(4, NULL, 'Ingresado al sistema', '2023-03-31', '20:58:27', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(5, NULL, 'Ingresado al sistema', '2023-03-31', '20:59:37', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(6, NULL, 'Ingresado al sistema', '2023-03-31', '21:03:37', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(7, NULL, 'Ingresado al sistema', '2023-03-31', '21:11:00', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(8, NULL, 'Ingresado al sistema', '2023-03-31', '21:29:25', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(9, NULL, 'Ingresado al sistema', '2023-03-31', '21:52:26', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(10, NULL, 'Ingresado al sistema', '2023-03-31', '21:55:32', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(11, NULL, 'Ingresado al sistema', '2023-03-31', '22:01:27', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(12, NULL, 'Ingresado al sistema', '2023-03-31', '23:10:38', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(13, NULL, 'Ingresado al sistema', '2023-04-01', '00:32:45', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(14, NULL, 'Ingresado al sistema', '2023-04-01', '01:10:11', '2803:9800:9444:7cbe:c487:57a:d958:e6c8'),
(15, NULL, 'Ingresado al sistema', '2023-04-01', '01:33:54', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(16, NULL, 'Ingresado al sistema', '2023-04-01', '01:33:54', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(17, NULL, 'Ingresado al sistema', '2023-04-01', '01:46:00', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(18, NULL, 'Ingresado al sistema', '2023-04-01', '01:46:01', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(19, NULL, 'Ingresado al sistema', '2023-04-01', '01:55:31', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(20, NULL, 'Ingresado al sistema', '2023-04-01', '01:55:31', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(21, NULL, 'Ingresado al sistema', '2023-04-01', '02:34:29', '2803:9800:9444:7cbe:de7:ebd1:ad6e:41ab'),
(22, NULL, 'Ingresado al sistema', '2023-04-01', '02:37:30', '2803:9800:9444:7cbe:de7:ebd1:ad6e:41ab'),
(23, NULL, 'Ingresado al sistema', '2023-04-01', '02:43:30', '2803:9800:9444:7cbe:de7:ebd1:ad6e:41ab'),
(24, NULL, 'Ingresado al sistema', '2023-04-01', '02:44:54', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(25, NULL, 'Ingresado al sistema', '2023-04-01', '02:44:54', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(26, NULL, 'Adicionou um usuário.', '2023-04-01', '02:51:29', '2803:9800:9444:7cbe:de7:ebd1:ad6e:41ab'),
(27, NULL, 'Ingresado al sistema', '2023-04-01', '02:52:40', '2803:9800:9444:7cbe:de7:ebd1:ad6e:41ab'),
(28, NULL, 'Ingresado al sistema', '2023-04-01', '02:53:52', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(29, NULL, 'Alterou a Imagem do Usuario.', '2023-04-01', '02:54:38', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(30, NULL, 'Ingresado al sistema', '2023-04-01', '03:06:35', '2803:9800:9444:7cbe:d944:1f47:2b5c:b615'),
(31, NULL, 'Ingresado al sistema', '2023-04-01', '03:14:51', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(32, NULL, 'Ingresado al sistema', '2023-04-01', '03:55:20', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(33, NULL, 'Ingresado al sistema', '2023-04-01', '03:55:21', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(34, NULL, 'Ingresado al sistema', '2023-04-01', '11:37:29', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(35, NULL, 'Ingresado al sistema', '2023-04-01', '11:37:30', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(36, NULL, 'Ingresado al sistema', '2023-04-01', '14:36:27', '2803:9800:9441:b62f:18c0:93d4:eaf0:374b'),
(37, NULL, 'Ingresado al sistema', '2023-04-01', '14:36:28', '2803:9800:9441:b62f:18c0:93d4:eaf0:374b'),
(38, NULL, 'Ingresado al sistema', '2023-04-01', '16:56:06', '2803:9800:9444:7cbe:d922:8d67:168:c349'),
(39, NULL, 'Ingresado al sistema', '2023-04-01', '22:33:45', '2803:9800:9444:7cbe:18c0:93d4:eaf0:374b'),
(40, NULL, 'Ingresado al sistema', '2023-04-03', '12:13:00', '190.7.2.155'),
(41, NULL, 'Ingresado al sistema', '2023-04-03', '13:19:47', '45.167.220.43'),
(42, NULL, 'Ingresado al sistema', '2023-04-03', '13:32:11', '190.18.214.196'),
(43, NULL, 'Ingresado al sistema', '2023-04-03', '14:31:22', '190.7.2.155'),
(44, NULL, 'Ingresado al sistema', '2023-04-03', '21:16:06', '190.55.50.99'),
(45, NULL, 'Ingresado al sistema', '2023-04-04', '16:31:33', '186.141.231.74'),
(46, NULL, 'Ingresado al sistema', '2023-04-04', '16:31:34', '186.141.231.74'),
(47, NULL, 'Ingresado al sistema', '2023-04-04', '17:36:18', '181.9.135.17'),
(48, NULL, 'Ingresado al sistema', '2023-04-04', '18:40:53', '2803:9800:9444:7cbe:f070:e37:80ff:5bc6'),
(49, NULL, 'Ingresado al sistema', '2023-04-04', '19:34:55', '2803:9800:9444:7cbe:f070:e37:80ff:5bc6'),
(50, NULL, 'Adicionou um cliente.', '2023-04-04', '19:46:23', '2803:9800:9444:7cbe:f070:e37:80ff:5bc6'),
(51, NULL, 'Adicionou uma OS', '2023-04-04', '19:47:17', '2803:9800:9444:7cbe:f070:e37:80ff:5bc6'),
(52, NULL, 'Adicionou uma OS', '2023-04-04', '19:49:18', '2803:9800:9444:7cbe:f070:e37:80ff:5bc6'),
(53, NULL, 'Adicionou um produto', '2023-04-04', '19:54:01', '2803:9800:9444:7cbe:f070:e37:80ff:5bc6'),
(54, NULL, 'Adicionou produto a uma OS. ID (OS): 2', '2023-04-04', '19:54:17', '2803:9800:9444:7cbe:f070:e37:80ff:5bc6'),
(55, NULL, 'Alterou um cliente. ID1', '2023-04-04', '19:55:00', '2803:9800:9444:7cbe:f070:e37:80ff:5bc6'),
(56, NULL, 'Alterou um cliente. ID1', '2023-04-04', '20:01:15', '2803:9800:9444:7cbe:f070:e37:80ff:5bc6'),
(57, NULL, 'Ingresado al sistema', '2023-04-05', '14:52:02', '2803:9800:9444:7cbe:e413:1295:6349:a961'),
(58, NULL, 'Ingresado al sistema', '2023-04-06', '03:10:37', '2803:9800:9444:7cbe:7d55:6940:4dad:b3d1'),
(59, NULL, 'Ingresado al sistema', '2023-04-06', '03:14:58', '2803:9800:9444:7cbe:d0eb:977d:c22a:7d33'),
(60, NULL, 'Alterou uma OS. ID: 2', '2023-04-06', '03:32:29', '2803:9800:9444:7cbe:d0eb:977d:c22a:7d33'),
(61, NULL, 'Ingresado al sistema', '2023-04-07', '13:10:32', '181.209.76.178'),
(62, NULL, 'Alterou um usuário. ID: 2', '2023-04-07', '13:10:59', '181.209.76.178'),
(63, NULL, 'Ingresado al sistema', '2023-04-07', '13:11:15', '181.209.76.178'),
(64, NULL, 'Ingresado al sistema', '2023-04-07', '13:11:16', '181.209.76.178'),
(65, NULL, 'Ingresado al sistema', '2023-04-07', '13:15:37', '190.7.63.244'),
(66, NULL, 'Ingresado al sistema', '2023-04-07', '17:27:22', '186.111.134.74'),
(67, NULL, 'Ingresado al sistema', '2023-04-11', '17:24:53', '190.225.98.85'),
(68, NULL, 'Ingresado al sistema', '2023-04-11', '17:25:44', '2803:9800:9444:7cbe:64e8:69b1:8d8f:c006'),
(69, NULL, 'Adicionou uma venda.', '2023-04-11', '17:26:54', '2803:9800:9444:7cbe:64e8:69b1:8d8f:c006'),
(70, NULL, 'Adicionou uma venda.', '2023-04-11', '17:28:47', '190.225.98.85'),
(71, NULL, 'Ingresado al sistema', '2023-04-11', '20:47:12', '190.225.98.85'),
(72, NULL, 'Ingresado al sistema', '2023-04-11', '23:33:22', '2803:9800:9444:7cbe:64e8:69b1:8d8f:c006'),
(73, NULL, 'Ingresado al sistema', '2023-04-12', '02:27:26', '2803:9800:9444:7cbe:90df:8b52:3ea:4f03'),
(74, NULL, 'Adicionou uma venda.', '2023-04-12', '02:30:15', '2803:9800:9444:7cbe:90df:8b52:3ea:4f03'),
(75, NULL, 'Adicionou um desconto na Venda. ID: 3', '2023-04-12', '02:32:57', '2803:9800:9444:7cbe:90df:8b52:3ea:4f03'),
(76, NULL, 'Adicionou um desconto na Venda. ID: 3', '2023-04-12', '02:33:17', '2803:9800:9444:7cbe:90df:8b52:3ea:4f03'),
(77, NULL, 'Adicionou produto a uma venda.', '2023-04-12', '02:33:21', '2803:9800:9444:7cbe:90df:8b52:3ea:4f03'),
(78, NULL, 'Adicionou um desconto na Venda. ID: 3', '2023-04-12', '02:33:41', '2803:9800:9444:7cbe:90df:8b52:3ea:4f03'),
(79, NULL, 'Adicionou informações de emitente.', '2023-04-12', '02:38:55', '2803:9800:9444:7cbe:90df:8b52:3ea:4f03'),
(80, NULL, 'Ingresado al sistema', '2023-04-12', '18:46:52', '190.230.158.223'),
(81, NULL, 'Ingresado al sistema', '2023-04-12', '20:01:35', '190.230.158.223'),
(82, NULL, 'Alterou a logomarca do emitente.', '2023-04-12', '20:14:34', '190.230.158.223'),
(83, NULL, 'Alterou um usuário. ID: 1', '2023-04-12', '21:22:04', '190.230.158.223'),
(84, NULL, 'Ingresado al sistema', '2023-04-12', '21:22:08', '190.230.158.223'),
(85, NULL, 'Ingresado al sistema', '2023-04-12', '21:22:30', '190.230.158.223'),
(86, NULL, 'Ingresado al sistema', '2023-04-12', '21:24:06', '190.230.158.223'),
(87, NULL, 'Ingresado al sistema', '2023-04-12', '21:58:17', '181.9.198.255'),
(88, NULL, 'Ingresado al sistema', '2023-04-13', '02:05:28', '2803:9800:9444:7cbe:6cf7:a1a0:b84d:34ee'),
(89, NULL, 'Ingresado al sistema', '2023-04-13', '02:39:08', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(90, NULL, 'Ingresado al sistema', '2023-04-13', '02:40:40', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(91, NULL, 'Ingresado al sistema', '2023-04-13', '12:54:21', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(92, NULL, 'Ingresado al sistema', '2023-04-14', '01:02:58', '45.167.171.125'),
(93, NULL, 'Ingresado al sistema', '2023-04-14', '01:30:59', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(94, NULL, 'Adicionou uma OS', '2023-04-14', '01:34:48', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(95, NULL, 'Ingresado al sistema', '2023-04-14', '03:13:30', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(96, NULL, 'Alterou um cliente. ID1', '2023-04-14', '03:14:58', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(97, NULL, 'Alterou uma OS. ID: 3', '2023-04-14', '03:15:51', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(98, NULL, 'Alterou uma OS. ID: 3', '2023-04-14', '03:16:08', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(99, NULL, 'Adicionou um cliente.', '2023-04-14', '03:21:24', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(100, 'Mercadolivre.com Atividades De Internet Ltda', 'Efetuou login no sistema', '2023-04-14', '03:23:35', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(101, NULL, 'Ingresado al sistema', '2023-04-14', '13:12:32', '190.230.158.223'),
(102, NULL, 'Ingresado al sistema', '2023-04-14', '13:30:57', '190.230.158.223'),
(103, 'Mercadolivre.com Atividades De Internet Ltda', 'Efetuou login no sistema', '2023-04-14', '13:36:40', '190.230.158.223'),
(104, NULL, 'Ingresado al sistema', '2023-04-14', '14:15:48', '190.230.158.223'),
(105, NULL, 'Ingresado al sistema', '2023-04-14', '14:38:41', '190.230.158.223'),
(106, NULL, 'Ingresado al sistema', '2023-04-14', '14:43:10', '190.230.158.223'),
(107, NULL, 'Ingresado al sistema', '2023-04-14', '14:52:30', '190.230.158.223'),
(108, NULL, 'Alterou um cliente. ID2', '2023-04-14', '14:53:00', '190.230.158.223'),
(109, NULL, 'Alterou um cliente. ID1', '2023-04-14', '14:54:16', '190.230.158.223'),
(110, 'Mercadolivre.com Atividades De Internet Ltda', 'Efetuou login no sistema', '2023-04-14', '14:54:29', '190.230.158.223'),
(111, 'Mercadolivre.com Atividades De Internet Ltda', 'Efetuou login no sistema', '2023-04-14', '15:11:19', '190.230.158.223'),
(112, NULL, 'Ingresado al sistema', '2023-04-14', '16:04:52', '190.230.158.223'),
(113, 'Mercadolivre.com Atividades De Internet Ltda', 'Efetuou login no sistema', '2023-04-14', '16:08:36', '190.230.158.223'),
(114, NULL, 'Ingresado al sistema', '2023-04-14', '16:11:22', '190.230.158.223'),
(115, 'Mercadolivre.com Atividades De Internet Ltda', 'Efetuou login no sistema', '2023-04-14', '16:11:50', '190.230.158.223'),
(116, NULL, 'Ingresado al sistema', '2023-04-14', '16:28:30', '190.230.158.223'),
(117, 'Mercadolivre.com Atividades De Internet Ltda', 'Efetuou login no sistema', '2023-04-14', '16:29:13', '190.230.158.223'),
(118, 'Mercadolivre.com Atividades De Internet Ltda', 'Efetuou login no sistema', '2023-04-14', '16:32:08', '190.230.158.223'),
(119, 'Mercadolivre.com Atividades De Internet Ltda', 'Alterou uma OS. ID: 2', '2023-04-14', '16:55:06', '190.230.158.223'),
(120, 'Mercadolivre.com Atividades De Internet Ltda', 'Alterou uma venda. ID: 3', '2023-04-14', '17:48:33', '190.230.158.223'),
(121, 'Mercadolivre.com Atividades De Internet Ltda', 'Adicionou um desconto na Venda. ID: 3', '2023-04-14', '17:55:09', '190.230.158.223'),
(122, NULL, 'Ingresado al sistema', '2023-04-14', '19:02:19', '190.230.158.223'),
(123, 'Mercadolivre.com Atividades De Internet Ltda', 'Cambió una OS ID: 3', '2023-04-14', '19:05:20', '190.230.158.223'),
(124, 'Mercadolivre.com Atividades De Internet Ltda', 'Cambió una OS ID: 3', '2023-04-14', '19:06:21', '190.230.158.223'),
(125, 'Mercadolivre.com Atividades De Internet Ltda', 'Se Ingresaó al sistema', '2023-04-14', '19:29:50', '190.230.158.223'),
(126, 'Mercadolivre.com Atividades De Internet Ltda', 'Ingresado al sistema', '2023-04-14', '19:46:46', '190.230.158.223'),
(127, NULL, 'Ingresado al sistema', '2023-04-14', '19:59:33', '190.230.158.223'),
(128, NULL, 'Cambió una OS ID: 3', '2023-04-14', '19:59:57', '190.230.158.223'),
(129, NULL, 'Cambió una OS ID: 3', '2023-04-14', '20:00:28', '190.230.158.223'),
(130, NULL, 'Cambió una OS ID: 2', '2023-04-14', '20:00:53', '190.230.158.223'),
(131, NULL, 'Cambió una OS ID: 1', '2023-04-14', '20:01:05', '190.230.158.223'),
(132, 'Mercadolivre.com Atividades De Internet Ltda', 'Se Ingresó al sistema', '2023-04-14', '20:02:50', '190.230.158.223'),
(133, 'Mercadolivre.com Atividades De Internet Ltda', 'Se Ingresó al sistema', '2023-04-14', '20:03:20', '190.230.158.223'),
(134, 'Mercadolivre.com Atividades De Internet Ltda', 'Ingresado al sistema', '2023-04-14', '20:03:26', '190.230.158.223'),
(135, NULL, 'Ingresado al sistema', '2023-04-14', '20:10:28', '190.230.158.223'),
(136, NULL, 'Adicionou uma garantia', '2023-04-14', '20:13:11', '190.230.158.223'),
(137, NULL, 'Cambió una OS ID: 3', '2023-04-14', '20:13:50', '190.230.158.223'),
(138, NULL, 'Adicionou um serviço', '2023-04-14', '20:18:48', '190.230.158.223'),
(139, NULL, 'Adicionou produto a uma OS. ID (OS): 3', '2023-04-14', '20:19:10', '190.230.158.223'),
(140, NULL, 'Adicionou serviço a uma OS. ID (OS): 3', '2023-04-14', '20:19:19', '190.230.158.223'),
(141, NULL, 'Faturou uma OS. ID: 3', '2023-04-14', '20:19:52', '190.230.158.223'),
(142, NULL, 'Adicionou uma venda.', '2023-04-14', '20:20:23', '190.230.158.223'),
(143, NULL, 'Adicionou produto a uma venda.', '2023-04-14', '20:20:32', '190.230.158.223'),
(144, NULL, 'Añadido un descuento en Venta. ID: 4', '2023-04-14', '20:20:48', '190.230.158.223'),
(145, NULL, 'Faturou uma venda.', '2023-04-14', '20:21:21', '190.230.158.223'),
(146, NULL, 'Efetuou backup do banco de dados.', '2023-04-14', '20:28:01', '190.230.158.223'),
(147, NULL, 'Adicionou uma permissão', '2023-04-14', '20:30:08', '190.230.158.223'),
(148, NULL, 'Efetuou backup do banco de dados.', '2023-04-14', '20:31:59', '190.230.158.223'),
(149, NULL, 'Adicionou um usuário.', '2023-04-14', '20:34:22', '190.230.158.223'),
(150, NULL, 'Ingresado al sistema', '2023-04-14', '20:34:41', '190.7.2.155'),
(151, 'Mercadolivre.com Atividades De Internet Ltda', 'Se Ingresó al sistema', '2023-04-14', '20:34:54', '190.230.158.223'),
(152, NULL, 'Ingresado al sistema', '2023-04-14', '20:51:55', '190.7.2.155'),
(153, NULL, 'Ingresado al sistema', '2023-04-14', '21:38:25', '181.169.152.21'),
(154, NULL, 'Ingresado al sistema', '2023-04-16', '03:55:41', '2803:9800:9444:7cbe:5d9d:4099:c533:d69a'),
(155, NULL, 'Ingresado al sistema', '2023-04-17', '12:23:16', '190.7.2.155'),
(156, NULL, 'Ingresado al sistema', '2023-04-17', '12:52:34', '186.95.238.93'),
(157, NULL, 'Adicionou um cliente.', '2023-04-17', '13:04:03', '190.7.2.155'),
(158, NULL, 'Alterou um cliente. ID3', '2023-04-17', '13:07:17', '190.7.2.155'),
(159, 'Dayan Barboza', 'Se Ingresó al sistema', '2023-04-17', '13:07:28', '190.7.2.155'),
(160, NULL, 'Ingresado al sistema', '2023-04-17', '13:09:37', '190.230.158.223'),
(161, NULL, 'Ingresado al sistema', '2023-04-17', '13:12:35', '190.7.2.155'),
(162, NULL, 'Efetuou backup do banco de dados.', '2023-04-17', '13:16:29', '190.7.2.155'),
(163, NULL, 'Adicionou produto a uma OS. ID (OS): 3', '2023-04-17', '13:23:59', '190.7.2.155'),
(164, NULL, 'Adicionou serviço a uma OS. ID (OS): 3', '2023-04-17', '13:24:19', '190.7.2.155'),
(165, 'Dayan Barboza', 'Se Ingresó al sistema', '2023-04-17', '13:28:38', '190.7.2.155'),
(166, 'Dayan Barboza', 'Cambió una OS ID: 4', '2023-04-17', '13:31:58', '190.7.2.155'),
(167, 'Dayan Barboza', 'Se Ingresó al sistema', '2023-04-17', '13:34:17', '186.95.238.93'),
(168, NULL, 'Ingresado al sistema', '2023-04-17', '13:35:21', '186.95.238.93'),
(169, NULL, 'Ingresado al sistema', '2023-04-17', '14:32:44', '190.230.158.223'),
(170, NULL, 'Ingresado al sistema', '2023-04-17', '15:21:50', '190.230.158.223'),
(171, NULL, 'Ingresado al sistema', '2023-04-17', '18:57:29', '186.111.140.43'),
(172, NULL, 'Ingresado al sistema', '2023-04-17', '19:18:54', '186.111.137.136'),
(173, NULL, 'Ingresado al sistema', '2023-04-17', '20:31:05', '186.111.140.43'),
(174, NULL, 'Ingresado al sistema', '2023-04-17', '21:32:33', '186.111.137.136'),
(175, NULL, 'Ingresado al sistema', '2023-04-18', '11:32:22', '190.18.214.196'),
(176, 'Dayan Barboza', 'Se Ingresó al sistema', '2023-04-18', '11:38:29', '190.18.214.196'),
(177, NULL, 'Ingresado al sistema', '2023-04-18', '15:53:05', '2800:810:52d:3a:646d:5f07:af33:816'),
(178, 'Dayan Barboza', 'Se Ingresó al sistema', '2023-04-18', '17:51:48', '190.7.2.155'),
(179, 'Dayan Barboza', 'Se Ingresó al sistema', '2023-04-18', '18:36:01', '2800:810:52d:3a:646d:5f07:af33:816'),
(180, NULL, 'Ingresado al sistema', '2023-04-19', '15:17:41', '190.230.158.223'),
(181, NULL, 'Enviou e-mail para o cliente: Dayan Barboza. E-mail: barboza@gmail.com', '2023-04-19', '15:25:12', '190.230.158.223'),
(182, NULL, 'Ingresado al sistema', '2023-04-19', '18:16:46', '::1'),
(183, NULL, 'Adicionou um cliente.', '2023-04-19', '18:22:51', '::1'),
(184, NULL, 'Adicionou uma OS', '2023-04-19', '18:27:35', '::1'),
(185, NULL, 'Cambió una OS ID: 5', '2023-04-19', '18:30:32', '::1'),
(186, NULL, 'Alterou a logomarca do emitente.', '2023-04-19', '18:33:20', '::1'),
(187, NULL, 'Alterou informações de emitente.', '2023-04-19', '18:35:31', '::1'),
(188, NULL, 'Alterou informações de emitente.', '2023-04-19', '18:36:25', '::1'),
(189, NULL, 'Adicionou um serviço', '2023-04-19', '18:55:22', '::1'),
(190, NULL, 'Adicionou um serviço', '2023-04-19', '18:55:48', '::1'),
(191, NULL, 'Adicionou um serviço', '2023-04-19', '18:56:17', '::1'),
(192, NULL, 'Adicionou um serviço', '2023-04-19', '18:56:56', '::1'),
(193, NULL, 'Adicionou um serviço', '2023-04-19', '18:57:43', '::1'),
(194, NULL, 'Adicionou um serviço', '2023-04-19', '18:58:01', '::1'),
(195, NULL, 'Adicionou um serviço', '2023-04-19', '18:58:46', '::1'),
(196, NULL, 'Adicionou um serviço', '2023-04-19', '19:16:22', '::1'),
(197, NULL, 'Adicionou um serviço', '2023-04-19', '19:16:42', '::1'),
(198, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:17:19', '::1'),
(199, NULL, 'Removeu serviço de uma OS. ID (OS): ', '2023-04-19', '19:17:25', '::1'),
(200, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:17:35', '::1'),
(201, NULL, 'Alterou um serviço. ID: 9', '2023-04-19', '19:18:07', '::1'),
(202, NULL, 'Alterou um serviço. ID: 10', '2023-04-19', '19:18:15', '::1'),
(203, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:18:54', '::1'),
(204, NULL, 'Removeu serviço de uma OS. ID (OS): ', '2023-04-19', '19:19:03', '::1'),
(205, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:19:18', '::1'),
(206, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:19:33', '::1'),
(207, NULL, 'Removeu serviço de uma OS. ID (OS): ', '2023-04-19', '19:19:43', '::1'),
(208, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:20:01', '::1'),
(209, NULL, 'Alterou um serviço. ID: 7', '2023-04-19', '19:20:31', '::1'),
(210, NULL, 'Alterou um serviço. ID: 7', '2023-04-19', '19:20:37', '::1'),
(211, NULL, 'Alterou um serviço. ID: 6', '2023-04-19', '19:20:58', '::1'),
(212, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:21:24', '::1'),
(213, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:21:35', '::1'),
(214, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:21:46', '::1'),
(215, NULL, 'Alterou um serviço. ID: 8', '2023-04-19', '19:22:07', '::1'),
(216, NULL, 'Adicionou um serviço', '2023-04-19', '19:23:28', '::1'),
(217, NULL, 'Adicionou um serviço', '2023-04-19', '19:24:06', '::1'),
(218, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:24:25', '::1'),
(219, NULL, 'Adicionou serviço a uma OS. ID (OS): 5', '2023-04-19', '19:24:36', '::1'),
(220, NULL, 'Adicionou um desconto na OS. ID: 5', '2023-04-19', '19:25:12', '::1'),
(221, NULL, 'Adicionou um serviço', '2023-04-19', '19:43:38', '::1'),
(222, NULL, 'Adicionou um serviço', '2023-04-19', '19:44:03', '::1'),
(223, NULL, 'Adicionou um serviço', '2023-04-19', '19:44:48', '::1'),
(224, NULL, 'Adicionou um serviço', '2023-04-19', '19:45:26', '::1'),
(225, NULL, 'Adicionou um serviço', '2023-04-19', '19:45:52', '::1'),
(226, NULL, 'Adicionou um serviço', '2023-04-19', '19:46:24', '::1'),
(227, NULL, 'Adicionou um serviço', '2023-04-19', '19:48:44', '::1'),
(228, NULL, 'Adicionou um cliente.', '2023-04-19', '19:51:27', '::1'),
(229, NULL, 'Alterou um cliente. ID5', '2023-04-19', '19:51:40', '::1'),
(230, NULL, 'Adicionou uma OS', '2023-04-19', '19:55:34', '::1'),
(231, NULL, 'Cambió una OS ID: 6', '2023-04-19', '19:56:35', '::1'),
(232, NULL, 'Adicionou serviço a uma OS. ID (OS): 6', '2023-04-19', '19:57:17', '::1'),
(233, NULL, 'Adicionou serviço a uma OS. ID (OS): 6', '2023-04-19', '19:57:53', '::1'),
(234, NULL, 'Adicionou serviço a uma OS. ID (OS): 6', '2023-04-19', '19:58:11', '::1'),
(235, NULL, 'Adicionou serviço a uma OS. ID (OS): 6', '2023-04-19', '19:58:23', '::1'),
(236, NULL, 'Adicionou serviço a uma OS. ID (OS): 6', '2023-04-19', '19:58:38', '::1'),
(237, NULL, 'Adicionou um desconto na OS. ID: 6', '2023-04-19', '19:59:16', '::1'),
(238, NULL, 'Adicionou anotação a uma OS. ID (OS): 6', '2023-04-19', '20:01:17', '::1'),
(239, NULL, 'Cambió una OS ID: 6', '2023-04-19', '20:03:35', '::1'),
(240, NULL, 'Cambió una OS ID: 6', '2023-04-19', '20:07:51', '::1'),
(241, NULL, 'Alterou um cliente. ID5', '2023-04-19', '20:09:28', '::1'),
(242, NULL, 'Adicionou um cliente.', '2023-04-19', '20:41:21', '::1'),
(243, NULL, 'Adicionou uma OS', '2023-04-19', '21:00:12', '::1'),
(244, NULL, 'Adicionou serviço a uma OS. ID (OS): 7', '2023-04-19', '21:01:21', '::1'),
(245, NULL, 'Adicionou serviço a uma OS. ID (OS): 7', '2023-04-19', '21:02:01', '::1'),
(246, NULL, 'Removeu serviço de uma OS. ID (OS): ', '2023-04-19', '21:02:08', '::1'),
(247, NULL, 'Adicionou serviço a uma OS. ID (OS): 7', '2023-04-19', '21:02:20', '::1'),
(248, NULL, 'Removeu serviço de uma OS. ID (OS): ', '2023-04-19', '21:02:29', '::1'),
(249, NULL, 'Adicionou serviço a uma OS. ID (OS): 7', '2023-04-19', '21:02:38', '::1'),
(250, NULL, 'Adicionou serviço a uma OS. ID (OS): 7', '2023-04-19', '21:02:48', '::1'),
(251, NULL, 'Adicionou serviço a uma OS. ID (OS): 7', '2023-04-19', '21:03:06', '::1'),
(252, NULL, 'Adicionou serviço a uma OS. ID (OS): 7', '2023-04-19', '21:03:31', '::1'),
(253, NULL, 'Adicionou serviço a uma OS. ID (OS): 7', '2023-04-19', '21:03:49', '::1'),
(254, NULL, 'Cambió una OS ID: 7', '2023-04-19', '21:04:58', '::1'),
(255, NULL, 'Adicionou serviço a uma OS. ID (OS): 7', '2023-04-19', '21:05:26', '::1'),
(256, NULL, 'Adicionou um serviço', '2023-04-19', '21:06:14', '::1'),
(257, NULL, 'Adicionou um desconto na OS. ID: 7', '2023-04-19', '21:13:19', '::1'),
(258, NULL, 'Cambió una OS ID: 7', '2023-04-19', '21:15:53', '::1'),
(259, NULL, 'Ingresado al sistema', '2023-04-20', '14:49:47', '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `idMarcas` int(11) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20210125173741);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `os`
--

CREATE TABLE `os` (
  `idOs` int(11) NOT NULL,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoProduto` text DEFAULT NULL,
  `defeito` text DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `laudoTecnico` text DEFAULT NULL,
  `valorTotal` decimal(10,2) DEFAULT 0.00,
  `desconto` decimal(10,2) DEFAULT 0.00,
  `valor_desconto` decimal(10,2) DEFAULT 0.00,
  `tipo_desconto` varchar(8) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL,
  `garantias_id` int(11) DEFAULT NULL,
  `pin` int(4) DEFAULT NULL,
  `patternlock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `os`
--

INSERT INTO `os` (`idOs`, `dataInicial`, `dataFinal`, `garantia`, `descricaoProduto`, `defeito`, `status`, `observacoes`, `laudoTecnico`, `valorTotal`, `desconto`, `valor_desconto`, `tipo_desconto`, `clientes_id`, `usuarios_id`, `lancamento`, `faturado`, `garantias_id`, `pin`, `patternlock`) VALUES
(1, '2023-04-04', '2023-04-14', '30', '<p>Pantalla</p>', '<p>Pantalla rota</p>', 'Finalizado', '<p>Sin film</p>', '<p>Cambiar pantalla</p>', '0.00', '0.00', '0.00', NULL, 1, 2, NULL, 0, NULL, 0, 0),
(2, '2023-04-04', '2023-04-13', '30', '<p>sfsdf</p>', '<p>sdf</p>', 'Finalizado', '<p>sdfsdf</p>', '<p>sdf</p>', '0.00', '0.00', '0.00', NULL, 1, 2, NULL, 0, NULL, 3312, 12547863),
(3, '2023-04-13', '2023-04-28', '45', '<p>IPhone 13</p>', '<p>No enciende&nbsp;</p>', 'Faturado', '<p>Pantalla rota</p>', '<p>Se debe reparar&nbsp;</p>', '6222.22', '0.00', '0.00', NULL, 1, 1, NULL, 1, 1, 6519, 36987452),
(4, '2023-04-17', '2023-04-17', '', '<p>iphone 13</p>', '<p>NO ENCIENDE</p>', 'Finalizado', '<p>ME DA ERRIR</p>', '', '0.00', '0.00', '0.00', NULL, 3, 1, NULL, 0, NULL, 0, 0),
(5, '2023-04-19', '2023-04-28', '45', '<p>Web App y Mobile (iOS y Android) para un Sistema de Control y Monitoreo IoT.&nbsp; Se planea hacer un Re-diseño de la actual interfaz Web y re-build del desarrollo Mobile en Flutter Flow.</p>', '<p>Desarrollo Mobile en IONIC <strong>SIN FINALIZAR,&nbsp; </strong>No se tuvo en cuenta un <strong>pre-diseño UX/UI</strong> (webApp y Mobile)</p>', 'Orçamento', '<p><strong>IOTapp Server:</strong>&nbsp; Pre requisitos</p><p>El código esta escrito de forma estructurada en Typescript y se basa en el framework Express, usa JWT para verificacion de usuarios en sesión. EL código esta basado en el uso de Promises para un mejor manejo de eventos como errores los caules hacen un log con el identificador de usuario.<br></p>', '<p>Informe técnico: <a href=\"https://mature-wilderness-3e1.notion.site/IOTapp-29b64057bca046ceb64ab1d8c3c64bcf\" target=\"_self\"><strong>Aquí</strong></a></p><p><br></p>', '0.00', '15.00', '2172.18', 'porcento', 4, 1, NULL, 0, 1, 0, 0),
(6, '2023-04-19', '2023-04-26', '30', '<p>Diseño y Desarrollo de un Sistema de Comunicación con ESP32. Firmware p/el correcto funcionamiento del sistema electrónico.</p>', '', 'Orçamento', '<p><strong>El sistema está conformado por dos módulos conectados por BT.&nbsp;</strong></p><p>Módulo 1 EMISOR ( consta de un ESP32, BT, RFID, tres pulsadores y fuente de alim )&nbsp;</p><p>Módulo 2&nbsp; RECEPTOR ( consta de un ESP32, BT, RFID, 2 pulsadores una pantalla y fuente de alim ).</p><p>Procesos: Existen múltiples módulos tipo 1 y múltiples módulos 2.</p><p>Se le carga un ID mediante RFID a cada módulo 1. Cuando uno de los tres pulsadores ( A, B y C ) del módulo 1 es presionado, transmite broadcasting a los módulos tipo 2 el ID del módulo + el ID del pulsador. Lo módulos tipo 2 reciben el mensaje y lo muestran en la pantalla. Alguno de los usuarios del módulo 2 debe confirmar la recepción del mensaje&nbsp; &nbsp;tocando un RFID ubicado cerca del módulo 2.&nbsp;</p><p>El módulo 1 es un módulo ESP32</p><p>El módulo 2 es un producto ya desarrollado que posee, pantalla, batería y puertos I/O con extensa documentación disponible. <a href=\"https://shop.m5stack.com/products/m5stickc-plus-esp32-pico-mini-iot-development-kit\" target=\"_self\"><strong>Ver</strong></a></p>', '<p><strong>PLAZO DE ENTREGA:</strong> 15 a 20 días hábiles.</p><p>El trigger del módulo 1 inicializa un timer el cual se detiene cuando el módulo 2 lee el RFID. Ese valor se adjunta al ID del módulo 2 y se envía a una base de datos ( mediante BT ) que corre win en una PC de escritorio.<br></p><p>&nbsp;Básicamente es eso, se dispara un evento &gt; se mide el TOA &gt; se guarda en la DB de la PC. Todos los procesos también se visualizan en tiempo real en la PC<br></p><p><br></p><p><strong>Descripción del Presupuesto:</strong></p><p>EN DÓLARES AMERICANOS | Anticipo del 50% al Inicio del Desarrollo | 50% restante con la entrega | MEDIOS DE PAGO: Dólares / PayPal / Binance/ Transferencias&nbsp; en Pesos (TC: DB)</p>', '0.00', '20.00', '396.00', 'porcento', 5, 1, NULL, 0, 1, 0, 0),
(7, '2023-04-19', '2023-04-26', '45', '<p></p><ol><li>Diseño y Desarrollo de Hardware p/Slot de Competición .<br></li></ol><p></p>', '<p></p><ul><li>Sensor RPM con Sensor Efecto Hall.</li><li>Sensor p/Medir Atracción Magnética (UMS).</li></ul><p></p>', 'Orçamento', '<p><strong>Se espera del Hardware:</strong></p><p></p><ul><li>Medir RPM.</li><li>UMS (Atracción Magnética).</li><li>Consumo Motor.</li><li>Tensión y Corriente Motor.</li><li>Regular Voltaje del&nbsp; Motor: 0 a 16v</li><li>Cargador de Baterías/Pilas Litio-Li-ion</li><li>Medir Tensión y Capacidad Baterías.</li><li>Conector a Railes (Tensión Coche).</li></ul><p></p>', '<p><span style=\"font-weight: 700;\">PLAZO DE ENTREGA:</span>&nbsp;15 a 20 días hábiles.<span style=\"font-weight: 700;\"><br></span></p><p><strong>NO INCLUYE:</strong> Fabricación PCB, Componentes Electrónicos, Envíos</p><p><br></p><p><span style=\"font-weight: 700;\">Descripción del Presupuesto:</span></p><p>EN DÓLARES AMERICANOS | Anticipo del 50% al Inicio del Desarrollo | 50% restante con la entrega | MEDIOS DE PAGO: Dólares / PayPal / Binance/ Transferencias&nbsp; en Pesos (TC: DB)</p>', '0.00', '15.00', '743.75', 'porcento', 6, 1, NULL, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissoes`
--

CREATE TABLE `permissoes` (
  `idPermissao` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `permissoes` text DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissoes`
--

INSERT INTO `permissoes` (`idPermissao`, `nome`, `permissoes`, `situacao`, `data`) VALUES
(1, 'Administrador', 'a:53:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";s:1:\"1\";s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:9:\"aGarantia\";s:1:\"1\";s:9:\"eGarantia\";s:1:\"1\";s:9:\"dGarantia\";s:1:\"1\";s:9:\"vGarantia\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:10:\"aPagamento\";N;s:10:\"ePagamento\";N;s:10:\"dPagamento\";N;s:10:\"vPagamento\";N;s:11:\"aLancamento\";s:1:\"1\";s:11:\"eLancamento\";s:1:\"1\";s:11:\"dLancamento\";s:1:\"1\";s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:9:\"cEmitente\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:8:\"cSistema\";s:1:\"1\";s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:11:\"rFinanceiro\";s:1:\"1\";s:9:\"aCobranca\";s:1:\"1\";s:9:\"eCobranca\";s:1:\"1\";s:9:\"dCobranca\";s:1:\"1\";s:9:\"vCobranca\";s:1:\"1\";}', 1, '2023-03-31'),
(2, 'Técnico', 'a:53:{s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";N;s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";N;s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";s:1:\"1\";s:9:\"aGarantia\";N;s:9:\"eGarantia\";N;s:9:\"dGarantia\";N;s:9:\"vGarantia\";s:1:\"1\";s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";s:1:\"1\";s:10:\"aPagamento\";N;s:10:\"ePagamento\";N;s:10:\"dPagamento\";N;s:10:\"vPagamento\";s:1:\"1\";s:11:\"aLancamento\";N;s:11:\"eLancamento\";N;s:11:\"dLancamento\";N;s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";N;s:9:\"cEmitente\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:10:\"cAuditoria\";N;s:6:\"cEmail\";N;s:8:\"cSistema\";N;s:8:\"rCliente\";N;s:8:\"rProduto\";N;s:8:\"rServico\";N;s:3:\"rOs\";N;s:6:\"rVenda\";N;s:11:\"rFinanceiro\";N;s:9:\"aCobranca\";N;s:9:\"eCobranca\";N;s:9:\"dCobranca\";N;s:9:\"vCobranca\";s:1:\"1\";}', 1, '2023-04-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produtos`
--

CREATE TABLE `produtos` (
  `idProdutos` int(11) NOT NULL,
  `codDeBarra` varchar(70) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL,
  `saida` tinyint(1) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `produtos`
--

INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES
(1, '12345678765', 'SSD 240 GB', 'UNID', '1222.22', '1222.22', 3, 5, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produtos_os`
--

CREATE TABLE `produtos_os` (
  `idProdutos_os` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `descricao` varchar(80) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT 0.00,
  `os_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `subTotal` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `produtos_os`
--

INSERT INTO `produtos_os` (`idProdutos_os`, `quantidade`, `descricao`, `preco`, `os_id`, `produtos_id`, `subTotal`) VALUES
(1, 1, NULL, '1222.22', 2, 1, '1222.22'),
(2, 1, NULL, '1222.22', 3, 1, '1222.22'),
(3, 1, NULL, '1222.22', 3, 1, '1222.22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resets_de_senha`
--

CREATE TABLE `resets_de_senha` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `token` varchar(255) NOT NULL,
  `data_expiracao` datetime NOT NULL,
  `token_utilizado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicos`
--

CREATE TABLE `servicos` (
  `idServicos` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `servicos`
--

INSERT INTO `servicos` (`idServicos`, `nome`, `descricao`, `preco`) VALUES
(1, 'cambio d Pantalla', '', '5000.00'),
(2, 'Desarrollo Stack MERN x Hora', '', '20.00'),
(3, 'Desarrollo Stack MEVN x Hora', '', '20.00'),
(4, 'Desarrollo Stack PHP/MySQL', '', '15.00'),
(5, 'Desarrollo de API´s x Hora', '', '12.00'),
(6, 'Desarrollo Back FlutterFlow x Hora', '', '24.75'),
(7, 'Desarrollo Front FlutterFlow x Hora', '', '22.15'),
(8, 'Diseño Figma UX/UI x Hora', '', '12.50'),
(9, 'Desarrollo Backend Web', '', '0.01'),
(10, 'Desarrollo Frontend Web', '', '0.01'),
(11, 'Entrega LLave en Mano [Archivos Proyecto]', '', '100.00'),
(12, 'Entorno de Desarrollo: Preparación', '', '50.00'),
(13, 'Diseño Hardware Esquemático x Hora', '', '15.00'),
(14, 'Diseño Hardware PCB LayOut x Hora', '', '12.50'),
(15, 'Firmware Arduino x Hora', '', '10.00'),
(16, 'Desarrollo Hardware PMV x Hora', '', '9.75'),
(17, 'Ensayo de Laboratorio x Hora', '', '7.50'),
(18, 'Medición &amp; Testing x Hora', '', '7.50'),
(19, 'Montaje y Soldadura x Hora', '', '7.50'),
(20, 'Desarrollo APK Android x Hora', '', '15.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicos_os`
--

CREATE TABLE `servicos_os` (
  `idServicos_os` int(11) NOT NULL,
  `servico` varchar(80) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT 0.00,
  `os_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `subTotal` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `servicos_os`
--

INSERT INTO `servicos_os` (`idServicos_os`, `servico`, `quantidade`, `preco`, `os_id`, `servicos_id`, `subTotal`) VALUES
(1, NULL, 1, '5000.00', 3, 1, '5000.00'),
(2, NULL, 1, '5000.00', 3, 1, '5000.00'),
(4, NULL, 40, '12.50', 5, 8, '500.00'),
(6, NULL, 1, '0.01', 5, 9, '0.01'),
(8, NULL, 40, '15.00', 5, 4, '600.00'),
(9, NULL, 30, '24.75', 5, 6, '742.50'),
(10, NULL, 20, '22.15', 5, 7, '443.00'),
(11, NULL, 10, '12.00', 5, 5, '120.00'),
(12, NULL, 1, '50.00', 5, 12, '50.00'),
(13, NULL, 1, '100.00', 5, 11, '100.00'),
(14, NULL, 2, '15.00', 6, 13, '30.00'),
(15, NULL, 30, '9.75', 6, 16, '292.50'),
(16, NULL, 15, '7.50', 6, 17, '112.50'),
(17, NULL, 3, '7.50', 6, 19, '22.50'),
(18, NULL, 5, '7.50', 6, 18, '37.50'),
(19, NULL, 1, '50.00', 7, 12, '50.00'),
(22, NULL, 10, '15.00', 7, 13, '150.00'),
(23, NULL, 15, '12.50', 7, 14, '187.50'),
(24, NULL, 5, '7.50', 7, 19, '37.50'),
(25, NULL, 20, '7.50', 7, 18, '150.00'),
(26, NULL, 20, '10.00', 7, 15, '200.00'),
(27, NULL, 1, '100.00', 7, 11, '100.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `permissoes_id` int(11) NOT NULL,
  `dataExpiracao` date DEFAULT NULL,
  `url_image_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `rg`, `cpf`, `cep`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `permissoes_id`, `dataExpiracao`, `url_image_user`) VALUES
(1, 'Ing. Gambino Fernando', 'MG-25.502.560', '600.021.520-87', '70005-115', 'Rua Acima', '12', 'Alvorada', 'Teste', 'MG', 'electronicagambino@gmail.com', '$2y$10$1f1yt227D08gBh8dpx6m5e8/WmJIz4/enGm0gYvGJEBoR1mtv8X5W', '(00)0000-0000', '', 1, '2023-03-31', 1, '3000-01-01', '6fbbf3daea630c1106556c151ad1aab5.png'),
(2, 'NEOLIFE', 'demo', '956.730.590-00', '22050-002', 'Avenida Nossa Senhora de Copacabana', '1234', 'Copacabana', 'Rio de Janeiro', 'RJ', 'demo@demo.com', '$2y$10$/vBlUngCfFrOAL1X2FCtAesXclzKVXa1fhmpsWx9QX6freuxut7cG', '(45)25666-1333', '(54)64321-3532', 1, '2023-04-01', 1, '2023-04-17', '4569ea79f2eb7da572a87b576b42e3cf.png'),
(3, 'Dayan Barboza', 'NEXOLIFE', '11-111111-11', '4000', 'casita', '123', 'El Bosque', 'San Miguel de Tucumán', 'Tucuman', 'soporte@nexolife.com', '$2y$10$GNdnR2L.t4fC6eS5Pv136OtzL88Hp7hrgDW4Bmm6DIyRNgzD0X24G', '(1111)11-11-11', '(1111)11-11-11', 1, '2023-04-14', 1, '2058-12-14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendas`
--

CREATE TABLE `vendas` (
  `idVendas` int(11) NOT NULL,
  `dataVenda` date DEFAULT NULL,
  `valorTotal` decimal(10,2) DEFAULT 0.00,
  `desconto` decimal(10,2) DEFAULT 0.00,
  `valor_desconto` decimal(10,2) DEFAULT 0.00,
  `tipo_desconto` varchar(8) DEFAULT NULL,
  `faturado` tinyint(1) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `observacoes_cliente` text DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) DEFAULT NULL,
  `lancamentos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vendas`
--

INSERT INTO `vendas` (`idVendas`, `dataVenda`, `valorTotal`, `desconto`, `valor_desconto`, `tipo_desconto`, `faturado`, `observacoes`, `observacoes_cliente`, `clientes_id`, `usuarios_id`, `lancamentos_id`) VALUES
(1, '2023-04-11', '0.00', '0.00', '0.00', NULL, 0, '', '', 1, 1, NULL),
(2, '2023-04-11', '0.00', '0.00', '0.00', NULL, 0, '', '', 1, 1, NULL),
(3, '2023-04-11', '0.00', '10.00', '2200.00', 'porcento', 0, '<p>Tiene que pagar</p>', '<p>Alta venta</p>', 1, 1, NULL),
(4, '2023-04-14', '2444.44', '10.00', '2200.00', 'porcento', 1, '', '', 2, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anexos`
--
ALTER TABLE `anexos`
  ADD PRIMARY KEY (`idAnexos`),
  ADD KEY `fk_anexos_os1` (`os_id`);

--
-- Indices de la tabla `anotacoes_os`
--
ALTER TABLE `anotacoes_os`
  ADD PRIMARY KEY (`idAnotacoes`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategorias`);

--
-- Indices de la tabla `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idClientes`);

--
-- Indices de la tabla `cobrancas`
--
ALTER TABLE `cobrancas`
  ADD PRIMARY KEY (`idCobranca`),
  ADD KEY `fk_cobrancas_os1` (`os_id`),
  ADD KEY `fk_cobrancas_vendas1` (`vendas_id`),
  ADD KEY `fk_cobrancas_clientes1` (`clientes_id`);

--
-- Indices de la tabla `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`idConfig`),
  ADD UNIQUE KEY `config` (`config`);

--
-- Indices de la tabla `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`idContas`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`idDocumentos`);

--
-- Indices de la tabla `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emitente`
--
ALTER TABLE `emitente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`idEquipamentos`),
  ADD KEY `fk_equipanentos_marcas1_idx` (`marcas_id`),
  ADD KEY `fk_equipanentos_clientes1_idx` (`clientes_id`);

--
-- Indices de la tabla `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  ADD PRIMARY KEY (`idEquipamentos_os`),
  ADD KEY `fk_equipamentos_os_equipanentos1_idx` (`equipamentos_id`),
  ADD KEY `fk_equipamentos_os_os1_idx` (`os_id`);

--
-- Indices de la tabla `garantias`
--
ALTER TABLE `garantias`
  ADD PRIMARY KEY (`idGarantias`),
  ADD KEY `fk_garantias_usuarios1` (`usuarios_id`);

--
-- Indices de la tabla `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD PRIMARY KEY (`idItens`),
  ADD KEY `fk_itens_de_vendas_vendas1` (`vendas_id`),
  ADD KEY `fk_itens_de_vendas_produtos1` (`produtos_id`);

--
-- Indices de la tabla `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD PRIMARY KEY (`idLancamentos`),
  ADD KEY `fk_lancamentos_clientes1` (`clientes_id`),
  ADD KEY `fk_lancamentos_categorias1_idx` (`categorias_id`),
  ADD KEY `fk_lancamentos_contas1_idx` (`contas_id`),
  ADD KEY `fk_lancamentos_usuarios1` (`usuarios_id`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`idLogs`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarcas`);

--
-- Indices de la tabla `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`idOs`),
  ADD KEY `fk_os_clientes1` (`clientes_id`),
  ADD KEY `fk_os_usuarios1` (`usuarios_id`),
  ADD KEY `fk_os_lancamentos1` (`lancamento`),
  ADD KEY `fk_os_garantias1` (`garantias_id`);

--
-- Indices de la tabla `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`idPermissao`);

--
-- Indices de la tabla `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProdutos`);

--
-- Indices de la tabla `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD PRIMARY KEY (`idProdutos_os`),
  ADD KEY `fk_produtos_os_os1` (`os_id`),
  ADD KEY `fk_produtos_os_produtos1` (`produtos_id`);

--
-- Indices de la tabla `resets_de_senha`
--
ALTER TABLE `resets_de_senha`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServicos`);

--
-- Indices de la tabla `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD PRIMARY KEY (`idServicos_os`),
  ADD KEY `fk_servicos_os_os1` (`os_id`),
  ADD KEY `fk_servicos_os_servicos1` (`servicos_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`);

--
-- Indices de la tabla `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`idVendas`),
  ADD KEY `fk_vendas_clientes1` (`clientes_id`),
  ADD KEY `fk_vendas_usuarios1` (`usuarios_id`),
  ADD KEY `fk_vendas_lancamentos1` (`lancamentos_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anexos`
--
ALTER TABLE `anexos`
  MODIFY `idAnexos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anotacoes_os`
--
ALTER TABLE `anotacoes_os`
  MODIFY `idAnotacoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idClientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cobrancas`
--
ALTER TABLE `cobrancas`
  MODIFY `idCobranca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `idConfig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `contas`
--
ALTER TABLE `contas`
  MODIFY `idContas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `idDocumentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `emitente`
--
ALTER TABLE `emitente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `idEquipamentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  MODIFY `idEquipamentos_os` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `garantias`
--
ALTER TABLE `garantias`
  MODIFY `idGarantias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  MODIFY `idItens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lancamentos`
--
ALTER TABLE `lancamentos`
  MODIFY `idLancamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `idLogs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idMarcas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `os`
--
ALTER TABLE `os`
  MODIFY `idOs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `idPermissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProdutos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `produtos_os`
--
ALTER TABLE `produtos_os`
  MODIFY `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `resets_de_senha`
--
ALTER TABLE `resets_de_senha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `servicos_os`
--
ALTER TABLE `servicos_os`
  MODIFY `idServicos_os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vendas`
--
ALTER TABLE `vendas`
  MODIFY `idVendas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cobrancas`
--
ALTER TABLE `cobrancas`
  ADD CONSTRAINT `fk_cobrancas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cobrancas_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cobrancas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD CONSTRAINT `fk_equipanentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_equipanentos_marcas1` FOREIGN KEY (`marcas_id`) REFERENCES `marcas` (`idMarcas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  ADD CONSTRAINT `fk_equipamentos_os_equipanentos1` FOREIGN KEY (`equipamentos_id`) REFERENCES `equipamentos` (`idEquipamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_equipamentos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `garantias`
--
ALTER TABLE `garantias`
  ADD CONSTRAINT `fk_garantias_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD CONSTRAINT `fk_itens_de_vendas_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_de_vendas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD CONSTRAINT `fk_lancamentos_categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`idCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_contas1` FOREIGN KEY (`contas_id`) REFERENCES `contas` (`idContas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `fk_os_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_lancamentos1` FOREIGN KEY (`lancamento`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD CONSTRAINT `fk_produtos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produtos_os_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD CONSTRAINT `fk_servicos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicos_os_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`idServicos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_permissoes1` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`idPermissao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_lancamentos1` FOREIGN KEY (`lancamentos_id`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
