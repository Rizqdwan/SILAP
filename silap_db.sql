-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 04 Jul 2023 pada 16.28
-- Versi server: 5.7.34
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silap_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `username`, `email`, `password`) VALUES
(1, 'Reiky Aryanando Pratama', 'admin1@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Rizqdwan DH', 'admin2@gmail.com', '01cfcd4f6b8770febfb40cb906715822');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(10) NOT NULL,
  `nama_layanan` varchar(255) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `nama_layanan`, `hari`, `waktu`) VALUES
(1, 'Pendaftaran Umum', 'Setiap hari senin s.d Rabu', '07.00 - 10.30 '),
(2, 'Pemeriksaan Umum', 'Setiap hari Selasa s.d Kamis', '07.30 - 10.30'),
(5, 'Pemeriksaan Gigi dan Mulut', 'Setiap hari Selasa s.d Kamis', '07.30 - 11.00'),
(6, 'Pelayananan Persalinan Normal', 'Setiap Hari', '24 jam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konten`
--

CREATE TABLE `konten` (
  `id` int(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `layanan` int(10) NOT NULL,
  `puskesmas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `konten`
--

INSERT INTO `konten` (`id`, `title`, `deskripsi`, `gambar`, `layanan`, `puskesmas`) VALUES
(21, 'Prioritaskan Kesehatanmu: Lakukan Pemeriksaan Kesehatan Rutin di Puskesmas', 'Puskesmas Tegalrejo mengajak masyarakat untuk menjaga kesehatan dengan melakukan pemeriksaan kesehatan rutin. Dalam upaya mempromosikan kesehatan dan pencegahan penyakit, Puskesmas mengimbau agar masyarakat tidak ragu untuk menjalani pemeriksaan fisik dan tes laboratorium yang penting seperti tes darah, urin, dan tes gula darah.Pemeriksaan kesehatan rutin merupakan langkah proaktif yang dapat membantu mendeteksi dini masalah kesehatan, memberikan pemahaman tentang kondisi tubuh, dan mengambil langkah-langkah pencegahan yang tepat. Dengan meluangkan waktu untuk melakukan pemeriksaan kesehatan di puskesmas, masyarakat dapat memperoleh informasi penting tentang kesehatan mereka dan mengambil langkah yang diperlukan untuk menjaga kesehatan secara keseluruhan.Melalui pemeriksaan kesehatan rutin, masyarakat dapat mendapatkan pemantauan kesehatan secara berkala, mendeteksi penyakit secara dini, serta mendapatkan rekomendasi dan saran dari tenaga medis yang berkompeten. Tes laboratorium seperti tes darah, urin, dan tes gula darah juga dapat memberikan informasi penting tentang kondisi tubuh dan membantu masyarakat dalam mengelola kesehatan mereka dengan lebih baik.\r\n\r\n Puskesmas di Tegalrejo menawarkan fasilitas yang nyaman dan tenaga medis yang terlatih untuk melakukan pemeriksaan kesehatan rutin. Masyarakat diajak untuk tidak menunda-nunda kesehatan dan segera mengambil langkah untuk menjaga kesehatan mereka. Mulailah dengan melakukan pemeriksaan kesehatan rutin di puskesmas terdekat dan jadikan ini sebagai langkah awal menuju gaya hidup yang sehat.Jaga kesehatanmu, jaga masa depanmu! Jadilah proaktif dalam merawat kesehatan dengan melakukan pemeriksaan kesehatan rutin di puskesmas. Mari bersama-sama menjaga kesehatan dan mencegah penyakit melalui langkah-langkah sederhana namun berdampak besar.', '669-Jepretan Layar 2023-07-01 pukul 23.53.14.png', 4, 'Puskesmas Tegalrejo'),
(22, 'Daftar Sekarang dan Dapatkan Perlindungan: Pendaftaran Vaksin COVID-19 Telah Dibuka!', 'Pandemi COVID-19 masih berlangsung, tetapi ada kabar baik bagi kita semua. Pendaftaran vaksin COVID-19 kini telah dibuka untuk semua kelompok usia. Ini adalah kesempatan untuk melindungi diri dan orang-orang terdekat kita dari ancaman virus yang terus menyebar.Dengan vaksin COVID-19, kita memiliki senjata efektif dalam melawan penyebaran virus dan mencegah dampak serius yang dapat ditimbulkannya. Pemerintah telah meluncurkan program vaksinasi yang luas dan siap memberikan vaksin kepada seluruh masyarakat.Melalui pendaftaran vaksin COVID-19, kita dapat mengamankan jadwal vaksinasi bagi diri kita sendiri dan keluarga. Pendaftaran dapat dilakukan secara online melalui platform resmi yang telah disediakan. Pastikan untuk melengkapi informasi yang diperlukan dengan akurat dan lengkap.Vaksin COVID-19 telah melalui uji klinis yang ketat dan telah terbukti aman dan efektif dalam melindungi kita. Vaksinasi adalah langkah penting dalam melindungi kesehatan kita sendiri dan juga berperan dalam melindungi orang lain di sekitar kita, terutama yang rentan terhadap penyakit ini.Mari bergabung dalam gerakan vaksinasi COVID-19! Daftarkan diri kita sekarang dan bersama-sama kita melawan pandemi ini. Jadikan langkah ini sebagai investasi dalam kesehatan kita dan masa depan yang lebih baik. Ayo, jangan ragu lagi! Segera daftarkan diri dan keluarga untuk mendapatkan vaksin COVID-19. Bersama-sama, kita dapat membangun perlindungan komunitas yang kuat dan mengakhiri pandemi ini. Bersama-sama, kita bisa mengembalikan kehidupan normal dan menjaga kesehatan kita serta orang-orang tercinta.Daftar sekarang dan dapatkan perlindungan yang diperlukan!', '38-Jepretan Layar 2023-07-01 pukul 23.54.00.png', 2, 'Puskesmas Gondomanan'),
(23, 'Klinik Imunisasi Anak Sehat: Lindungi Masa Depan dengan Vaksinasi yang Penting!', 'Memastikan kesehatan dan keselamatan anak-anak adalah prioritas utama bagi setiap orang tua. Dalam upaya untuk melindungi mereka dari penyakit berbahaya, Klinik Imunisasi Anak Sehat mengajak semua orang tua untuk segera mendaftarkan anak-anak mereka untuk mendapatkan vaksinasi yang penting.Vaksinasi telah terbukti menjadi langkah efektif dalam mencegah penyebaran penyakit menular dan melindungi anak-anak dari ancaman serius. Klinik Imunisasi Anak Sehat menyediakan fasilitas yang aman dan profesional, dengan tenaga medis yang berpengalaman dalam memberikan vaksinasi kepada anak-anak.Dengan memberikan vaksin yang direkomendasikan secara tepat waktu, kita dapat membantu melindungi anak-anak dari penyakit yang dapat menyebabkan komplikasi serius, seperti polio, difteri, tetanus, batuk rejan, hepatitis B, campak, dan banyak lagi.Klinik Imunisasi Anak Sehat menyediakan jadwal vaksinasi yang teratur, termasuk vaksinasi yang direkomendasikan oleh otoritas kesehatan setempat. Masyarakat diajak untuk tidak melewatkan kesempatan ini dan segera mendaftarkan anak-anak mereka untuk mendapatkan vaksinasi yang diperlukan.Jangan biarkan risiko penyakit mengintai anak-anak kita. Bersama-sama, mari kita lindungi masa depan mereka dengan menjaga kekebalan tubuh melalui vaksinasi. Segera kunjungi Klinik Imunisasi Anak Sehat terdekat dan pastikan anak-anak kita mendapatkan perlindungan yang mereka butuhkan.', '362-Jepretan Layar 2023-07-01 pukul 23.53.34.png', 1, 'Puskesmas Gedongtengen'),
(24, 'Layanan Kesehatan: Ayo Segera Cek Kesehatan tubuh Kamu di Puskesmas', 'Ayo, warga yang terhormat! Mari manfaatkan pelayanan kesehatan yang disediakan di puskesmas untuk menjaga kesehatan kita dan keluarga. Jangan ragu untuk datang dan melakukan pemeriksaan kesehatan secara rutin, termasuk pemeriksaan kehamilan bagi ibu hamil. Di sini, Anda akan mendapatkan perawatan yang komprehensif selama kehamilan, persalinan, dan masa pasca kelahiran yang berkualitas.\r\n\r\nPuskesmas juga menyediakan pelayanan kesehatan lainnya, seperti pemeriksaan umum, imunisasi bagi anak-anak, konsultasi gizi, serta pengobatan bagi berbagai penyakit umum. Tenaga medis yang terlatih dan fasilitas yang memadai akan siap membantu menjaga kesehatan kita.\r\n\r\nIngatlah, menjaga kesehatan adalah investasi terbaik bagi masa depan kita. Mari jadikan pelayanan kesehatan di puskesmas sebagai pilihan utama untuk mendapatkan perawatan yang terjangkau dan berkualitas. Ayo, mari kita semua menjaga kesehatan bersama-sama dan mewujudkan masyarakat yang sehat dan bahagia!', '646-Jepretan Layar 2023-07-01 pukul 23.53.14.png', 3, 'Puskesmas Kotagede 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL,
  `nama_layanan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_layanan`) VALUES
(1, 'Layanan Vaksinasi'),
(2, 'Layanan Imunisasi'),
(3, 'Kesehatan Gizi'),
(4, 'Kesehatan Rutin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `nama_puskesmas` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `url_map` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama_puskesmas`, `tempat`, `url_map`) VALUES
(1, 'Puskesmas Gondomanan', 'Jalan Ledok No.9, Prawirodirjan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55121', 'https://www.google.com/maps/dir//puskesmas+gondomanan'),
(2, 'Puskesmas Tegalrejo', 'Jl. Magelang No.180, Karangwaru, Kec. Tegalrejo, Kota Yogyakarta, Daerah Istimewa Yogyakarta', 'https://www.google.com/maps/dir//Puskesmas+Tegalrejo'),
(3, 'Puskesmas Gedongtengen', 'Jl. Pringgokusuman No.30, Pringgokusuman, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55272', 'https://www.google.com/maps/dir//puskesmas+gedongtengen'),
(4, 'Puskesmas Kotagede 2', 'Jl. Ki Penjawi No.4, Rejowinangun, Kec. Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55172', 'https://www.google.com/maps/dir/Puskesmas+Kotagede+2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_Kelamin` varchar(10) NOT NULL,
  `tnik` varchar(25) NOT NULL,
  `umur` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `puskesmas` varchar(100) NOT NULL,
  `id_layanan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `jenis_Kelamin`, `tnik`, `umur`, `email`, `tgl_daftar`, `puskesmas`, `id_layanan`) VALUES
(2, 'Nando', 'Laki-laki', '14', 23, '23', '2023-07-02', 'Puskesmas Gedongtengen', 4),
(3, 'qw', 'Laki-laki', '12qwq', 12, '12', '2023-07-10', 'Puskesmas Gedongtengen', 3),
(4, 'Reiky Aryanando Pratama', 'Laki-laki', '111', 19, '19', '2023-07-05', 'Puskesmas Gedongtengen', 2),
(5, 'akakk', 'Laki-laki', '122', 14, 'reiky@gmail.com', '2023-06-26', 'Puskesmas Gedongtengen', 1),
(6, 'bisa', 'Laki-laki', '16', 19, 'aa@gm.com', '2023-06-05', 'Puskesmas Gondomanan', 1),
(7, 'ak', 'Laki-laki', '454', 25, 'reiky@gmail.com', '2023-06-13', 'Puskesmas Gondomanan', 2),
(8, 'ak', 'Laki-laki', '454', 27, 'reiky@gmail.com', '2023-06-13', 'Puskesmas Gondomanan', 3),
(9, 'ak', 'Laki-laki', '454', 19, 'reiky@gmail.com', '2023-06-13', 'Puskesmas Gondomanan', 4),
(10, 'ag', 'Laki-laki', '343', 17, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 1),
(11, 'ag', 'Laki-laki', '343', 11, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 2),
(12, 'ag', 'Laki-laki', '343', 13, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 3),
(13, 'ag', 'Laki-laki', '343', 28, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 4),
(14, 'ad', 'Laki-laki', '56', 30, 'reiky@gmail.com', '2023-05-07', 'Puskesmas Tegalrejo', 1),
(15, 'ad', 'Laki-laki', '56', 24, 'reiky@gmail.com', '2023-05-07', 'Puskesmas Tegalrejo', 2),
(16, 'ad', 'Laki-laki', '56', 17, 'reiky@gmail.com', '2023-05-07', 'Puskesmas Tegalrejo', 3),
(17, 'ad', 'Laki-laki', '56', 14, 'reiky@gmail.com', '2023-05-07', 'Puskesmas Tegalrejo', 4),
(18, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(19, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(20, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(21, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(22, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(23, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(24, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(25, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(26, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(27, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(28, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(29, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(30, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(31, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(32, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(33, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(34, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(35, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(36, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(37, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(38, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(39, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(40, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(41, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(42, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(43, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(44, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(45, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(46, 'Reiky', 'Laki-laki', '121', 19, 'reiky@gmail.com', '2022-06-21', 'Puskesmas Gedongtengen', 1),
(144, 'bia', 'Laki-laki', '12', 14, 'reiky@gmail.com', '2023-01-08', 'Puskesmas Kotagede 2', 1),
(145, 'bia', 'Laki-laki', '12', 17, 'reiky@gmail.com', '2023-01-09', 'Puskesmas Kotagede 2', 1),
(146, 'bia', 'Laki-laki', '12', 26, 'reiky@gmail.com', '2023-01-08', 'Puskesmas Kotagede 2', 1),
(147, 'bia', 'Laki-laki', '12', 14, 'reiky@gmail.com', '2023-01-19', 'Puskesmas Kotagede 2', 1),
(148, 'bia', 'Laki-laki', '12', 19, 'reiky@gmail.com', '2023-01-12', 'Puskesmas Kotagede 2', 1),
(149, 'bia', 'Laki-laki', '12', 17, 'reiky@gmail.com', '2023-01-09', 'Puskesmas Kotagede 2', 2),
(150, 'bia', 'Laki-laki', '12', 26, 'reiky@gmail.com', '2023-01-08', 'Puskesmas Kotagede 2', 1),
(151, 'bia', 'Laki-laki', '12', 14, 'reiky@gmail.com', '2023-01-19', 'Puskesmas Kotagede 2', 2),
(152, 'bia', 'Laki-laki', '12', 19, 'reiky@gmail.com', '2023-01-12', 'Puskesmas Kotagede 2', 2),
(153, 'a', 'Laki-laki', '12', 9, 'reiky@gmail.com', '2023-05-16', 'Puskesmas Kotagede 2', 1),
(154, 'a', 'Laki-laki', '12', 16, 'reiky@gmail.com', '2023-05-16', 'Puskesmas Kotagede 2', 1),
(155, 'a', 'Laki-laki', '12', 9, 'reiky@gmail.com', '2023-05-16', 'Puskesmas Kotagede 2', 1),
(156, 'a', 'Laki-laki', '12', 18, 'reiky@gmail.com', '2023-05-16', 'Puskesmas Kotagede 2', 1),
(157, 'a', 'Laki-laki', '12', 27, 'reiky@gmail.com', '2023-05-16', 'Puskesmas Kotagede 2', 1),
(158, 'a', 'Laki-laki', '12', 9, 'reiky@gmail.com', '2023-05-16', 'Puskesmas Kotagede 2', 1),
(159, 'a', 'Laki-laki', '12', 9, 'reiky@gmail.com', '2023-05-16', 'Puskesmas Kotagede 2', 1),
(160, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-06-18', 'Puskesmas Kotagede 2', 3),
(161, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-06-18', 'Puskesmas Kotagede 2', 3),
(162, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-06-18', 'Puskesmas Kotagede 2', 3),
(163, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-06-18', 'Puskesmas Kotagede 2', 3),
(164, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-06-18', 'Puskesmas Kotagede 2', 3),
(165, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(166, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(167, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(168, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(169, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(170, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(171, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(172, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(173, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(174, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(175, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(176, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(177, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(178, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(179, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 4),
(180, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 4),
(181, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 4),
(182, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 4),
(183, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 4),
(184, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 4),
(185, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-02-18', 'Puskesmas Kotagede 2', 4),
(186, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-02-18', 'Puskesmas Kotagede 2', 4),
(187, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-02-18', 'Puskesmas Kotagede 2', 4),
(188, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-02-18', 'Puskesmas Kotagede 2', 4),
(189, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(190, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(204, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(205, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(206, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(207, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(208, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(209, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(210, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(211, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(212, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(213, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(214, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(216, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(217, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(218, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(219, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(221, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(222, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(223, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(224, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(225, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-02-18', 'Puskesmas Kotagede 2', 1),
(226, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-02-18', 'Puskesmas Kotagede 2', 1),
(227, 'a', 'Laki-laki', '1221', 13, 'reiky@gmail.com', '2023-02-18', 'Puskesmas Kotagede 2', 1),
(228, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-02-18', 'Puskesmas Kotagede 2', 1),
(229, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(230, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 1),
(231, 'a', 'Laki-laki', '1221', 13, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 2),
(232, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 4),
(233, 'a', 'Laki-laki', '1221', 15, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 1),
(234, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-06-18', 'Puskesmas Kotagede 2', 2),
(235, 'a', 'Laki-laki', '1221', 26, 'reiky@gmail.com', '2023-06-18', 'Puskesmas Kotagede 2', 4),
(236, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-06-18', 'Puskesmas Kotagede 2', 3),
(237, 'a', 'Laki-laki', '1221', 27, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 4),
(238, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-01-18', 'Puskesmas Kotagede 2', 2),
(239, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 3),
(240, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-07-18', 'Puskesmas Kotagede 2', 3),
(241, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 3),
(242, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-01-18', 'Puskesmas Kotagede 2', 2),
(243, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-04-18', 'Puskesmas Kotagede 2', 3),
(244, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 1),
(245, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 1),
(246, 'a', 'Laki-laki', '1221', 8, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 1),
(247, 'a', 'Laki-laki', '1221', 16, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 1),
(248, 'a', 'Laki-laki', '1221', 28, 'reiky@gmail.com', '2023-05-18', 'Puskesmas Kotagede 2', 3),
(249, 'a', 'Laki-laki', '1221', 11, 'reiky@gmail.com', '2023-03-18', 'Puskesmas Kotagede 2', 3),
(250, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(251, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(252, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(253, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(254, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(255, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(256, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(257, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(258, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(259, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(260, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(261, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(262, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(263, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(264, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(265, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(266, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(267, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(268, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(269, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(270, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(271, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(272, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(273, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(274, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(275, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(276, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(277, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(278, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(279, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(280, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(281, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(282, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(283, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(284, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(285, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(286, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(287, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(288, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(289, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(290, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(291, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(292, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(293, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(294, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(295, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(296, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(297, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(298, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(299, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(300, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(301, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(302, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(303, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(304, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(305, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(306, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(307, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(308, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(309, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(310, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(311, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(312, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(313, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(314, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(315, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(316, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(317, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(318, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(319, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(320, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(321, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(322, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(323, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(324, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(325, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(326, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(327, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(328, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(329, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(330, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(331, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(332, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(333, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(334, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(335, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(336, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(337, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(338, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(339, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(340, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(341, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(342, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(343, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(344, 'aa', 'Laki-laki', '1221', 21, 'reiky@gmail.com', '2022-07-13', 'Puskesmas Gedongtengen', 3),
(345, 'a', 'Laki-laki', '11', 18, 'as@gm.com', '2023-07-10', 'Puskesmas Kotagede 2', 3),
(346, 'Reiky Aryanando Pratama', 'Laki-laki', '12', 20, 'reiky@gmail.com', '2023-07-10', 'Puskesmas Gondomanan', 2),
(347, 'Paijo', 'Laki-laki', '0302137012940', 30, 'paijotomuch@gmail.com', '2023-07-04', 'Puskesmas Gondomanan', 2),
(348, 'Paijo', 'Laki-laki', '90713087392130', 35, 'paijoloyoloyo@gmail.com', '2023-07-05', 'Puskesmas Tegalrejo', 4),
(349, 'paijo', 'Laki-laki', '8909808087', 25, 'paijo@gmail.com', '2023-01-05', 'Puskesmas Gondomanan', 2),
(350, 'max', 'Laki-laki', '097909799067', 21, 'maxpro@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(351, 'Isabela', 'Perempuan', '087867866890', 21, 'isabel@gmail.com', '2023-01-15', 'Puskesmas Gondomanan', 1),
(352, 'Gordon', 'Laki-laki', '097097097394', 27, 'gordon@gmail.com', '2023-07-20', 'Puskesmas Gondomanan', 2),
(353, 'Febri Ansyah', 'Laki-laki', '0970970686832', 20, 'febriansyah@gmail.com', '2023-02-10', 'Puskesmas Gondomanan', 3),
(354, 'Sofia', 'Perempuan', '00896976965', 25, 'fiasof@gmail.com', '2023-02-15', 'Puskesmas Gondomanan', 4),
(355, 'Alexsio', 'Laki-laki', '907070749012', 20, 'alex@gmail.com', '2023-01-09', 'Puskesmas Gondomanan', 2),
(356, 'Torrent', 'Laki-laki', '9068568569670', 30, 'tobanga@gmail.com', '2023-01-10', 'Puskesmas Gondomanan', 2),
(357, 'Thomas', 'Laki-laki', '097907352213', 23, 'leopard@gmail.com', '2023-01-20', 'Puskesmas Gondomanan', 2),
(358, 'Yondu', 'Laki-laki', '903097507341', 30, 'yandaw@gmail.com', '2023-01-30', 'Puskesmas Gondomanan', 2),
(359, 'Liam Willams', 'Laki-laki', '903237522084', 21, 'liam@gmail.com', '2022-12-15', 'Puskesmas Gondomanan', 4),
(360, 'Hanasana', 'Perempuan', '09705734752', 22, 'hana@gmail.com', '2022-11-15', 'Puskesmas Gondomanan', 4),
(361, 'Alan Faqot', 'Laki-laki', '094057437543', 20, 'alan@gmail.com', '2023-02-01', 'Puskesmas Gondomanan', 2),
(362, 'Maul', 'Laki-laki', '90732364812', 20, 'ulul13@gmail.com', '2023-02-01', 'Puskesmas Gondomanan', 2),
(363, 'Angga', 'Laki-laki', '05042375094', 20, 'ancol@gmail.com', '2023-07-01', 'Puskesmas Gondomanan', 2),
(364, 'Vahri', 'Laki-laki', '94573452103', 20, 'vhari@gmail.com', '2023-02-01', 'Puskesmas Gondomanan', 2),
(365, 'Luqman', 'Laki-laki', '9045035724213', 20, 'uman@gmail.com', '2023-02-01', 'Puskesmas Gondomanan', 2),
(366, 'Wildan', 'Laki-laki', '7430534570321', 21, 'williams@gmail.com', '2023-02-01', 'Puskesmas Gondomanan', 2),
(367, 'Wisnu', 'Laki-laki', '09735023704', 20, 'kepins@gmail.com', '2023-02-01', 'Puskesmas Gondomanan', 2),
(368, 'Sutrisno', 'Laki-laki', '06969754698', 30, 'triso@gmail.com', '2023-03-05', 'Puskesmas Gondomanan', 4),
(369, 'Eriana', 'Perempuan', '06959798096', 24, 'erii@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 2),
(370, 'Gordon', 'Laki-laki', '070606879869', 20, 'gordon@gmail.com', '2023-01-04', 'Puskesmas Gedongtengen', 2),
(371, 'Gordon', 'Laki-laki', '079769855789', 23, 'gordon@gmail.com', '2023-02-07', 'Puskesmas Gedongtengen', 2),
(372, 'Runia', 'Perempuan', '07077069878', 20, 'runia@gmail.com', '2023-01-01', 'Puskesmas Tegalrejo', 2),
(373, 'Yoloman', 'Laki-laki', '07006870906', 20, 'yolo@gmail.com', '2023-01-02', 'Puskesmas Gondomanan', 1),
(374, 'Runiah', 'Perempuan', '0807069086', 20, 'runayah@gmail.com', '2023-02-06', 'Puskesmas Gondomanan', 3),
(375, 'Gordon', 'Laki-laki', '0707096060870', 22, 'Gordon@gmail.com', '2023-01-02', 'Puskesmas Gondomanan', 1),
(376, 'Tio Marang', 'Laki-laki', '070709497214', 25, 'marangtio@gmail.com', '2023-01-05', 'Puskesmas Gondomanan', 1),
(377, 'Luqman', 'Laki-laki', '0732749702374', 20, 'uman@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(378, 'Angga', 'Laki-laki', '0798362395', 20, 'ancolgas@gmail.com', '2023-01-05', 'Puskesmas Gondomanan', 1),
(379, 'wawan', 'Laki-laki', '0402734609032472', 20, 'wawanyou@gmail.com', '2023-01-05', 'Puskesmas Gondomanan', 1),
(380, 'Gordonman', 'Laki-laki', '040937409231', 25, 'gordon@gmail.com', '2023-01-01', 'Puskesmas Gedongtengen', 1),
(381, 'Wildan', 'Laki-laki', '90709750394', 20, 'williams@gmail.com', '2023-01-05', 'Puskesmas Gondomanan', 1),
(382, 'Maulana', 'Laki-laki', '04850476092', 20, 'ulmaul@gmail.com', '2023-01-05', 'Puskesmas Gondomanan', 1),
(383, 'Juno', 'Laki-laki', '07309430023', 20, 'junior@gmail.com', '2023-01-05', 'Puskesmas Gondomanan', 1),
(384, 'Emanuel', 'Laki-laki', '0975034750', 26, 'manuel@gmail.com', '2023-02-10', 'Puskesmas Gondomanan', 1),
(385, 'Frank', 'Laki-laki', '0759032570923', 35, 'frankstain@gmail.com', '2023-01-10', 'Puskesmas Gondomanan', 4),
(386, 'Gordon', 'Laki-laki', '08450435970', 20, 'gordon@gmail.com', '2023-06-05', 'Puskesmas Gedongtengen', 4),
(387, 'Rony', 'Laki-laki', '08903209324532', 19, 'ronyron@gmail.com', '2023-04-05', 'Puskesmas Gondomanan', 3),
(388, 'Abhirama', 'Laki-laki', '0487503970355', 20, 'abhiramen@gmail.com', '2023-02-01', 'Puskesmas Gondomanan', 1),
(389, 'Alexander', 'Laki-laki', '0639045723592', 20, 'alexandrea@gmail.com', '2023-01-10', 'Puskesmas Gondomanan', 1),
(390, 'Heidon', 'Laki-laki', '0721402142002', 50, 'heidonnis@gmail.com', '2023-02-15', 'Puskesmas Gondomanan', 1),
(391, 'Yulia', 'Perempuan', '024710924141', 21, 'yuliana@gmail.com', '2023-03-15', 'Puskesmas Gondomanan', 3),
(392, 'Riana', 'Perempuan', '094701924921', 22, 'riana01@gmail.com', '2023-03-15', 'Puskesmas Gondomanan', 3),
(393, 'Frank', 'Laki-laki', '0202139020023', 22, 'frankidong@gmail.com', '2023-04-15', 'Puskesmas Gondomanan', 4),
(394, 'Qory', 'Laki-laki', '09348093750178', 20, 'rikoqry@gmail.com', '2023-02-26', 'Puskesmas Gondomanan', 4),
(395, 'Ernano', 'Laki-laki', '0395723951213', 30, 'ernarno@gmail.com', '2023-05-15', 'Puskesmas Gondomanan', 4),
(397, 'Drio', 'Laki-laki', '9045375029512', 21, 'tobanga@gmail.com', '2023-03-15', 'Puskesmas Gondomanan', 4),
(398, 'James', 'Laki-laki', '0975092413480', 20, 'enjoymamen@gmail.com', '2023-03-25', 'Puskesmas Gondomanan', 4),
(399, 'Zopiana', 'Perempuan', '03740935023', 20, 'zopiasmile@gmail.com', '2023-01-05', 'Puskesmas Gondomanan', 4),
(400, 'Elena', 'Perempuan', '057203409152', 21, 'elenamis@gmail.com', '2023-01-03', 'Puskesmas Gondomanan', 4),
(401, 'Emira', 'Perempuan', '037013561034124', 21, 'emrialov@gmail.com', '2023-01-02', 'Puskesmas Gondomanan', 4),
(402, 'Aamira', 'Perempuan', '05702560241415', 20, 'arimaamira@gmail.com', '2023-01-07', 'Puskesmas Gondomanan', 3),
(403, 'Olimo', 'Laki-laki', '07032570223', 21, 'olmilo@gmail.com', '2023-01-15', 'Puskesmas Gondomanan', 3),
(404, 'yuliantina', 'Perempuan', '027920174014167', 22, 'yuliantia@gmail.com', '2023-05-20', 'Puskesmas Gondomanan', 3),
(405, 'Yolana', 'Perempuan', '012471920701', 21, 'yolana01@gmail.com', '2023-05-10', 'Puskesmas Gondomanan', 3),
(406, 'Nicolas', 'Laki-laki', '017409127423', 21, 'nicolanol@gmail.com', '2023-06-10', 'Puskesmas Gondomanan', 4),
(407, 'Bimo', 'Laki-laki', '0247102741024', 21, 'bimonanya@gmail.com', '2023-06-01', 'Puskesmas Gondomanan', 4),
(408, 'Bagas', 'Laki-laki', '0475397502526', 15, 'bagas12345@gmail.com', '2023-06-15', 'Puskesmas Gondomanan', 4),
(409, 'Teresar', 'Laki-laki', '0948329052', 24, 'tesar@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(410, 'John', 'Laki-laki', '092210419245', 26, 'jonanan@gmail.com', '2023-01-02', 'Puskesmas Gondomanan', 1),
(411, 'Iwan', 'Laki-laki', '09502750252362', 18, 'yttaaja@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(412, 'Agus', 'Laki-laki', '092375923052', 28, 'agusaja@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(413, 'Agung', 'Laki-laki', '02375092305421', 21, 'gungagung@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(414, 'Hanna', 'Perempuan', '09272184124', 22, 'hana@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(415, 'Cliena', 'Perempuan', '021472109124', 20, 'clina110@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(416, 'Tiarani', 'Perempuan', '092021747210421', 21, 'tiaraaja@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(417, 'Lopez', 'Laki-laki', '024721970135135', 30, 'lopesanza@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(418, 'Mia Montana', 'Perempuan', '01272917490214', 23, 'montanamia@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(419, 'Sureza', 'Laki-laki', '02472190750151', 20, 'rezarus@gmail.com', '2023-01-01', 'Puskesmas Gondomanan', 1),
(420, 'Jonna', 'Perempuan', '0327493250235', 20, 'jonnnali@gmail.com', '2023-01-02', 'Puskesmas Gondomanan', 1),
(421, 'Ronny', 'Laki-laki', '0937490325235', 19, 'ronnyyy@gmail.com', '2023-01-02', 'Puskesmas Gondomanan', 1),
(423, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-04-04', 'Puskesmas Tegalrejo', 2),
(424, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 2),
(425, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(426, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 4),
(427, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 3),
(428, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 2),
(429, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(430, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 1),
(626, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-03-04', 'Puskesmas Tegalrejo', 3),
(627, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(628, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 3),
(629, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 1),
(630, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 2),
(631, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(632, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(633, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 2),
(634, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-04-04', 'Puskesmas Tegalrejo', 2),
(635, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 2),
(636, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(637, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 4),
(638, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 3),
(639, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 2),
(640, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(641, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 1),
(642, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-03-04', 'Puskesmas Tegalrejo', 3),
(643, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(644, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 3),
(645, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 1),
(646, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 2),
(647, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(648, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(649, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 2),
(650, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-04-04', 'Puskesmas Tegalrejo', 2),
(651, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 2),
(652, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(653, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 4),
(654, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 3),
(655, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 2),
(656, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(657, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 1),
(658, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-03-04', 'Puskesmas Tegalrejo', 3),
(659, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(660, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 3),
(661, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 1),
(662, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 2),
(663, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(664, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(665, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 2),
(666, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-04-04', 'Puskesmas Tegalrejo', 2),
(667, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 2),
(668, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(669, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 4),
(670, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 3),
(671, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 2),
(672, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(673, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 1),
(674, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-03-04', 'Puskesmas Tegalrejo', 3),
(675, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 2),
(676, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 3),
(677, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 1),
(678, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 2),
(679, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(680, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(681, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 2),
(682, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-04-04', 'Puskesmas Tegalrejo', 2),
(683, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 2),
(685, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 4),
(686, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 3),
(689, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 1),
(690, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(691, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 3),
(692, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-04-04', 'Puskesmas Tegalrejo', 3),
(693, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 2),
(694, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-02-04', 'Puskesmas Tegalrejo', 3),
(695, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 3),
(696, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 3),
(699, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 1),
(700, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-03-04', 'Puskesmas Tegalrejo', 3),
(702, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-06-04', 'Puskesmas Tegalrejo', 3),
(703, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 1),
(705, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(706, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 4),
(711, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Tegalrejo', 3),
(712, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-01-04', 'Puskesmas Tegalrejo', 3),
(715, 'aa', 'Laki-laki', '122', 20, 'reiky@gmail.com', '2023-05-04', 'Puskesmas Tegalrejo', 1),
(1107, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1108, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1109, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1110, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1111, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1112, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1113, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1114, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1115, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1116, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1117, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1118, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1119, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1120, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1121, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1122, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1123, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1124, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1125, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1126, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1127, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1128, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1129, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1130, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1131, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1132, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1133, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1134, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1135, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1136, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1137, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1138, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1139, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1140, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1141, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1142, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1143, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1144, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1145, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1146, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1147, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1148, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1149, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1150, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1151, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1152, 'aa', 'Laki-laki', '1221', 17, 'reiky@gmail.com', '2022-02-08', 'Puskesmas Gedongtengen', 4),
(1153, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1154, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1155, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1156, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1157, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1158, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1159, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1160, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1161, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1162, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1163, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1164, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1165, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1166, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1167, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1168, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1169, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1170, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1171, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1172, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1173, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1174, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1175, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1176, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1177, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1178, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1179, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1180, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1181, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1182, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1183, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1184, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1185, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1186, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1187, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1188, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1189, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1190, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1191, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1192, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1193, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1194, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1195, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1196, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1197, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1198, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1199, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1200, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1201, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1202, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1203, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1204, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1205, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1206, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1207, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1208, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1209, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1210, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1211, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1212, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1213, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1214, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1215, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1216, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1217, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1218, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1219, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1220, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1);
INSERT INTO `pasien` (`id`, `nama`, `jenis_Kelamin`, `tnik`, `umur`, `email`, `tgl_daftar`, `puskesmas`, `id_layanan`) VALUES
(1221, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1222, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1223, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1224, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1225, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1226, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1227, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1228, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1229, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1230, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1231, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1232, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1233, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1234, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1235, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1236, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1237, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1238, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1239, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1240, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1241, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1242, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1243, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1244, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1245, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1246, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1247, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1248, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1249, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1250, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1251, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1252, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1253, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1254, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1255, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1256, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1257, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1258, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1259, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1260, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1261, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1262, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1263, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1264, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1265, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1266, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1267, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1268, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1269, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1270, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1271, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1272, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1273, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1274, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1275, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1276, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1277, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1278, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1279, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1280, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1281, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1282, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1283, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1284, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1285, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1286, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1287, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1288, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1289, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1290, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1291, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1292, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1293, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1294, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1295, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1296, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1297, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1298, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1299, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1300, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1301, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1302, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1303, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1304, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1305, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1306, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1307, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1308, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1309, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1310, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1311, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1312, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1313, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1314, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1315, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1316, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1317, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1318, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1319, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1320, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1321, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1322, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1323, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1324, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1325, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1326, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1327, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1328, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1329, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1330, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1331, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1332, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1333, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1334, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1335, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1336, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1337, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1338, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1339, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1340, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1341, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1342, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1343, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1344, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1345, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1346, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1347, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1348, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1349, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1350, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1351, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1352, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1353, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1354, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1355, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1356, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1357, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1358, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1359, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1360, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1361, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1362, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1363, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1364, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1365, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1366, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1367, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1368, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1369, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1370, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1371, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1372, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1373, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1374, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1375, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1376, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1377, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1378, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1379, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1380, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1381, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1382, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1383, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1384, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1385, 'ak', 'Laki-laki', '122', 19, 'reiky@gmail.com', '2022-02-15', 'Puskesmas Gedongtengen', 1),
(1510, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 1),
(1511, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 2),
(1512, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 2),
(1513, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 2),
(1514, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 2),
(1515, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 2),
(1516, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 2),
(1517, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-07-06', 'Puskesmas Gedongtengen', 2),
(1518, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 2),
(1519, 'aa', 'laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 2),
(1520, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 4),
(1521, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1522, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 4),
(1523, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1524, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1525, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 4),
(1526, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1527, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 4),
(1528, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 4),
(1529, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 4),
(1530, 'aa', 'laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1531, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 4),
(1532, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 4),
(1533, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1534, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1535, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1536, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 4),
(1537, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1538, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1539, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1540, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1541, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1542, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1543, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1544, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1545, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 4),
(1546, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1547, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 4),
(1548, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-07-06', 'Puskesmas Gedongtengen', 4),
(1549, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-07-06', 'Puskesmas Gedongtengen', 4),
(1550, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-07-06', 'Puskesmas Gedongtengen', 4),
(1551, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 4),
(1552, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 4),
(1553, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 4),
(1554, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 1),
(1555, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 1),
(1556, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 1),
(1557, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 1),
(1558, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 1),
(1559, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 1),
(1560, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 2),
(1561, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 2),
(1562, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 3),
(1563, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 3),
(1564, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-05-06', 'Puskesmas Gedongtengen', 3),
(1565, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-07-06', 'Puskesmas Gedongtengen', 3),
(1566, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-07-06', 'Puskesmas Gedongtengen', 3),
(1567, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 3),
(1568, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 3),
(1569, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 3),
(1570, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-04-06', 'Puskesmas Gedongtengen', 3),
(1571, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-05-06', 'Puskesmas Gedongtengen', 3),
(1572, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-03-06', 'Puskesmas Gedongtengen', 3),
(1573, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 3),
(1574, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 3),
(1575, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-02-06', 'Puskesmas Gedongtengen', 3),
(1576, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1577, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1578, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-01-06', 'Puskesmas Gedongtengen', 4),
(1579, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-07-06', 'Puskesmas Gedongtengen', 3),
(1580, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-07-06', 'Puskesmas Gedongtengen', 3),
(1581, 'aa', 'Laki-laki', '1221', 18, 'reiky@gmail.com', '2023-06-06', 'Puskesmas Gedongtengen', 3),
(1582, 'Reiky Aryanando Pratama', 'Laki-laki', '11', 20, 'reiky@gmail.com', '2023-07-04', 'Puskesmas Gedongtengen', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `puskesmas`
--

CREATE TABLE `puskesmas` (
  `id` int(11) NOT NULL,
  `nama_puskesmas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `puskesmas`
--

INSERT INTO `puskesmas` (`id`, `nama_puskesmas`) VALUES
(190, 'Puskesmas Gedongtengen'),
(191, 'Puskesmas Gondomanan'),
(193, 'Puskesmas Kotagede 2'),
(192, 'Puskesmas Tegalrejo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saran`
--

CREATE TABLE `saran` (
  `id` int(11) NOT NULL,
  `tkomentar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `saran`
--

INSERT INTO `saran` (`id`, `tkomentar`) VALUES
(22, 'Sudah bagus mas'),
(24, 'Pewarnaannya sedikit kurang menarik'),
(25, 'Mantap mas'),
(26, 'kurang bagus');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puskesmas` (`puskesmas`),
  ADD KEY `layanan` (`layanan`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lokasi_jadwal` (`nama_puskesmas`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_layanan` (`id_layanan`),
  ADD KEY `puskesmas` (`puskesmas`);

--
-- Indeks untuk tabel `puskesmas`
--
ALTER TABLE `puskesmas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_puskesmas` (`nama_puskesmas`);

--
-- Indeks untuk tabel `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `konten`
--
ALTER TABLE `konten`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1583;

--
-- AUTO_INCREMENT untuk tabel `puskesmas`
--
ALTER TABLE `puskesmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `konten`
--
ALTER TABLE `konten`
  ADD CONSTRAINT `konten_ibfk_2` FOREIGN KEY (`puskesmas`) REFERENCES `puskesmas` (`nama_puskesmas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kontenlayanan` FOREIGN KEY (`layanan`) REFERENCES `layanan` (`id_layanan`);

--
-- Ketidakleluasaan untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD CONSTRAINT `lokasi_ibfk_1` FOREIGN KEY (`nama_puskesmas`) REFERENCES `puskesmas` (`nama_puskesmas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pasien_ibfk_2` FOREIGN KEY (`puskesmas`) REFERENCES `puskesmas` (`nama_puskesmas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
