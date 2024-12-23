-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 05:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_pk_gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `marker`
--

CREATE TABLE `marker` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pemilik` varchar(150) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marker`
--

INSERT INTO `marker` (`id`, `nama`, `pemilik`, `alamat`, `kecamatan`, `latitude`, `longitude`) VALUES
(3, 'Rumah Chairul', 'Chairul Muluk', 'Jl. Tekukur No.1, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah', '', '-0.8443117188840542', '119.89304529573702'),
(4, 'Rumah Atira', 'Atira Damayanti', 'Jl. Elang 3 No.8, Birobuli Utara, Kec. Palu Sel., Kota Palu, Sulawesi Tengah', '', '-0.908673515446431', '119.8962151030235'),
(5, 'Rumah Akbar', 'Achmad Aulia Akbar', 'Jl. KS Tubun No.27 B, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah ', '', '-0.8850051135412378', '119.87504775143591');

-- --------------------------------------------------------

--
-- Table structure for table `polygon`
--

CREATE TABLE `polygon` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `poligon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `polygon`
--

INSERT INTO `polygon` (`id`, `nama`, `warna`, `poligon`) VALUES
(4, 'Fakultas Matematika dan IPA', '#1593ac', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.892323,-0.839271],[119.892344,-0.839035],[119.892484,-0.838906],[119.89303,-0.838606],[119.89368,-0.838236],[119.893696,-0.837308],[119.894125,-0.837275],[119.895047,-0.837308],[119.895052,-0.838059],[119.89501,-0.838697],[119.894768,-0.838922],[119.89465,-0.839051],[119.894602,-0.839174],[119.894586,-0.839362],[119.894425,-0.839281],[119.894264,-0.83919],[119.89413,-0.839196],[119.89338,-0.839185],[119.893122,-0.839153],[119.8928,-0.839169],[119.892554,-0.839222],[119.892323,-0.839271]]]}}]}'),
(7, 'Fakultas Kehutanan', '#00b303', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.898572,-0.839115],[119.897725,-0.838225],[119.897709,-0.838091],[119.897725,-0.837291],[119.899902,-0.837286],[119.900036,-0.837812],[119.90017,-0.838423],[119.900272,-0.838858],[119.898572,-0.839115]]]}}]}'),
(8, 'Fakultas Hukum', '#00e1ff', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.895907,-0.835586],[119.895928,-0.834266],[119.896373,-0.833773],[119.896395,-0.833419],[119.896368,-0.832818],[119.898641,-0.832791],[119.898673,-0.833236],[119.897719,-0.83321],[119.897585,-0.833392],[119.897547,-0.833623],[119.89737,-0.833757],[119.897317,-0.833977],[119.89737,-0.834197],[119.897365,-0.834384],[119.897199,-0.834508],[119.897118,-0.834631],[119.897102,-0.835307],[119.897167,-0.83558],[119.895907,-0.835586]]]}}]}'),
(9, 'Fakultas Fisip', '#eeff00', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.895027,-0.835591],[119.89501,-0.834245],[119.894925,-0.834132],[119.894576,-0.833751],[119.894555,-0.833306],[119.894582,-0.832904],[119.892303,-0.832941],[119.892292,-0.833837],[119.892319,-0.833923],[119.893498,-0.834567],[119.893659,-0.834695],[119.89368,-0.834953],[119.893664,-0.835575],[119.895027,-0.835591]]]}}]}'),
(10, 'Fakultas Ekonomi', '#5ddaaa', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.896368,-0.832834],[119.896379,-0.832469],[119.896223,-0.832255],[119.895939,-0.831981],[119.895896,-0.831815],[119.895918,-0.831429],[119.895939,-0.830093],[119.896829,-0.830099],[119.898631,-0.831938],[119.898669,-0.832217],[119.898658,-0.832797],[119.896368,-0.832834]]]}}]}'),
(11, 'Fakultas Peternakan dan Perikanan', '#000000', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.898589,-0.841845],[119.898594,-0.840735],[119.898599,-0.839185],[119.898573,-0.839121],[119.89868,-0.839078],[119.900267,-0.838852],[119.900423,-0.839534],[119.900444,-0.840242],[119.900535,-0.841717],[119.900487,-0.841808],[119.900326,-0.84184],[119.898589,-0.841845]]]}}]}'),
(12, 'Fakultas Keguruan dan Ilmu Pendidikan', '#ff00d0', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.894995,-0.834197],[119.895086,-0.834175],[119.895198,-0.834186],[119.895273,-0.834234],[119.895408,-0.834245],[119.895515,-0.834256],[119.895611,-0.834331],[119.895735,-0.834341],[119.895933,-0.834341],[119.895938,-0.834245],[119.896383,-0.833784],[119.896394,-0.833269],[119.896351,-0.833081],[119.896367,-0.832443],[119.896217,-0.832233],[119.895922,-0.831944],[119.895949,-0.830528],[119.89596,-0.830088],[119.895053,-0.83012],[119.892307,-0.83012],[119.892313,-0.830705],[119.892323,-0.831756],[119.892312,-0.832952],[119.894602,-0.832888],[119.894554,-0.833295],[119.894581,-0.833757],[119.894995,-0.834197]]]}}]}'),
(13, 'Fakultas Pertanian', '#001eff', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.894582,-0.840301],[119.896394,-0.840177],[119.896405,-0.84037],[119.898604,-0.840344],[119.89861,-0.839137],[119.897972,-0.838509],[119.897725,-0.838203],[119.897725,-0.837281],[119.895037,-0.837318],[119.895053,-0.838101],[119.895027,-0.838675],[119.894694,-0.838997],[119.894608,-0.839121],[119.894576,-0.839362],[119.894582,-0.840301]]]}}]}'),
(14, 'Fakultas Kedokteran', '#c4c4c4', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.898614,-0.841851],[119.894989,-0.841851],[119.895,-0.841035],[119.894979,-0.840907],[119.894823,-0.840762],[119.894587,-0.84051],[119.894587,-0.840301],[119.896421,-0.840172],[119.896416,-0.840392],[119.898619,-0.840338],[119.898614,-0.841851]]]}}]}'),
(15, 'Fakultas Teknik', '#ff0000', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.892329,-0.839271],[119.892865,-0.83918],[119.893015,-0.839158],[119.893584,-0.839174],[119.894329,-0.839212],[119.894592,-0.839373],[119.894592,-0.84051],[119.895016,-0.840966],[119.895016,-0.841872],[119.894077,-0.841861],[119.89412,-0.842162],[119.894345,-0.842634],[119.894452,-0.842811],[119.894377,-0.843079],[119.893793,-0.843084],[119.893439,-0.843079],[119.893187,-0.843036],[119.892892,-0.843084],[119.892774,-0.843042],[119.892688,-0.84287],[119.892544,-0.842827],[119.892313,-0.842843],[119.892329,-0.839271]]]}}]}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marker`
--
ALTER TABLE `marker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polygon`
--
ALTER TABLE `polygon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marker`
--
ALTER TABLE `marker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `polygon`
--
ALTER TABLE `polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
