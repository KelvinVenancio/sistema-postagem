-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04-Out-2014 às 12:48
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `va_categorias`
--

CREATE TABLE IF NOT EXISTS `va_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `data` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `va_categorias`
--

INSERT INTO `va_categorias` (`id`, `titulo`, `descricao`, `data`) VALUES
(1, 'Programação', 'Descrição da categoria de programação.', '0000-00-00 00:00:00'),
(2, 'Design', 'Descrição', '2014-10-04 06:35:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `va_posts`
--

CREATE TABLE IF NOT EXISTS `va_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `categoria` int(11) NOT NULL,
  `data` timestamp NOT NULL,
  `visitas` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `va_posts`
--

INSERT INTO `va_posts` (`id`, `titulo`, `autor`, `conteudo`, `categoria`, `data`, `visitas`, `status`) VALUES
(1, 'Primeira Postagem', 'Kelvin Soares', '<p>Primeiro post!</p>', 0, '2014-10-04 15:47:32', 5, 1),
(2, 'Kelvin', 'Kelvin', 'teste', 0, '2014-10-04 02:20:46', 0, 0),
(4, 'Teste', 'Teste', 'teste1\\r\\nteste2\\r\\nteste teste', 0, '2014-10-04 02:28:59', 0, 0),
(5, 'Jubileu', 'Cangaceiro', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed blandit nisl. Quisque in iaculis leo. Nunc aliquam ex nibh, quis euismod nisi vulputate sit amet. Maecenas ut porttitor diam, vel convallis nisl. Maecenas molestie vestibulum eleifend. Fusce vel orci vel ante molestie interdum vel eget risus. Nunc erat enim, pellentesque vel purus ut, suscipit tristique arcu. Vestibulum nec sollicitudin metus.</p>\n<p>&nbsp;</p>\n<p>Curabitur id faucibus lacus. Nulla sodales urna sit amet mauris rhoncus cursus. Integer fringilla consequat eros vel fringilla. Proin molestie, neque at luctus vestibulum, dui nulla laoreet nisl, non fermentum ex sapien nec mauris. Proin accumsan lectus nec mauris sagittis, eget lobortis diam egestas. Mauris purus magna, laoreet eu ex ac, lacinia bibendum urna. Aliquam auctor consequat dictum.</p>\n<p>&nbsp;</p>\n<p>Donec lorem ligula, porta eget nunc quis, aliquam laoreet velit. Aenean luctus arcu sit amet efficitur bibendum. Fusce ut eleifend massa. Proin et urna sem. Nam at auctor mi, eget lobortis leo. Aliquam faucibus neque enim, in venenatis leo convallis ac. Quisque luctus tristique magna, quis tempor diam interdum vitae. Fusce consectetur tempor metus, in volutpat purus varius et. Quisque ac purus sed nulla semper egestas. Donec blandit leo quis tincidunt gravida. Nullam accumsan facilisis felis, ut hendrerit dui consectetur non. In hac habitasse platea dictumst.</p>\n<p>&nbsp;</p>\n<p>Integer faucibus sapien metus, at rutrum ante mollis ut. Curabitur non maximus mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec commodo commodo dolor, sit amet aliquam sapien faucibus vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non quam efficitur, dapibus risus quis, accumsan dui. Nulla id molestie arcu, eget suscipit risus. Suspendisse facilisis ac justo vitae cursus. Vestibulum porta commodo metus, a tincidunt libero lobortis nec. Fusce in nulla quis nisl vehicula iaculis ut porttitor justo. In gravida tincidunt justo nec dignissim. Proin semper, ipsum non laoreet rutrum, est mauris tincidunt nunc, et hendrerit dui nunc non mi. Nullam ex nulla, porttitor nec viverra tincidunt, viverra at nisl. Donec a est elementum dolor maximus elementum tempus sed felis.</p>\n<p>&nbsp;</p>\n<p>Sed at mattis turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer vel ex libero. Integer ultricies maximus nunc, ut egestas elit aliquam id. Proin id massa vitae libero vehicula tristique. Donec sit amet nulla varius, pulvinar massa at, auctor magna. Curabitur tincidunt dolor purus, vel gravida augue consequat vel.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', 0, '2014-10-04 05:22:14', 13, 1),
(9, 'Bunda lêlê', 'Kelvin Soares', '<p>Kelvin Ven&acirc;ncio Soares!!!</p>\n<p>bora minunu!!!</p>\n<p>&nbsp;</p>', 0, '2014-10-04 15:47:56', 5, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
