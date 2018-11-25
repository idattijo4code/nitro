-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2018 at 07:39 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitted`
--

CREATE TABLE `admitted` (
  `admitted_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `admission_number` varchar(20) NOT NULL,
  `program_id` smallint(6) NOT NULL,
  `session_id` tinyint(4) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `app_id` bigint(20) NOT NULL,
  `app_no` varchar(15) NOT NULL,
  `app_frst_name` varchar(15) NOT NULL,
  `app_last_name` varchar(15) NOT NULL,
  `app_other_name` varchar(15) NOT NULL,
  `app_username` varchar(30) NOT NULL,
  `app_pw` varchar(20) NOT NULL,
  `app_gender_id` tinyint(4) NOT NULL,
  `app_dob` date NOT NULL,
  `app_m_status_id` tinyint(4) NOT NULL,
  `app_address` varchar(100) NOT NULL,
  `app_city` varchar(20) NOT NULL,
  `app_lga_id` smallint(6) NOT NULL,
  `app_state` smallint(6) NOT NULL,
  `nationality_id` mediumint(9) NOT NULL,
  `app_phone_no` varchar(15) NOT NULL,
  `app_email` varchar(30) NOT NULL,
  `religion_id` tinyint(4) NOT NULL,
  `image_id` int(10) NOT NULL,
  `faculty_id` smallint(6) NOT NULL,
  `dept_id` smallint(6) NOT NULL,
  `program_id` mediumint(9) NOT NULL,
  `next_of_kin` varchar(100) NOT NULL,
  `next_of_kin_add` varchar(100) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `next_of_kin_phone` varchar(15) NOT NULL,
  `refree` varchar(50) NOT NULL,
  `ref_phone` varchar(15) NOT NULL,
  `ref_email` varchar(30) NOT NULL,
  `ref_add` varchar(100) NOT NULL,
  `app_contact_add` varchar(100) NOT NULL,
  `qual_id` tinyint(4) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_attachment`
--

CREATE TABLE `app_attachment` (
  `app_attch_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `attchment_id` int(11) NOT NULL,
  `attch_file` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_details`
--

CREATE TABLE `app_details` (
  `app_detail_id` bigint(20) NOT NULL,
  `app_id` int(11) NOT NULL,
  `exam_id` smallint(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `exam_year` year(4) NOT NULL,
  `center_no` varchar(15) NOT NULL,
  `candidate_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `attchment_id` int(11) NOT NULL,
  `attchment_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` smallint(6) NOT NULL,
  `faculty_id` smallint(6) NOT NULL,
  `dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` tinyint(4) NOT NULL,
  `education_name` varchar(30) NOT NULL,
  `edu_qual` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` tinyint(4) NOT NULL,
  `faculty_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` tinyint(4) NOT NULL,
  `gender_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` tinyint(4) NOT NULL,
  `grade_name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` bigint(20) NOT NULL,
  `image_name` varchar(15) NOT NULL,
  `extension` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jamb`
--

