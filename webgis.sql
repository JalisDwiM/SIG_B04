-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2021 pada 04.43
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webgis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kecamatan`
--

CREATE TABLE `m_kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kd_kecamatan` varchar(10) NOT NULL,
  `nm_kecamatan` varchar(30) NOT NULL,
  `geojson_kecamatan` varchar(30) NOT NULL,
  `warna_kecamatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kecamatan`
--

INSERT INTO `m_kecamatan` (`id_kecamatan`, `kd_kecamatan`, `nm_kecamatan`, `geojson_kecamatan`, `warna_kecamatan`) VALUES
(31, '62.01.01', 'Indonesia', '45050121072050.geojson', '#e60a0a'),
(32, '62.01.02', 'Jawa Timur', '35050121070450.geojson', '#0aae43'),
(36, '62.01.04', 'Surabaya', '60060121015648.geojson', '#ff0000'),
(37, '62.01.05', 'Surabaya 2', '38060121013214.geojson', '#ff7b00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nm_pengguna` varchar(20) NOT NULL,
  `kt_sandi` varchar(150) NOT NULL,
  `level` enum('Admin','User') NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nm_pengguna`, `kt_sandi`, `level`) VALUES
(1, 'admin', '$2y$10$oNX.X8jgLhNclHBeI8ytT.1vODlml8.AN1Ieb.rSIChhCa1e7cS0S', 'Admin'),
(2, 'user', '$2y$10$oNX.X8jgLhNclHBeI8ytT.1vODlml8.AN1Ieb.rSIChhCa1e7cS0S', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_hotspot`
--

