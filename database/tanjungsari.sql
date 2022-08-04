-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 30, 2022 at 11:15 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanjungsari`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak_penjual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `gambar`, `deskripsi`, `kontak_penjual`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Makanan Opak', 'uploads/produk/1658827277opak.jpg', '<ul>\r\n	<li>Kondisi:&nbsp;Baru</li>\r\n	<li>Berat Satuan:&nbsp;380 g</li>\r\n	<li>Kategori: makanan</li>\r\n</ul>\r\n\r\n<p>Makanan khas Tasikmalaya yang bahan dasarnya beras ketan dan memiliki rasa dan tekstur yang gurih.<br />\r\n<br />\r\nPenting*<br />\r\n<br />\r\nMohon agar pembeli membaca informasi yang tertera terlebih dahulu sebelum membeli produk Bung Boe Snack:<br />\r\n<br />\r\n- Netto: 180 gram<br />\r\n- Packaging: 200 gram<br />\r\n- Free bubble wrap, kardus, packaging paper, plastik.<br />\r\n<br />\r\nSebagai Informasi :<br />\r\n<br />\r\nUntuk melindungi makanan agar tidak mudah hancur dari saat pengiriman hingga sampai ke pembeli, kami sangat memperhatikan keutuhan produk agar dapat diterima dengan baik dan tidak rusak, hal tersebut dikarenakan hampir seluruh produk yang kami jual mudah remuk.<br />\r\n<br />\r\nOleh karena itu , kami menggunakan beberapa lapis pelindung (Packaging) agar produk yang kami kirim dapat meminimilasir kerusakan, dan agar dapat sampai kepada pembeli dengan aman.<br />\r\n<br />\r\n*Alert*<br />\r\nKeluhan / komplain tidak akan kami terima apabila tidak bersertakan video unboxing!<br />\r\n&nbsp;</p>', '082118418130', 10000, '2022-07-18 04:27:18', '2022-07-26 02:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `posts_id`, `parent_id`, `username`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 'Test', '1903010074@unper.ac.id', 'Test Komentar', '2022-07-22 19:58:41', '2022-07-22 19:58:41'),
(2, 3, 1, 'oi', 'oi@gmail.com', 'oi', '2022-07-22 20:03:11', '2022-07-22 20:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `lembagas`
--

CREATE TABLE `lembagas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lembagas`
--

INSERT INTO `lembagas` (`id`, `nama`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Aparat Desa', 'Aparat Desa', 'uploads/bagan/1658594487PERANGKAT DESA TANJUNGSARI.png', '2022-07-19 11:58:31', NULL),
(2, 'Badan Permusyawaratan Desa (BPD)', 'BPD', 'uploads/bagan/1658594511BPD TANJUNGSARI.png', '2022-07-18 11:36:37', NULL),
(3, 'Lembaga Pemberdayaan Masyarakat (LPM)', 'LPM', 'uploads/bagan/1658643128cooming soon.png', '2022-07-18 11:58:36', NULL),
(4, 'Pembinaan Kesejahteraan Keluarga (PKK)', 'PKK', 'uploads/bagan/1658594531PKK TANJUNGSARI.png', NULL, NULL),
(5, 'Karang Taruna', 'KARANG TARUNA', 'uploads/bagan/1658594561KARANG TARUNA TANJUNGSARI.png', '2022-07-18 12:00:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_07_06_135412_create_lembagas_table', 1),
(4, '2020_07_08_044043_create_posts_table', 1),
(5, '2020_07_12_151656_create_transparansi_table', 1),
(6, '2020_07_13_062205_create_comments_table', 1),
(7, '2020_11_06_124507_create_services_table', 1),
(8, '2020_11_07_130434_create_barangs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `content`, `thumbnail`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Hancur di 2022, Juara Olimpiade Ganda Putra Mau Belajar dari Indonesia', '<p>Jakarta, CNN Indonesia -- Pemain ganda putra Taiwan,&nbsp;Lee Yang yang berduet dengan Wang Chi Lin, mengungkapkan keinginan belajar banyak dari Indonesia setelah gagal di Taiwan Open 2022&nbsp;dan sederet kejuaraan pada tahun ini.<br />\r\nLee/Wang takluk dari wakil Malaysia, Man Wei Chong/Tee Kai Wun, 18-21, 21-10, 18-21 dalam partai final Taipei Open 2022. Meski gagal juara, keberhasilan menembus partai puncak adalah pencapaian tertinggi Lee/Wang selama tampil dalam turnamen BWF 2022.<br />\r\n<br />\r\nSeusai kegagalan tersebut Lee mengunggah foto beserta keterangan di media sosial Instagram. Intinya atlet 26 tahun ini menyemangati diri sendiri untuk terus berlatih dan meraih prestasi.<br />\r\n&nbsp;</p>', 'uploads/posts/1658826912olympics-2020-bdmm-doubles-fnl-000100_169.jpeg', 'hancur-di-2022-juara-olimpiade-ganda-putra-mau-belajar-dari-indonesia', '2022-07-18 04:28:27', '2022-07-26 02:15:12'),
(2, 'Kasus Bullying Anak Setubuhi Kucing di Tasikmalaya Naik ke Penyidikan', '<p>Jakarta, CNN Indonesia -- Polda Jawa Barat&nbsp;menyatakan kasus perundungan atau bullying terhadap bocah lelaki 11 tahun di Tasikmalaya naik ke tahap penyidikan. Meski pelakunya masih di bawah umur, tetapi kepolisian tetap melanjutkan pemeriksaan karena ada aduan.<br />\r\nKepala Bidang Humas Polda Jabar Kombes Ibrahim Tompo mengatakan, penyidik Polresta Tasikmalaya yang menangani kasus ini menaikkan status jadi penyidikan berdasarkan adanya unsur dugaan pidana. Hal itu diketahui usai penyidik melakukan gelar perkara.<br />\r\n<br />\r\n&quot;Di dalamnya ditemukan adanya kondisi bully, memang karena ada keadaan di luar kendali korban yang ditemukan. Sehingga bisa disimpulkan memang bahwa terjadi kondisi perundungan,&quot; ucap Ibrahim, Senin (25/7).<br />\r\n<br />\r\nPenyidik menguraikan ada tiga anak yang diduga terlibat dalam kasus perundungan tersebut. Sejauh ini belum ada dugaan terkait keterlibatan orang dewasa dalam kasus tersebut.<br />\r\n<br />\r\n&nbsp;</p>', 'uploads/posts/1658826788ilustrasi-perundungan-ilustrasi-bullying-ilustrasi-bully_169.jpeg', 'kasus-bullying-anak-setubuhi-kucing-di-tasikmalaya-naik-ke-penyidikan', '2022-07-20 03:46:52', '2022-07-26 02:13:08'),
(3, 'Kehadiran Bobotoh Saat Tandang, Buat Beckham Termotivasi', '<p>Fans Persib Bandung bobotoh akan membirukan Stadion Wibawa Mukti, Cikarang, Bekasi dalam laga pembuka Liga 1 2022-2023, Minggu (24/7/2022) malam. Ini akan jadi tambahan semangat bagi pemain Persib yang memainkan laga berstatus tandang.</p>\r\n\r\n<p>Gelandang Persib, Beckham Putra berusaha memaksimalkan kehadiran bobotoh yang datang langsung ke stadion sebagai motivasi. Persib tidak boleh kalah di laga pertama karena itu merupakan penentu langkah selanjutnya menuju pekan kedua.</p>\r\n\r\n<p>&ldquo;Tentunya itu jadi motivasi buat kita, kita akan memaksimalkan dengan adanya Bobotoh untuk jadi pemenang di laga itu,&rdquo; ungkap Beckham pada Jumat (22/7/2022).</p>\r\n\r\n<p>Bagi Beckham bobotoh adalah pemain ke-12 dalam setiap permainan Persib. Kedatangan bobotoh justru tidak boleh dijadikan tekanan. Justru ini adalah momen baik mencuri tiga poin pertama di kandang lawan di kompetisi Liga 1 musim ini.</p>\r\n\r\n<p>&ldquo;Menurut Beckham sih tidak ada tekanan justru jadi motivasi buat tim kita karena Bobotoh pemain 12 kita jadi energi positif buat kita,&rdquo; kata Beckham.</p>\r\n\r\n<p>Beckham harap bisa memberikan kontribusi positif untuk klub. Jika beruntung ia ingin menyumbangkan gol untuk Maung Bandung nanti. &ldquo;Kalau cetak gol itu bonus yang penting buat tim,&rdquo; sebutnya.</p>', 'uploads/posts/1658545078foto-persib-bandung-latihan-di-sidolig-2207-beckham-S__24035344.jpg', 'kehadiran-bobotoh-saat-tandang-buat-beckham-termotivasi', '2022-07-22 19:57:58', '2022-07-22 19:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_wa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `nama`, `nik`, `no_wa`, `jenis_surat`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'test layanan', '3207090303000001', '082118418130', 'Surat Keterangan Usaha', 'TEst layanan', '2022-07-18 04:31:52', '2022-07-18 04:31:52'),
(2, 'Ahsan', '31032', '3209320393', 'Surat Keterangan Tidak Mampu', 'oejfoejf', '2022-07-22 02:36:17', '2022-07-22 02:36:17'),
(3, 'ahsan', '1923', '29323', 'Surat Keterangan Tidak Mampu', 'fdfd', '2022-07-22 02:43:56', '2022-07-22 02:43:56'),
(4, 'Fahmy', '32070903030300001', '082118418130', 'Surat Keterangan Kelahiran', 'TEst', '2022-07-22 02:49:57', '2022-07-22 02:49:57'),
(5, 'Lia', '320709030303000001', '081323569955', 'Surat Keterangan Beda Nama', 'Test', '2022-07-22 02:56:37', '2022-07-22 02:56:37'),
(6, 'Test', '30030303', '0828282', 'Surat Keterangan Miskin', 'hai', '2022-07-22 02:57:08', '2022-07-22 02:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `transparansi`
--

CREATE TABLE `transparansi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transparansi`
--

INSERT INTO `transparansi` (`id`, `judul`, `gambar`, `created_at`, `updated_at`) VALUES
(1, '2022', 'uploads/transparansi/1658826284apbdes.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fahmy', 'fahmyfauzii@gmail.com', NULL, '$2y$10$O463hzkYGKP6v2yhPyYFO.cJq890IMq2/qF8lAmlTugHiICBIA0/q', NULL, '2022-07-18 04:22:35', '2022-07-18 04:22:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lembagas`
--
ALTER TABLE `lembagas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transparansi`
--
ALTER TABLE `transparansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lembagas`
--
ALTER TABLE `lembagas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transparansi`
--
ALTER TABLE `transparansi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