CREATE TABLE `jamb` (
  `jamb_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `jamb_no` int(11) NOT NULL,
  `jamb_score` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `local_govt`
--

CREATE TABLE `local_govt` (
  `lg_id` int(11) NOT NULL,
  `local_govt` varchar(150) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local_govt`
--

INSERT INTO `local_govt` (`lg_id`, `local_govt`, `state_id`) VALUES
(1, 'Aba North', 1),
(2, 'Aba South', 1),
(3, 'Arochukwu', 1),
(4, 'Bende', 1),
(5, 'Ikwuano', 1),
(6, 'Isiala Ngwa North', 1),
(7, 'Isiala Ngwa South', 1),
(8, 'Isuikwuato', 1),
(9, 'Obi Ngwa', 1),
(10, 'Ohafia', 1),
(11, 'Osisioma', 1),
(12, 'Ugwunagbo', 1),
(13, 'Ukwa East', 1),
(14, 'Ukwa West', 1),
(15, 'Umuahia North', 1),
(16, 'Umuahia South', 1),
(17, 'Umu Nneochi', 1),
(18, 'Demsa', 2),
(19, 'Fufure', 2),
(20, 'Ganye', 2),
(21, 'Gayuk', 2),
(22, 'Gombi', 2),
(23, 'Grie', 2),
(24, 'Hong', 2),
(25, 'Jada', 2),
(26, 'Larmurde', 2),
(27, 'Madagali', 2),
(28, 'Maiha', 2),
(29, 'Mayo Belwa', 2),
(30, 'Michika', 2),
(31, 'Mubi North', 2),
(32, 'Mubi South', 2),
(33, 'Numan', 2),
(34, 'Shelleng', 2),
(35, 'Song', 2),
(36, 'Toungo', 2),
(37, 'Yola North', 2),
(38, 'Yola South', 2),
(39, 'Abak', 3),
(40, 'Eastern Obolo', 3),
(41, 'Eket', 3),
(42, 'Esit Eket', 3),
(43, 'Essien Udim', 3),
(44, 'Etim Ekpo', 3),
(45, 'Etinan', 3),
(46, 'Ibeno', 3),
(47, 'Ibesikpo Asutan', 3),
(48, 'Ibiono-Ibom', 3),
(49, 'Ika', 3),
(50, 'Ikono', 3),
(51, 'Ikot Abasi', 3),
(52, 'Ikot Ekpene', 3),
(53, 'Ini', 3),
(54, 'Itu', 3),
(55, 'Mbo', 3),
(56, 'Mkpat-Enin', 3),
(57, 'Nsit-Atai', 3),
(58, 'Nsit-Ibom', 3),
(59, 'Nsit-Ubium', 3),
(60, 'Obot Akara', 3),
(61, 'Okobo', 3),
(62, 'Onna', 3),
(63, 'Oron', 3),
(64, 'Oruk Anam', 3),
(65, 'Udung-Uko', 3),
(66, 'Ukanafun', 3),
(67, 'Uruan', 3),
(68, 'Urue-Offong/Oruko', 3),
(69, 'Uyo', 3),
(70, 'Aguata', 4),
(71, 'Anambra East', 4),
(72, 'Anambra West', 4),
(73, 'Anaocha', 4),
(74, 'Awka North', 4),
(75, 'Awka South', 4),
(76, 'Ayamelum', 4),
(77, 'Dunukofia', 4),
(78, 'Ekwusigo', 4),
(79, 'Idemili North', 4),
(80, 'Idemili South', 4),
(81, 'Ihiala', 4),
(82, 'Njikoka', 4),
(83, 'Nnewi North', 4),
(84, 'Nnewi South', 4),
(85, 'Ogbaru', 4),
(86, 'Onitsha North', 4),
(87, 'Onitsha South', 4),
(88, 'Orumba North', 4),
(89, 'Orumba South', 4),
(90, 'Oyi', 4),
(91, 'Alkaleri', 5),
(92, 'Bauchi', 5),
(93, 'Bogoro', 5),
(94, 'Damban', 5),
(95, 'Darazo', 5),
(96, 'Dass', 5),
(97, 'Gamawa', 5),
(98, 'Ganjuwa', 5),
(99, 'Giade', 5),
(100, 'Itas/Gadau', 5),
(101, 'Katagum', 5),
(102, 'Kirfi', 5),
(103, 'Misau', 5),
(104, 'Ningi', 5),
(105, 'Shira', 5),
(106, 'Tafawa Balewa', 5),
(107, 'Toro', 5),
(108, 'Warji', 5),
(109, 'Zaki', 5),
(110, 'Brass', 6),
(111, 'Ekeremor', 6),
(112, 'Kolokuma/Opokuma', 6),
(113, 'Nembe', 6),
(114, 'Ogbia', 6),
(115, 'Sagbama', 6),
(116, 'Southern Ijaw', 6),
(117, 'Yenagoa', 6),
(118, 'Agatu', 7),
(119, 'Apa', 7),
(120, 'Ado', 7),
(121, 'Buruku', 7),
(122, 'Gboko', 7),
(123, 'Guma', 7),
(124, 'Gwer East', 7),
(125, 'Gwer West', 7),
(126, 'Katsina-Ala', 7),
(127, 'Konshisha', 7),
(128, 'Kwande', 7),
(129, 'Logo', 7),
(130, 'Makurdi', 7),
(131, 'Obi', 7),
(132, 'Ogbadibo', 7),
(133, 'Ohimini', 7),
(134, 'Oju', 7),
(135, 'Okpokwu', 7),
(136, 'Oturkpo', 7),
(137, 'Tarka', 7),
(138, 'Ukum', 7),
(139, 'Ushongo', 7),
(140, 'Vandeikya', 7),
(141, 'Abadam', 8),
(142, 'Askira/Uba', 8),
(143, 'Bama', 8),
(144, 'Bayo', 8),
(145, 'Biu', 8),
(146, 'Chibok', 8),
(147, 'Damboa', 8),
(148, 'Dikwa', 8),
(149, 'Gubio', 8),
(150, 'Guzamala', 8),
(151, 'Gwoza', 8),
(152, 'Hawul', 8),
(153, 'Jere', 8),
(154, 'Kaga', 8),
(155, 'Kala/Balge', 8),
(156, 'Konduga', 8),
(157, 'Kukawa', 8),
(158, 'Kwaya Kusar', 8),
(159, 'Mafa', 8),
(160, 'Magumeri', 8),
(161, 'Maiduguri', 8),
(162, 'Marte', 8),
(163, 'Mobbar', 8),
(164, 'Monguno', 8),
(165, 'Ngala', 8),
(166, 'Nganzai', 8),
(167, 'Shani', 8),
(168, 'Abi', 9),
(169, 'Akamkpa', 9),
(170, 'Akpabuyo', 9),
(171, 'Bakassi', 9),
(172, 'Bekwarra', 9),
(173, 'Biase', 9),
(174, 'Boki', 9),
(175, 'Calabar Municipal', 9),
(176, 'Calabar South', 9),
(177, 'Etung', 9),
(178, 'Ikom', 9),
(179, 'Obanliku', 9),
(180, 'Obubra', 9),
(181, 'Obudu', 9),
(182, 'Odukpani', 9),
(183, 'Ogoja', 9),
(184, 'Yakuur', 9),
(185, 'Yala', 9),
(186, 'Aniocha North', 10),
(187, 'Aniocha South', 10),
(188, 'Bomadi', 10),
(189, 'Burutu', 10),
(190, 'Ethiope East', 10),
(191, 'Ethiope West', 10),
(192, 'Ika North East', 10),
(193, 'Ika South', 10),
(194, 'Isoko North', 10),
(195, 'Isoko South', 10),
(196, 'Ndokwa East', 10),
(197, 'Ndokwa West', 10),
(198, 'Okpe', 10),
(199, 'Oshimili North', 10),
(200, 'Oshimili South', 10),
(201, 'Patani', 10),
(202, 'Sapele', 10),
(203, 'Udu', 10),
(204, 'Ughelli North', 10),
(205, 'Ughelli South', 10),
(206, 'Ukwuani', 10),
(207, 'Uvwie', 10),
(208, 'Warri North', 10),
(209, 'Warri South', 10),
(210, 'Warri South West', 10),
(211, 'Abakaliki', 11),
(212, 'Afikpo North', 11),
(213, 'Afikpo South', 11),
(214, 'Ebonyi', 11),
(215, 'Ezza North', 11),
(216, 'Ezza South', 11),
(217, 'Ikwo', 11),
(218, 'Ishielu', 11),
(219, 'Ivo', 11),
(220, 'Izzi', 11),
(221, 'Ohaozara', 11),
(222, 'Ohaukwu', 11),
(223, 'Onicha', 11),
(224, 'Akoko-Edo', 12),
(225, 'Egor', 12),
(226, 'Esan Central', 12),
(227, 'Esan North-East', 12),
(228, 'Esan South-East', 12),
(229, 'Esan West', 12),
(230, 'Etsako Central', 12),
(231, 'Etsako East', 12),
(232, 'Etsako West', 12),
(233, 'Igueben', 12),
(234, 'Ikpoba Okha', 12),
(235, 'Orhionmwon', 12),
(236, 'Oredo', 12),
(237, 'Ovia North-East', 12),
(238, 'Ovia South-West', 12),
(239, 'Owan East', 12),
(240, 'Owan West', 12),
(241, 'Uhunmwonde', 12),
(242, 'Ado Ekiti', 13),
(243, 'Efon', 13),
(244, 'Ekiti East', 13),
(245, 'Ekiti South-West', 13),
(246, 'Ekiti West', 13),
(247, 'Emure', 13),
(248, 'Gbonyin', 13),
(249, 'Ido Osi', 13),
(250, 'Ijero', 13),
(251, 'Ikere', 13),
(252, 'Ikole', 13),
(253, 'Ilejemeje', 13),
(254, 'Irepodun/Ifelodun', 13),
(255, 'Ise/Orun', 13),
(256, 'Moba', 13),
(257, 'Oye', 13),
(258, 'Aninri', 14),
(259, 'Awgu', 14),
(260, 'Enugu East', 14),
(261, 'Enugu North', 14),
(262, 'Enugu South', 14),
(263, 'Ezeagu', 14),
(264, 'Igbo Etiti', 14),
(265, 'Igbo Eze North', 14),
(266, 'Igbo Eze South', 14),
(267, 'Isi Uzo', 14),
(268, 'Nkanu East', 14),
(269, 'Nkanu West', 14),
(270, 'Nsukka', 14),
(271, 'Oji River', 14),
(272, 'Udenu', 14),
(273, 'Udi', 14),
(274, 'Uzo Uwani', 14),
(275, 'Abaji', 15),
(276, 'Bwari', 15),
(277, 'Gwagwalada', 15),
(278, 'Kuje', 15),
(279, 'Kwali', 15),
(280, 'Municipal Area Council', 15),
(281, 'Akko', 16),
(282, 'Balanga', 16),
(283, 'Billiri', 16),
(284, 'Dukku', 16),
(285, 'Funakaye', 16),
(286, 'Gombe', 16),
(287, 'Kaltungo', 16),
(288, 'Kwami', 16),
(289, 'Nafada', 16),
(290, 'Shongom', 16),
(291, 'Yamaltu/Deba', 16),
(292, 'Aboh Mbaise', 17),
(293, 'Ahiazu Mbaise', 17),
(294, 'Ehime Mbano', 17),
(295, 'Ezinihitte', 17),
(296, 'Ideato North', 17),
(297, 'Ideato South', 17),
(298, 'Ihitte/Uboma', 17),
(299, 'Ikeduru', 17),
(300, 'Isiala Mbano', 17),
(301, 'Isu', 17),
(302, 'Mbaitoli', 17),
(303, 'Ngor Okpala', 17),
(304, 'Njaba', 17),
(305, 'Nkwerre', 17),
(306, 'Nwangele', 17),
(307, 'Obowo', 17),
(308, 'Oguta', 17),
(309, 'Ohaji/Egbema', 17),
(310, 'Okigwe', 17),
(311, 'Orlu', 17),
(312, 'Orsu', 17),
(313, 'Oru East', 17),
(314, 'Oru West', 17),
(315, 'Owerri Municipal', 17),
(316, 'Owerri North', 17),
(317, 'Owerri West', 17),
(318, 'Unuimo', 17),
(319, 'Auyo', 18),
(320, 'Babura', 18),
(321, 'Biriniwa', 18),
(322, 'Birnin Kudu', 18),
(323, 'Buji', 18),
(324, 'Dutse', 18),
(325, 'Gagarawa', 18),
(326, 'Garki', 18),
(327, 'Gumel', 18),
(328, 'Guri', 18),
(329, 'Gwaram', 18),
(330, 'Gwiwa', 18),
(331, 'Hadejia', 18),
(332, 'Jahun', 18),
(333, 'Kafin Hausa', 18),
(334, 'Kazaure', 18),
(335, 'Kiri Kasama', 18),
(336, 'Kiyawa', 18),
(337, 'Kaugama', 18),
(338, 'Maigatari', 18),
(339, 'Malam Madori', 18),
(340, 'Miga', 18),
(341, 'Ringim', 18),
(342, 'Roni', 18),
(343, 'Sule Tankarkar', 18),
(344, 'Taura', 18),
(345, 'Yankwashi', 18),
(346, 'Birnin Gwari', 19),
(347, 'Chikun', 19),
(348, 'Giwa', 19),
(349, 'Igabi', 19),
(350, 'Ikara', 19),
(351, 'Jaba', 19),
(352, 'Kachia', 19),
(353, 'Kaduna North', 19),
(354, 'Kaduna South', 19),
(355, 'Kagarko', 19),
(356, 'Kajuru', 19),
(357, 'Kaura', 19),
(358, 'Kauru', 19),
(359, 'Kubau', 19),
(360, 'Kudan', 19),
(361, 'Lere', 19),
(362, 'Makarfi', 19),
(363, 'Sabon Gari', 19),
(364, 'Sanga', 19),
(365, 'Soba', 19),
(366, 'Zangon Kataf', 19),
(367, 'Zaria', 19),
(368, 'Ajingi', 20),
(369, 'Albasu', 20),
(370, 'Bagwai', 20),
(371, 'Bebeji', 20),
(372, 'Bichi', 20),
(373, 'Bunkure', 20),
(374, 'Dala', 20),
(375, 'Dambatta', 20),
(376, 'Dawakin Kudu', 20),
(377, 'Dawakin Tofa', 20),
(378, 'Doguwa', 20),
(379, 'Fagge', 20),
(380, 'Gabasawa', 20),
(381, 'Garko', 20),
(382, 'Garun Mallam', 20),
(383, 'Gaya', 20),
(384, 'Gezawa', 20),
(385, 'Gwale', 20),
(386, 'Gwarzo', 20),
(387, 'Kabo', 20),
(388, 'Kano Municipal', 20),
(389, 'Karaye', 20),
(390, 'Kibiya', 20),
(391, 'Kiru', 20),
(392, 'Kumbotso', 20),
(393, 'Kunchi', 20),
(394, 'Kura', 20),
(395, 'Madobi', 20),
(396, 'Makoda', 20),
(397, 'Minjibir', 20),
(398, 'Nasarawa', 20),
(399, 'Rano', 20),
(400, 'Rimin Gado', 20),
(401, 'Rogo', 20),
(402, 'Shanono', 20),
(403, 'Sumaila', 20),
(404, 'Takai', 20),
(405, 'Tarauni', 20),
(406, 'Tofa', 20),
(407, 'Tsanyawa', 20),
(408, 'Tudun Wada', 20),
(409, 'Ungogo', 20),
(410, 'Warawa', 20),
(411, 'Wudil', 20),
(412, 'Bakori', 21),
(413, 'Batagarawa', 21),
(414, 'Batsari', 21),
(415, 'Baure', 21),
(416, 'Bindawa', 21),
(417, 'Charanchi', 21),
(418, 'Dandume', 21),
(419, 'Danja', 21),
(420, 'Dan Musa', 21),
(421, 'Daura', 21),
(422, 'Dutsi', 21),
(423, 'Dutsin Ma', 21),
(424, 'Faskari', 21),
(425, 'Funtua', 21),
(426, 'Ingawa', 21),
(427, 'Jibia', 21),
(428, 'Kafur', 21),
(429, 'Kaita', 21),
(430, 'Kankara', 21),
(431, 'Kankia', 21),
(432, 'Katsina', 21),
(433, 'Kurfi', 21),
(434, 'Kusada', 21),
(435, 'Malumfashi', 21),
(436, 'Mani', 21),
(437, 'Mashi', 21),
(438, 'Matazu', 21),
(439, 'Musawa', 21),
(440, 'Rimi', 21),
(441, 'Sabuwa', 21),
(442, 'Safana', 21),
(443, 'Sandamu', 21),
(444, 'Zango', 21),
(445, 'Aleiro', 22),
(446, 'Arewa Dandi', 22),
(447, 'Argungu', 22),
(448, 'Augie', 22),
(449, 'Bagudo', 22),
(450, 'Birnin Kebbi', 22),
(451, 'Bunza', 22),
(452, 'Dandi', 22),
(453, 'Fakai', 22),
(454, 'Gwandu', 22),
(455, 'Jega', 22),
(456, 'Kalgo', 22),
(457, 'Koko/Besse', 22),
(458, 'Maiyama', 22),
(459, 'Ngaski', 22),
(460, 'Sakaba', 22),
(461, 'Shanga', 22),
(462, 'Suru', 22),
(463, 'Wasagu/Danko', 22),
(464, 'Yauri', 22),
(465, 'Zuru', 22),
(466, 'Adavi', 23),
(467, 'Ajaokuta', 23),
(468, 'Ankpa', 23),
(469, 'Bassa', 23),
(470, 'Dekina', 23),
(471, 'Ibaji', 23),
(472, 'Idah', 23),
(473, 'Igalamela Odolu', 23),
(474, 'Ijumu', 23),
(475, 'Kabba/Bunu', 23),
(476, 'Kogi', 23),
(477, 'Lokoja', 23),
(478, 'Mopa Muro', 23),
(479, 'Ofu', 23),
(480, 'Ogori/Magongo', 23),
(481, 'Okehi', 23),
(482, 'Okene', 23),
(483, 'Olamaboro', 23),
(484, 'Omala', 23),
(485, 'Yagba East', 23),
(486, 'Yagba West', 23),
(487, 'Asa', 24),
(488, 'Baruten', 24),
(489, 'Edu', 24),
(490, 'Ekiti', 24),
(491, 'Ifelodun', 24),
(492, 'Ilorin East', 24),
(493, 'Ilorin South', 24),
(494, 'Ilorin West', 24),
(495, 'Irepodun', 24),
(496, 'Isin', 24),
(497, 'Kaiama', 24),
(498, 'Moro', 24),
(499, 'Offa', 24),
(500, 'Oke Ero', 24),
(501, 'Oyun', 24),
(502, 'Pategi', 24),
(503, 'Agege', 25),
(504, 'Ajeromi-Ifelodun', 25),
(505, 'Alimosho', 25),
(506, 'Amuwo-Odofin', 25),
(507, 'Apapa', 25),
(508, 'Badagry', 25),
(509, 'Epe', 25),
(510, 'Eti Osa', 25),
(511, 'Ibeju-Lekki', 25),
(512, 'Ifako-Ijaiye', 25),
(513, 'Ikeja', 25),
(514, 'Ikorodu', 25),
(515, 'Kosofe', 25),
(516, 'Lagos Island', 25),
(517, 'Lagos Mainland', 25),
(518, 'Mushin', 25),
(519, 'Ojo', 25),
(520, 'Oshodi-Isolo', 25),
(521, 'Shomolu', 25),
(522, 'Surulere, Lagos State', 25),
(523, 'Akwanga', 26),
(524, 'Awe', 26),
(525, 'Doma', 26),
(526, 'Karu', 26),
(527, 'Keana', 26),
(528, 'Keffi', 26),
(529, 'Kokona', 26),
(530, 'Lafia', 26),
(531, 'Nasarawa', 26),
(532, 'Nasarawa Egon', 26),
(533, 'Obi', 26),
(534, 'Toto', 26),
(535, 'Wamba', 26),
(536, 'Agaie', 27),
(537, 'Agwara', 27),
(538, 'Bida', 27),
(539, 'Borgu', 27),
(540, 'Bosso', 27),
(541, 'Chanchaga', 27),
(542, 'Edati', 27),
(543, 'Gbako', 27),
(544, 'Gurara', 27),
(545, 'Katcha', 27),
(546, 'Kontagora', 27),
(547, 'Lapai', 27),
(548, 'Lavun', 27),
(549, 'Magama', 27),
(550, 'Mariga', 27),
(551, 'Mashegu', 27),
(552, 'Mokwa', 27),
(553, 'Moya', 27),
(554, 'Paikoro', 27),
(555, 'Rafi', 27),
(556, 'Rijau', 27),
(557, 'Shiroro', 27),
(558, 'Suleja', 27),
(559, 'Tafa', 27),
(560, 'Wushishi', 27),
(561, 'Abeokuta North', 28),
(562, 'Abeokuta South', 28),
(563, 'Ado-Odo/Ota', 28),
(564, 'Egbado North', 28),
(565, 'Egbado South', 28),
(566, 'Ewekoro', 28),
(567, 'Ifo', 28),
(568, 'Ijebu East', 28),
(569, 'Ijebu North', 28),
(570, 'Ijebu North East', 28),
(571, 'Ijebu Ode', 28),
(572, 'Ikenne', 28),
(573, 'Imeko Afon', 28),
(574, 'Ipokia', 28),
(575, 'Obafemi Owode', 28),
(576, 'Odeda', 28),
(577, 'Odogbolu', 28),
(578, 'Ogun Waterside', 28),
(579, 'Remo North', 28),
(580, 'Shagamu', 28),
(581, 'Akoko North-East', 29),
(582, 'Akoko North-West', 29),
(583, 'Akoko South-West', 29),
(584, 'Akoko South-East', 29),
(585, 'Akure North', 29),
(586, 'Akure South', 29),
(587, 'Ese Odo', 29),
(588, 'Idanre', 29),
(589, 'Ifedore', 29),
(590, 'Ilaje', 29),
(591, 'Ile Oluji/Okeigbo', 29),
(592, 'Irele', 29),
(593, 'Odigbo', 29),
(594, 'Okitipupa', 29),
(595, 'Ondo East', 29),
(596, 'Ondo West', 29),
(597, 'Ose', 29),
(598, 'Owo', 29),
(599, 'Atakunmosa East', 30),
(600, 'Atakunmosa West', 30),
(601, 'Aiyedaade', 30),
(602, 'Aiyedire', 30),
(603, 'Boluwaduro', 30),
(604, 'Boripe', 30),
(605, 'Ede North', 30),
(606, 'Ede South', 30),
(607, 'Ife Central', 30),
(608, 'Ife East', 30),
(609, 'Ife North', 30),
(610, 'Ife South', 30),
(611, 'Egbedore', 30),
(612, 'Ejigbo', 30),
(613, 'Ifedayo', 30),
(614, 'Ifelodun', 30),
(615, 'Ila', 30),
(616, 'Ilesa East', 30),
(617, 'Ilesa West', 30),
(618, 'Irepodun', 30),
(619, 'Irewole', 30),
(620, 'Isokan', 30),
(621, 'Iwo', 30),
(622, 'Obokun', 30),
(623, 'Odo Otin', 30),
(624, 'Ola Oluwa', 30),
(625, 'Olorunda', 30),
(626, 'Oriade', 30),
(627, 'Orolu', 30),
(628, 'Osogbo', 30),
(629, 'Afijio', 31),
(630, 'Akinyele', 31),
(631, 'Atiba', 31),
(632, 'Atigbo', 31),
(633, 'Egbeda', 31),
(634, 'Ibadan North', 31),
(635, 'Ibadan North-East', 31),
(636, 'Ibadan North-West', 31),
(637, 'Ibadan South-East', 31),
(638, 'Ibadan South-West', 31),
(639, 'Ibarapa Central', 31),
(640, 'Ibarapa East', 31),
(641, 'Ibarapa North', 31),
(642, 'Ido', 31),
(643, 'Irepo', 31),
(644, 'Iseyin', 31),
(645, 'Itesiwaju', 31),
(646, 'Iwajowa', 31),
(647, 'Kajola', 31),
(648, 'Lagelu', 31),
(649, 'Ogbomosho North', 31),
(650, 'Ogbomosho South', 31),
(651, 'Ogo Oluwa', 31),
(652, 'Olorunsogo', 31),
(653, 'Oluyole', 31),
(654, 'Ona Ara', 31),
(655, 'Orelope', 31),
(656, 'Ori Ire', 31),
(657, 'Oyo', 31),
(658, 'Oyo East', 31),
(659, 'Saki East', 31),
(660, 'Saki West', 31),
(661, 'Surulere, Oyo State', 31),
(662, 'Bokkos', 32),
(663, 'Barkin Ladi', 32),
(664, 'Bassa', 32),
(665, 'Jos East', 32),
(666, 'Jos North', 32),
(667, 'Jos South', 32),
(668, 'Kanam', 32),
(669, 'Kanke', 32),
(670, 'Langtang South', 32),
(671, 'Langtang North', 32),
(672, 'Mangu', 32),
(673, 'Mikang', 32),
(674, 'Pankshin', 32),
(675, 'Riyom', 32),
(676, 'Shendam', 32),
(677, 'Wase', 32),
(678, 'Abua/Odual', 33),
(679, 'Ahoada East', 33),
(680, 'Ahoada West', 33),
(681, 'Akuku-Toru', 33),
(682, 'Andoni', 33),
(683, 'Asari-Toru', 33),
(684, 'Bonny', 33),
(685, 'Degema', 33),
(686, 'Eleme', 33),
(687, 'Emuoha', 33),
(688, 'Etche', 33),
(689, 'Gokana', 33),
(690, 'Ikwerre', 33),
(691, 'Khana', 33),
(692, 'Obio/Akpor', 33),
(693, 'Ogba/Egbema/Ndoni', 33),
(694, 'Ogu/Bolo', 33),
(695, 'Okrika', 33),
(696, 'Omuma', 33),
(697, 'Opobo/Nkoro', 33),
(698, 'Oyigbo', 33),
(699, 'Port Harcourt', 33),
(700, 'Tai', 33),
(701, 'Binji', 34),
(702, 'Bodinga', 34),
(703, 'Dange Shuni', 34),
(704, 'Gada', 34),
(705, 'Goronyo', 34),
(706, 'Gudu', 34),
(707, 'Gwadabawa', 34),
(708, 'Illela', 34),
(709, 'Isa', 34),
(710, 'Kebbe', 34),
(711, 'Kware', 34),
(712, 'Rabah', 34),
(713, 'Sabon Birni', 34),
(714, 'Shagari', 34),
(715, 'Silame', 34),
(716, 'Sokoto North', 34),
(717, 'Sokoto South', 34),
(718, 'Tambuwal', 34),
(719, 'Tangaza', 34),
(720, 'Tureta', 34),
(721, 'Wamako', 34),
(722, 'Wurno', 34),
(723, 'Yabo', 34),
(724, 'Ardo Kola', 35),
(725, 'Bali', 35),
(726, 'Donga', 35),
(727, 'Gashaka', 35),
(728, 'Gassol', 35),
(729, 'Ibi', 35),
(730, 'Jalingo', 35),
(731, 'Karim Lamido', 35),
(732, 'Kumi', 35),
(733, 'Lau', 35),
(734, 'Sardauna', 35),
(735, 'Takum', 35),
(736, 'Ussa', 35),
(737, 'Wukari', 35),
(738, 'Yorro', 35),
(739, 'Zing', 35),
(740, 'Bade', 36),
(741, 'Bursari', 36),
(742, 'Damaturu', 36),
(743, 'Fika', 36),
(744, 'Fune', 36),
(745, 'Geidam', 36),
(746, 'Gujba', 36),
(747, 'Gulani', 36),
(748, 'Jakusko', 36),
(749, 'Karasuwa', 36),
(750, 'Machina', 36),
(751, 'Nangere', 36),
(752, 'Nguru', 36),
(753, 'Potiskum', 36),
(754, 'Tarmuwa', 36),
(755, 'Yunusari', 36),
(756, 'Yusufari', 36),
(757, 'Anka', 37),
(758, 'Bakura', 37),
(759, 'Birnin Magaji/Kiyaw', 37),
(760, 'Bukkuyum', 37),
(761, 'Bungudu', 37),
(762, 'Gummi', 37),
(763, 'Gusau', 37),
(764, 'Kaura Namoda', 37),
(765, 'Maradun', 37),
(766, 'Maru', 37),
(767, 'Shinkafi', 37),
(768, 'Talata Mafara', 37),
(769, 'Chafe', 37),
(770, 'Zurmi', 37),
(771, 'Alkaleri', 5),
(772, 'Jamare', 5);

-- --------------------------------------------------------

--
-- Table structure for table `marital_status`
--

CREATE TABLE `marital_status` (
  `mstatus_id` tinyint(4) NOT NULL,
  `mstatus_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `nationality_id` tinyint(4) NOT NULL,
  `nationality_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` bigint(20) NOT NULL,
  `app_id` int(11) NOT NULL,
  `ref_no` varchar(20) NOT NULL,
  `program_id` smallint(6) NOT NULL,
  `payment_date` datetime NOT NULL,
  `reg_fee_id` smallint(6) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `balance` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_id` smallint(6) NOT NULL,
  `dept_id` smallint(6) NOT NULL,
  `program_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `qual_id` tinyint(4) NOT NULL,
  `qual-name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` tinyint(4) NOT NULL,
  `rank_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_fee`
--

CREATE TABLE `reg_fee` (
  `reg_fee_id` int(11) NOT NULL,
  `program_id` tinyint(4) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `duration` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rejected`
--

CREATE TABLE `rejected` (
  `rejected_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `prog_id` smallint(6) NOT NULL,
  `session_id` smallint(6) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `religion_id` tinyint(4) NOT NULL,
  `religion_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` tinyint(4) NOT NULL,
  `role_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` tinyint(4) NOT NULL,
  `semester_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` int(11) NOT NULL,
  `semester_id` smallint(6) NOT NULL,
  `session_name` varchar(20) NOT NULL,
  `alias` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ssce`
--

CREATE TABLE `ssce` (
  `exam_id` smallint(6) NOT NULL,
  `exam_name` varchar(10) NOT NULL,
  `exam_month` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` smallint(6) NOT NULL,
  `staff_first_name` varchar(20) NOT NULL,
  `staff_middle_name` varchar(20) NOT NULL,
  `staff_last_name` varchar(20) NOT NULL,
  `satff_phone` varchar(15) NOT NULL,
  `staff_email` varchar(30) NOT NULL,
  `staff_uname` varchar(20) NOT NULL,
  `staff_pw` varchar(20) NOT NULL,
  `staff_role_id` tinyint(4) NOT NULL,
  `program_id` smallint(6) NOT NULL,
  `dept_id` smallint(6) NOT NULL,
  `staff_rank_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `state` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa-Ibom'),
(4, 'Anambra'),
(5, 'Bauchi'),
(6, 'Bayelsa'),
(7, 'Benue'),
(8, 'Borno'),
(9, 'Cross River'),
(10, 'Delta'),
(11, 'Ebonyi'),
(12, 'Edo'),
(13, 'Ekiti'),
(14, 'Enugu'),
(15, 'FCT Abuja'),
(16, 'Gombe'),
(17, 'Imo'),
(18, 'Jigawa'),
(19, 'Kaduna'),
(20, 'Kano'),
(21, 'Katsina'),
(22, 'Kebbi'),
(23, 'Kogi'),
(24, 'Kwara'),
(25, 'Lagos'),
(26, 'Nasarawa'),
(27, 'Niger'),
(28, 'Ogun'),
(29, 'Ondo'),
(30, 'Osun'),
(31, 'Oyo'),
(32, 'Plateau'),
(33, 'Rivers'),
(34, 'Sokoto'),
(35, 'Taraba'),
(36, 'Yobe'),
(37, 'Zamfara');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` smallint(6) NOT NULL,
  `subject_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitted`
--
ALTER TABLE `admitted`
  ADD PRIMARY KEY (`admitted_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `app_attachment`
--
ALTER TABLE `app_attachment`
  ADD PRIMARY KEY (`app_attch_id`);

--
-- Indexes for table `app_details`
--
ALTER TABLE `app_details`
  ADD PRIMARY KEY (`app_detail_id`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`attchment_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `jamb`
--
ALTER TABLE `jamb`
  ADD PRIMARY KEY (`jamb_id`);

--
-- Indexes for table `local_govt`
--
ALTER TABLE `local_govt`
  ADD PRIMARY KEY (`lg_id`);

--
-- Indexes for table `marital_status`
--
ALTER TABLE `marital_status`
  ADD PRIMARY KEY (`mstatus_id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`nationality_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`qual_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `reg_fee`
--
ALTER TABLE `reg_fee`
  ADD PRIMARY KEY (`reg_fee_id`);

--
-- Indexes for table `rejected`
--
ALTER TABLE `rejected`
  ADD PRIMARY KEY (`rejected_id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`religion_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `ssce`
--
ALTER TABLE `ssce`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admitted`
--
ALTER TABLE `admitted`
  MODIFY `admitted_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `app_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_attachment`
--
ALTER TABLE `app_attachment`
  MODIFY `app_attch_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_details`
--
ALTER TABLE `app_details`
  MODIFY `app_detail_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `attchment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jamb`
--
ALTER TABLE `jamb`
  MODIFY `jamb_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `local_govt`
--
ALTER TABLE `local_govt`
  MODIFY `lg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;
--
-- AUTO_INCREMENT for table `marital_status`
--
ALTER TABLE `marital_status`
  MODIFY `mstatus_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `nationality_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `program_id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `qual_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reg_fee`
--
ALTER TABLE `reg_fee`
  MODIFY `reg_fee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rejected`
--
ALTER TABLE `rejected`
  MODIFY `rejected_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `religion_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ssce`
--
ALTER TABLE `ssce`
  MODIFY `exam_id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitted`
--
ALTER TABLE `admitted`
  ADD CONSTRAINT `admitted_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