CREATE TABLE `t_hotspot` (
  `id_hotspot` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `lat` float(9,6) NOT NULL,
  `lng` float(9,6) NOT NULL,
  `tanggal` date NOT NULL,
  `marker` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_hotspot`
--

INSERT INTO `t_hotspot` (`id_hotspot`, `id_kecamatan`, `lokasi`, `keterangan`, `lat`, `lng`, `tanggal`, `marker`) VALUES
(18, 32, 'SPBU Kebraon 54.60250', '', -7.338900, 112.699402, '2021-01-05', '18050121025401.png'),
(19, 32, 'SPBU 54-60180', '', -7.333900, 112.729401, '2021-01-05', '30050121025416.png'),
(20, 31, 'SPBU 54.601.99', '', -7.334700, 112.775002, '2021-01-05', '22060121123508.png'),
(21, 32, 'SPBU 54.601.107', '', -7.327900, 112.710999, '2021-01-05', '62050121025439.png'),
(22, 32, 'SPBU Bratang Jaya', '', -7.298800, 112.760803, '2021-01-05', '93050121025427.png'),
(23, 32, 'SPBU Terminal Bratang', '', -7.300000, 112.761703, '2021-01-05', '18060121123455.png'),
(24, 36, 'SPBU 64.601.114', '', -7.332600, 112.691803, '2021-01-06', '73060121021307.png'),
(25, 36, 'SPBU 54.601.107', '', -7.327900, 112.710999, '2019-01-06', '91060121021435.png'),
(26, 36, 'SPBU 54.602.62', '', -7.313200, 112.698402, '2020-06-06', ''),
(27, 36, 'SPBU Ketintang', '', -7.311300, 112.723999, '2021-01-06', '82060121034820.png'),
(28, 36, 'SPBU 54.601.73 Jalan raya pakal', '', -7.236700, 112.618698, '2021-01-07', ''),
(29, 36, 'SPBU 54.601.10 Raya Banjar Sugihan', '', -7.255200, 112.662697, '2021-01-07', ''),
(30, 36, 'SPBU 5460112 Oso Wilangon', '', -7.213800, 112.653000, '2021-01-07', ''),
(31, 36, 'SPBU 54 60108 Jalan Tambak Langon', '', -7.229300, 112.676498, '2021-01-07', ''),
(32, 36, 'SPBU 54.601.33 raya balongsari', '', -7.258900, 112.679100, '2021-01-07', ''),
(33, 0, 'SPBU 54.601.21 Margomulyo', '', -7.257800, 112.680901, '2021-01-07', ''),
(34, 36, 'SPBU 54.601.35 darmo indah timur', '', -7.264000, 112.687500, '2021-01-07', ''),
(35, 36, 'SPBU 54.601.75 Jalan Tanjungsari', '', -7.260400, 112.693497, '2021-01-07', ''),
(36, 36, 'SPBU 54.601123 Jalan Kalianak Timur', '', -7.229100, 112.708702, '2021-01-07', ''),
(37, 36, 'SPBU 54.601123 Jalan Kalianak Timur', '', -7.229100, 112.708702, '2021-01-07', ''),
(38, 36, 'SPBU 54.60189 Jalan Ikan Kakap', '', -7.231100, 112.725899, '2021-01-07', ''),
(39, 36, 'dupak', '', -7.244600, 112.716301, '2021-01-07', ''),
(40, 36, 'SPBU 54.601103 Jalan Dupak Rukun Barat', '', -7.249300, 112.710602, '2021-01-07', ''),
(41, 0, 'SPBU Jalan Demak', '', -7.248400, 112.721199, '2021-01-07', ''),
(42, 0, 'SPBU 54.601.06 Jalan Tidar', '', -7.256400, 112.719101, '2021-01-07', ''),
(43, 0, 'SPBU Arjuno', '', -7.257700, 112.727600, '2021-01-07', ''),
(44, 0, 'SPBU Arjuno 2', '', -7.263100, 112.726196, '2021-01-07', ''),
(45, 0, 'SPBU Pertamina 54.60 sukomanunggal', '', -7.265900, 112.706497, '2021-01-07', ''),
(46, 36, 'SPBU Pertamina 54.60104 Jalan Kupang jaya', '', -7.275700, 112.707397, '2021-01-07', ''),
(47, 36, 'Jalan HR Muhammad', '', -7.284400, 112.691200, '2021-01-07', ''),
(48, 36, 'Jalan Raya Lontar', '', -7.284800, 112.675598, '2021-01-07', ''),
(49, 36, 'SPBU 54.601.105 lidah wetan', '', -7.306900, 112.663803, '2021-01-07', ''),
(50, 36, 'Jalan HR Muhammad', '', -7.285200, 112.697601, '2021-01-07', ''),
(51, 36, 'SPBU 54.602.59 Jalan Mayjend Sungkono', '', -7.289700, 112.710503, '2021-01-07', ''),
(52, 36, 'SPBU 54.602.13  Jalan Mayjen Sungkono', '', -7.291800, 112.723297, '2021-01-07', ''),
(53, 36, 'SPBU Jalan Diponegoro', '', -7.279100, 112.729500, '2021-01-07', ''),
(54, 32, 'Jalan Joyoboyo', '', -7.299200, 112.731697, '2021-01-07', ''),
(55, 36, 'SPBU 54 601 92 Jalan Tegalsari No. 43-45', '', -7.266000, 112.737900, '2021-01-07', ''),
(56, 36, 'SPBU Pertamina Kayoon', '', -7.269800, 112.746399, '2021-01-07', ''),
(57, 36, 'SPBU Bubutan', '', -7.252500, 112.735199, '2021-01-07', ''),
(58, 36, 'SPBU Jalan Semarang', '', -7.250900, 112.730003, '2021-01-07', ''),
(59, 36, 'SPBU Gundih Jalan Dupak', '', -7.245600, 112.729401, '2021-01-07', ''),
(60, 36, 'SPBU 54.60191Jalan Rajawali', '', -7.235300, 112.735199, '2021-01-07', ''),
(61, 36, 'SPBU 54.681.95 jalan jakarta', '', -7.222900, 112.736504, '2021-01-07', ''),
(62, 0, 'SPBU 54.60176 Jalan Iskandar Muda', '', -7.225100, 112.741997, '2021-01-07', ''),
(63, 36, 'SPBU 54.601.44 Jalan Waspada', '', -7.242500, 112.739799, '2021-01-07', ''),
(64, 36, 'SPBU Jalan Pahlawan', '', -7.249700, 112.737099, '2021-01-07', ''),
(65, 36, 'Jalan Pecindilan', '', -7.245100, 112.747902, '2021-01-07', ''),
(66, 36, 'Jalan Ambengan', '', -7.256100, 112.746498, '2021-01-07', ''),
(67, 32, 'SPBU Pertamina Kusuma Bangsa', '', -7.254400, 112.749802, '2021-01-07', ''),
(68, 32, 'Jalan Nganglik', '', -7.248800, 112.754898, '2021-01-07', ''),
(69, 36, 'Jalan Sidotopo Wetan', '', -7.241800, 112.757301, '2021-01-07', ''),
(70, 36, 'SPBU 54.601.17 Jalan Sidotopo Lor', '', -7.233200, 112.753700, '2021-01-07', ''),
(71, 36, 'SPBU Tambak Deres', '', -7.232000, 112.773804, '2021-01-07', ''),
(72, 32, 'SPBU 54.601.42 Jalan Tambak Rejo', '', -7.243000, 112.759201, '2021-01-07', ''),
(73, 36, 'SPBU Rangkah', '', -7.250000, 112.764702, '2021-01-07', ''),
(74, 36, 'SPBU 54.60143 Jalan Indra Kala', '', -7.260400, 112.754303, '2021-01-07', ''),
(75, 36, 'SPBU Pertamina Jalan Banda', '', -7.268400, 112.750999, '2021-01-07', ''),
(76, 0, 'SPBU Pertamina Jalan Kertajaya', '', -7.278600, 112.755600, '2021-01-07', ''),
(77, 0, 'Jalan Dinoyo 125', '', -7.286400, 112.745499, '2021-01-07', ''),
(78, 0, 'Jalan Raya Ngagel', '', -7.296700, 112.742401, '2021-01-07', ''),
(79, 36, 'SPBU Gunung Sari', '', -7.306800, 112.722900, '2021-01-07', ''),
(80, 0, 'Jalan Raya Wiyung Menganti', '', -7.313200, 112.698402, '2021-01-07', ''),
(81, 36, 'SPBU Jalan Ketintang Madya', '', -7.311300, 112.723999, '2021-01-07', ''),
(82, 36, 'SPBU Ploso Baru', '', -7.258500, 112.773903, '2021-01-07', ''),
(83, 36, 'SPBU Jalan Kalijudan', '', -7.258000, 112.782600, '2021-01-07', ''),
(84, 36, 'Jalan Prof Dr Moestopo', '', -7.266900, 112.768402, '2021-01-07', ''),
(85, 36, 'Jalan Raya Mulyosari', '', -7.271300, 112.796700, '2021-01-07', ''),
(86, 36, 'SPBU Pakuwon Cit', '', -7.278400, 112.807701, '2021-01-07', ''),
(87, 36, 'SPBU Keputih', '', -7.290300, 112.784302, '2021-01-07', ''),
(88, 36, 'SPBU Jalan Raya Kertajaya', '', -7.280800, 112.771698, '2021-01-07', ''),
(89, 0, 'SPBU Ngagel Jaya Utara', '', -7.288800, 112.758301, '2021-01-07', ''),
(90, 36, 'SPBU Jalan Raya Manyar', '', -7.289400, 112.763397, '2021-01-07', ''),
(91, 36, 'SPBU Semoloru Jalan Semolowaru', '', -7.301000, 112.781303, '2021-01-07', ''),
(92, 36, 'SPBU Nginden Semolo', '', -7.300400, 112.769501, '2021-01-07', ''),
(93, 36, 'SPBU Terminal Bratang', '', -7.300000, 112.761703, '2021-01-07', ''),
(94, 36, 'SPBU Bratang Jaya', '', -7.298800, 112.760803, '2021-01-07', ''),
(95, 0, 'Jalan Jagir Wonokromo', '', -7.306400, 112.760101, '2021-01-07', ''),
(96, 36, 'SPBU Panjang Jiwo', '', -7.308600, 112.767899, '2021-01-07', ''),
(97, 36, 'SPBU Jalan Pandugo', '', -7.322000, 112.785400, '2021-01-07', ''),
(98, 36, 'SPBU Jalan Raya Rungkut Harapan', '', -7.334700, 112.775002, '2021-01-07', ''),
(99, 36, 'SPBU Jalan Margorejo Indah', '', -7.321500, 112.769897, '2021-01-07', ''),
(100, 36, 'Jalan Raya Kebosari', '', -7.327900, 112.710999, '2021-01-07', ''),
(101, 36, 'Jalan Jemursari', '', -7.320100, 112.746597, '2021-01-07', ''),
(102, 36, 'Jalan Margorejo Indah', '', -7.318400, 112.745499, '2021-01-07', ''),
(103, 36, 'Jalan Raya Rungkut Industri', '', -7.330600, 112.757103, '2021-01-07', ''),
(104, 36, 'SPBU Kebraon 54.60250', '', -7.338900, 112.699402, '2021-01-07', ''),
(105, 36, 'Jalan Raya Kebraon depan Kebraon II', '', -7.336600, 112.703102, '2021-01-07', ''),
(106, 0, 'SPBU Kebraon', '', -7.334900, 112.703903, '2021-01-07', ''),
(107, 36, 'Jalan Raya Balas Klumprik', '', -7.332600, 112.691803, '2021-01-07', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `m_kecamatan`
--
ALTER TABLE `m_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `t_hotspot`
--
ALTER TABLE `t_hotspot`
  ADD PRIMARY KEY (`id_hotspot`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_kecamatan`
--
ALTER TABLE `m_kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_hotspot`
--
ALTER TABLE `t_hotspot`
  MODIFY `id_hotspot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
