-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2026 at 03:43 PM
-- Server version: 8.4.3
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `id` bigint UNSIGNED NOT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penganut` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id`, `agama`, `penganut`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 100, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Kristen', 30, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'Katolik', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Hindu', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(5, 'Budha', 15, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(6, 'Konghucu', 6, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `anggarans`
--

CREATE TABLE `anggarans` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggarans`
--

INSERT INTO `anggarans` (`id`, `judul`, `slug`, `keterangan`, `gambar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rincian Dana Desa 2024-2026', 'rincian-dana-desa', '<p>Contoh saja</p>', 'img-anggaran//67aaf242796a8.jpeg', 1, '2025-02-11 06:46:26', '2026-06-14 19:51:04'),
(2, 'Rincian 2026', 'rincian-2025', '<p>Contoh Saja</p>', 'img-anggaran//67aaf2a551c24.png', 1, '2025-02-11 06:48:05', '2026-06-14 19:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` bigint UNSIGNED NOT NULL DEFAULT '0',
  `excerpt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_pengumuman` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `judul`, `slug`, `views`, `excerpt`, `isi_pengumuman`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Cek Kesehatan Gratis', 'cek-kesehatan-gratis', 3, 'Dinas Kesehatan Kota Bandung mengadakan Cek Kesehatan Gratis bagi seluruh warga Bandung! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dan mendapatkan konsultasi medis secara grati...', '<p>Dinas Kesehatan Kota Bandung mengadakan <strong>Cek Kesehatan Gratis</strong> bagi seluruh warga Bandung! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dan mendapatkan konsultasi medis secara gratis.</p><p>📅 <strong>Tanggal:</strong> [Isi tanggal kegiatan]<br>🕘 <strong>Waktu:</strong> [Isi waktu kegiatan]<br>📍 <strong>Lokasi:</strong> [Isi lokasi kegiatan]</p><p>🔍 <strong>Layanan yang tersedia:</strong><br>✅ Pemeriksaan tekanan darah<br>✅ Cek gula darah<br>✅ Pemeriksaan kolesterol<br>✅ Konsultasi kesehatan dengan dokter<br>✅ Edukasi pola hidup sehat</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 Warga Kota Bandung (bawa KTP/KK)<br>📌 Datang sesuai jadwal dan tetap menjaga protokol kesehatan</p><p>Jangan lewatkan kesempatan ini! Ajak keluarga dan kerabat untuk bersama-sama menjaga kesehatan.</p><p>📞 <strong>Informasi lebih lanjut:</strong> [Isi kontak atau link resmi]</p><p>Salam sehat,<br><strong>Dinas Kesehatan Kota Bandung</strong></p>', 1, '2025-02-11 06:42:52', '2026-06-23 12:03:28'),
(2, 'PROGRAM BANTUAN DAN PELATIHAN UNTUK UMKM KOTA BANDUNG', 'program-bantuan-dan-pelatihan-untuk-umkm-kota-bandung', 0, 'Pemerintah Kota Bandung melalui Dinas Koperasi dan UMKM mengadakan program bantuan dan pelatihan bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) untuk meningkatkan daya saing dan memperluas p...', '<p>Pemerintah Kota Bandung melalui Dinas Koperasi dan UMKM mengadakan <strong>program bantuan dan pelatihan</strong> bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) untuk meningkatkan daya saing dan memperluas pasar!</p><p>📅 <strong>Tanggal Pendaftaran:</strong> [Isi tanggal]<br>📍 <strong>Lokasi:</strong> [Isi lokasi atau link pendaftaran]</p><p>🔍 <strong>Fasilitas yang diberikan:</strong><br>✅ Bantuan modal usaha<br>✅ Pelatihan digital marketing dan branding<br>✅ Pendampingan legalitas usaha (NIB, PIRT, Halal, dll.)<br>✅ Akses ke marketplace dan jaringan bisnis</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 Pelaku UMKM yang berdomisili di Kota Bandung<br>📌 Memiliki usaha yang sudah berjalan minimal 6 bulan<br>📌 Bersedia mengikuti seluruh rangkaian pelatihan</p><p>📞 <strong>Informasi lebih lanjut:</strong> [Isi kontak atau link resmi]</p><p>Jangan lewatkan kesempatan ini untuk mengembangkan usaha Anda!</p><p>Salam sukses,<br><strong>Dinas Koperasi dan UMKM Kota Bandung</strong></p>', 1, '2025-02-11 06:43:42', '2025-02-11 06:43:42'),
(3, 'LOMBA UMKM INOVATIF KOTA GARUT 2026', 'lomba-umkm-inovatif-kota-garut-2026', 14, 'Pemerintah Kota Garut melalui Dinas Koperasi dan UMKM mengundang para pelaku usaha mikro, kecil, dan menengah (UMKM) untuk mengikuti Lomba UMKM Inovatif 2026! Tunjukkan kreativitas dan inovasi usaha A...', '<p>Pemerintah Kota Garut melalui <strong>Dinas Koperasi dan UMKM</strong> mengundang para pelaku usaha mikro, kecil, dan menengah (UMKM) untuk mengikuti <strong>Lomba UMKM Inovatif 2026</strong>! Tunjukkan kreativitas dan inovasi usaha Anda serta raih hadiah menarik!</p><p>📅 <strong>Pendaftaran:</strong> [Isi tanggal pendaftaran]<br>📅 <strong>Batas Akhir Pendaftaran:</strong> [Isi batas waktu]<br>📍 <strong>Lokasi Acara:</strong> [Isi lokasi acara]</p><p>🔍 <strong>Kategori Lomba:</strong><br>🏆 UMKM Kuliner<br>🏆 UMKM Fashion &amp; Kerajinan<br>🏆 UMKM Teknologi &amp; Jasa</p><p>🎁 <strong>Hadiah:</strong><br>🏅 Juara 1: Rp [Isi nominal] + Sertifikat + Pembinaan Eksklusif<br>🥈 Juara 2: Rp [Isi nominal] + Sertifikat<br>🥉 Juara 3: Rp [Isi nominal] + Sertifikat</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 UMKM berdomisili di Kota Garut<br>📌 Usaha sudah berjalan minimal 6 bulan<br>📌 Mengisi formulir pendaftaran dan mengunggah profil usaha</p><p>📞 <strong>Informasi &amp; Pendaftaran:</strong> [Isi kontak/link pendaftaran]</p><p>Jangan lewatkan kesempatan ini! Tunjukkan inovasi terbaik dan jadilah UMKM unggulan Kota Garut! 🚀</p><p><strong>Dinas Koperasi dan UMKM Kota Garut</strong></p>', 1, '2025-02-11 06:44:26', '2026-06-28 15:07:01'),
(4, 'Halal Bihalal', 'halal-bihalal', 1, 'hahahahaha', '<p>hahahahaha</p>', 1, '2026-06-28 15:08:28', '2026-06-28 15:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint UNSIGNED NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` bigint UNSIGNED NOT NULL DEFAULT '0',
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `gambar`, `judul`, `excerpt`, `slug`, `views`, `body`, `user_id`, `status_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 'img-berita/67aae89f0d739.jpg', 'Usaha Kreatif Kerajinan Anyaman Eceng Gondok Cipeundeuy Bandung Barat Rambah Pasar Mancanegar', 'PIKIRAN RAKYAT - Menjamurnya eceng gondok di Waduk Cirata, Kabupaten Bandung Barat, Jawa Barat, just...', 'usaha-kreatif-kerajinan-anyaman-eceng-gondok-cipeundeuy-bandung-barat-rambah-pasar-mancanegar', 3, '<p>PIKIRAN RAKYAT - Menjamurnya eceng gondok di Waduk Cirata, Kabupaten Bandung Barat, Jawa Barat, justru melahirkan solusi kreatif guna mengatasinya. Sejumlah warga di Kecamatan Cipeundeuy dan Cikalongwetan, mengolah gulma tersebut menjadi berbagai produk kerajinan anyaman nan cantik. Produk usaha kreatif warga itu bahkan tembus ke pasar dunia.<br><br>Sumber Artikel berjudul \"Usaha Kreatif Kerajinan Anyaman Eceng Gondok Cipeundeuy Bandung Barat Rambah Pasar Mancanegara\",&nbsp;</p><p>Duduy Abdullah, 62 tahun, pemilik galeri segera menjawabnya, Rp50.000. Tak hanya keranjang, berbagai produk anyaman eceng gondok lain juga dipajang di tempat itu, seperti tikar bundar, hiasan dinding, tas, kursi, pot. Duduy mengungkapkan, tumpukan keranjang di galeri Ciecra bakal dikirim ke Yogyakarta untuk diimpor ke Amerika Serikat. \"Sebulan,1500 keranjang,\" kata Duduy terkait jumlah keranjang yang diimpor itu. Tak hanya memproduksi sendiri, Duduy juga melibatkan warga dari 10 desa di wilayah Kecamatan Cipeundeuy dan Cikalongwetan.<br><br>Sumber Artikel berjudul “Usaha Kreatif Kerajinan Anyaman Eceng Gondok Cipeundeuy Bandung Barat Rambah Pasar Mancanegara”</p>', 1, 2, 3, '2025-02-11 06:05:19', '2026-06-16 11:26:28'),
(2, 'img-berita/67aaee23cb55b.jpeg', 'Glamping di Ciwidey dan Pangalengan Jadi Primadona Wisatawan', 'Bandung -Libur panjang Isra Mikraj dan Imlek membuat okupansi penginapan di Kabupaten Bandung alami...', 'glamping-di-ciwidey-dan-pangalengan-jadi-primadona-wisatawan', 1, '<p>Bandung -<br><br>Libur panjang Isra Mikraj dan Imlek membuat okupansi penginapan di Kabupaten Bandung alami peningkatan yang signifikan. Bahkan saat ini penginapan dengan gaya glamor camping (glamping) menjadi pilihan favorit bagi wisatawan.<br><br>Wilayah Kecamatan Ciwidey dan Pangalengan saat ini telah dipenuhi beberapa penginapan glamping. Para glamping tersebut menyajikan berbagai pemandangan alam yang indah dan udara yang sejuk.<br>&nbsp;Selain itu, adanya penginapan glamping biasanya berdekatan dengan objek wisata yang kerap menjadi destinasi. Makanya banyak masyarakat lebih memilih menginap di glamping.<br>Wawan menyebutkan rata-rata pengeluaran uang atau spending money wisatawan yang mengunjungi objek wisata di Bandung Selatan masih rendah. Pasalnya objek wisata di wilayah tersebut hanya menyajikan pemandangan alam.<br><br>\"Nah, spending money-nya wisatawan hanya di Rp 500 ribu sampai Rp 1 juta untuk satu orang. Karena kita mah segmennya kan segmen wisata alam. Mungkin untuk akomodasi hiburan yang sifatnya jasa itu, ada di kota lain. Tapi di kita core bisnisnya adalah wisata alam,\" jelasnya.</p>', 1, 2, 4, '2025-02-11 06:28:51', '2026-06-24 07:24:04'),
(3, 'img-berita/67aaee6a2a8d5.jpg', 'DPRD Kota Bandung Dorong Cagar Budaya Jadi Destinasi Pariwisata di Kota Bandung', 'BANDUNG, DISWAY.ID - DPRD Kota Bandung mendorong cagar budaya agar menjadi salah satu destinasi pari...', 'dprd-kota-bandung-dorong-cagar-budaya-jadi-destinasi-pariwisata-di-kota-bandung', 9, '<p><strong>BANDUNG, DISWAY.ID</strong> - DPRD <a href=\"https://disway.id/listtag/37505/kota-bandung\">Kota Bandung</a> mendorong <a href=\"https://disway.id/listtag/46703/cagar-budaya\">cagar budaya</a> agar menjadi salah satu <a href=\"https://disway.id/listtag/534325/destinasi-pariwisata\">destinasi pariwisata</a> di <a href=\"https://disway.id/listtag/37505/kota-bandung\">Kota Bandung</a>.</p><p>Aturan soal itu pun kini tengah dibahas oleh Pansus 4 <a href=\"https://disway.id/listtag/87535/dprd-kota-bandung\">DPRD Kota Bandung</a> berupa Rancangan Peraturan Daerah (Raperda) tentang Pengelolaan Cagar Budaya.</p><p>Perlu diketahui, Pansus 4 DPRD Kota Bandung membahas dua raperda, yakni Raperda tentang Perubahan Kedua Atas Peraturan Daerah (Perda) Nomor 8 Tahun 2016 tentang Pembentukan dan Susunan Perangkat Daerah serta Raperda tentang Pengelolaan Cagar Budaya</p><p>Menurut anggota Pansus 4 DPRD Kota Bandung, Susanto Triyogo Adiputro S.ST.,M.T., dalam upaya mendorong cagar budaya menjadi destinasi wisata&nbsp; maka harus didukung infrastruktur yang memadai</p><p>Selain itu juga perlu adanya kebijakan sistem pengelolaan terpadu yang terintergritas antar SKPD (satuan kerja perangkat daerah) pendukung dan stakeholder&nbsp; lainnya.</p><p>\"Ini masih proses (pembahasan Perda). Mudah-mudahan proses ini dalam rangka Kota Bandung dengan berbagai sejarah, budaya dan juga latar belakang historinya yang sangat kuat sehingga bagaimana beberapa peninggalan-peninggalan sejarah ini bisa kita lestarikan dan support,\" ujarnya.</p><p>Secara garis besar, kata Susanto, ada 5 hal yang dibahas dalam perda ini yakni berkaitan dengan penyelamatan, pengamanan, sistem zonasi, pemeliharaan dan pemugaran.</p><p>Kelima hal ini sangat bekaitan erat dengan pelestarian dan perlindungan cagar budaya.</p><p>\"Di dalam sistem zonasi ini pun dibagi-bagi, ada yang disebut zonasi inti, ada yang disebut zonasi penyangga dan ada zonasi pengembangan, dan atau zonasi penunjang,\" terangnya.</p>', 1, 2, 4, '2025-02-11 06:30:02', '2026-06-22 21:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_knowledges`
--

CREATE TABLE `chatbot_knowledges` (
  `id` bigint UNSIGNED NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatbot_knowledges`
--

INSERT INTO `chatbot_knowledges` (`id`, `keyword`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'siapa pembuat website ini?,pembuat website, siapa pembuat website desa, pembuat website desa', 'Mahasiswa Bina Sarana Informatika PSDKU Tasikmalaya Angkatan 2023', '2026-06-22 21:10:25', '2026-06-23 06:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `chat_histories`
--

CREATE TABLE `chat_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_histories`
--

INSERT INTO `chat_histories` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'chatbot', 'Selamat datang di Website Desa Cikarag. Saya adalah asisten desa, bagaimana saya bisa membantu Anda hari ini? Apakah Anda memiliki pertanyaan tentang Desa Cikarag atau membutuhkan informasi tentang layanan yang kita sediakan?', '2026-06-28 10:07:11', '2026-06-28 10:07:11'),
(2, 'cara daftar posyandu gimana?', 'Selamat datang di Website Desa Cikarag. Untuk mendaftar posyandu, berikut adalah langkah-langkah yang dapat Anda lakukan:\n\n1. **Cari Informasi Posyandu Terdekat**: Carilah informasi tentang posyandu yang terletak di sekitar tempat tinggal Anda. Anda dapat menanyakan kepada tetangga, kerabat, atau petugas kesehatan di puskesmas setempat.\n\n2. **Kunjungi Posyandu**: Datanglah langsung ke posyandu yang Anda ingin daftarkan diri. Biasanya, posyandu membuka pada hari tertentu dalam seminggu.\n\n3. **Bawa Dokumen yang Diperlukan**: Untuk mendaftar, Anda mungkin perlu membawa beberapa dokumen seperti Kartu Keluarga (KK), KTP, dan akte kelahiran (jika mendaftar untuk bayi atau balita).\n\n4. **Isi Formulir Pendaftaran**: Di posyandu, Anda akan diminta untuk mengisi formulir pendaftaran. Isilah formulir tersebut dengan lengkap dan benar.\n\n5. **Konsultasi dengan Petugas Kesehatan**: Setelah mengisi formulir, Anda akan berkonsultasi dengan petugas kesehatan yang bertugas di posyandu. Mereka akan memberikan informasi lebih lanjut tentang program posyandu dan manfaat yang bisa Anda dapatkan.\n\n6. **Ikuti Program Posyandu**: Setelah berhasil mendaftar, ikutilah program posyandu secara teratur. Posyandu menyediakan berbagai layanan kesehatan, seperti pemeriksaan kesehatan, imunisasi, dan penimbangan berat badan bagi bayi dan balita.\n\nPastikan Anda untuk meminta informasi lebih lanjut tentang syarat dan prosedur pendaftaran posyandu dari petugas kesehatan atau pengelola posyandu setempat, karena prosedur dapat berbeda-beda di tiap daerah.', '2026-06-28 10:07:43', '2026-06-28 10:07:43'),
(3, 'apakah saya terdaftar menerima bantuan desa', 'Selamat datang di website Desa Cikarag!\n\nUntuk mengetahui apakah Anda terdaftar sebagai penerima bantuan desa, saya sarankan Anda untuk menghubungi langsung Kantor Desa Cikarag atau mengunjungi website resmi Desa Cikarag untuk memeriksa informasi terkini tentang bantuan desa.\n\nNamun, saya dapat membantu Anda dengan beberapa langkah yang dapat Anda lakukan untuk memeriksa status pendaftaran Anda:\n\n1. **Kunjungi Kantor Desa Cikarag**: Anda dapat mengunjungi Kantor Desa Cikarag langsung untuk meminta informasi tentang status pendaftaran Anda sebagai penerima bantuan desa.\n2. **Cek Website Resmi Desa Cikarag**: Anda dapat mengunjungi website resmi Desa Cikarag untuk memeriksa informasi tentang bantuan desa dan daftar penerima bantuan.\n3. **Hubungi Kontak Desa Cikarag**: Anda dapat menghubungi kontak yang tercantum di website resmi Desa Cikarag atau di media sosial resmi Desa Cikarag untuk meminta informasi tentang status pendaftaran Anda.\n\nPastikan Anda memiliki identitas diri yang valid dan informasi yang akurat tentang diri Anda untuk memudahkan proses pengecekan.\n\nJika Anda memiliki pertanyaan lebih lanjut, saya akan senang membantu Anda.', '2026-06-28 10:09:13', '2026-06-28 10:09:13'),
(4, 'buatkan kode html form login', 'Berikut adalah contoh kode HTML untuk membuat form login sederhana:\n\n```html\n<!DOCTYPE html>\n<html>\n<head>\n	<title>Form Login</title>\n	<style>\n		body {\n			font-family: Arial, sans-serif;\n		}\n		\n		.container {\n			width: 300px;\n			margin: 50px auto;\n			padding: 20px;\n			border: 1px solid #ddd;\n			border-radius: 10px;\n			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n		}\n		\n		.container h2 {\n			text-align: center;\n		}\n		\n		.container form {\n			margin-top: 20px;\n		}\n		\n		.container label {\n			display: block;\n			margin-bottom: 10px;\n		}\n		\n		.container input[type=\"text\"], .container input[type=\"password\"] {\n			width: 100%;\n			height: 40px;\n			margin-bottom: 20px;\n			padding: 10px;\n			border: 1px solid #ccc;\n		}\n		\n		.container input[type=\"submit\"] {\n			width: 100%;\n			height: 40px;\n			background-color: #4CAF50;\n			color: #fff;\n			padding: 10px;\n			border: none;\n			border-radius: 5px;\n			cursor: pointer;\n		}\n		\n		.container input[type=\"submit\"]:hover {\n			background-color: #3e8e41;\n		}\n	</style>\n</head>\n<body>\n	<div class=\"container\">\n		<h2>Form Login</h2>\n		<form action=\"\" method=\"post\">\n			<label for=\"username\">Username:</label>\n			<input type=\"text\" id=\"username\" name=\"username\" placeholder=\"Masukkan username\">\n			<label for=\"password\">Password:</label>\n			<input type=\"password\" id=\"password\" name=\"password\" placeholder=\"Masukkan password\">\n			<input type=\"submit\" value=\"Login\">\n		</form>\n	</div>\n</body>\n</html>\n```\n\nSilakan disesuaikan dengan kebutuhan Anda. Contoh di atas menggunakan metode `post` untuk mengirimkan data form ke server. Namun, perlu diingat bahwa kode di atas hanya contoh dasar dan tidak menyertakan validasi atau keamanan yang memadai untuk digunakan dalam produksi.', '2026-06-28 10:10:51', '2026-06-28 10:10:51'),
(5, 'buatkan code html mudah, kirim ke saya', 'Berikut adalah contoh kode HTML sederhana untuk membuat halaman web:\n\n```html\n<!DOCTYPE html>\n<html>\n<head>\n	<title>Desa Cikarag</title>\n</head>\n<body>\n	<h1>Selamat Datang di Desa Cikarag</h1>\n	<p>Desa Cikarag adalah desa yang indah dan nyaman.</p>\n</body>\n</html>\n```\n\nKode di atas akan menampilkan teks \"Selamat Datang di Desa Cikarag\" dengan heading 1 dan kalimat \"Desa Cikarag adalah desa yang indah dan nyaman.\" dengan paragraf. Anda dapat menyimpan kode di atas dengan ekstensi `.html` dan membukanya dengan browser untuk melihat hasilnya.', '2026-06-28 10:11:52', '2026-06-28 10:11:52'),
(6, 'hapus chat ini', 'Baik, chat ini saya hapus. Apakah ada yang bisa saya bantu lagi di Desa Cikarag?', '2026-06-28 10:12:28', '2026-06-28 10:12:28'),
(7, 'siapa kepala desa cikarag?', 'Jafar Siddiq menjabat sebagai Kepala Desa', '2026-06-28 10:12:37', '2026-06-28 10:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `berita_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `nama`, `email`, `body`, `berita_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Abdul Jabar', 'abdul@gmail.com', 'Keren Banget', 3, NULL, '2026-06-14 19:54:23', '2026-06-14 19:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `nama`, `email`, `body`, `comment_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'desacikarag@gmail.com', 'Ayok main', 1, NULL, '2026-06-15 13:03:23', '2026-06-15 13:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gambar`, `keterangan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-gallery//67aaef79b6621.png', 'Curug Maribaya', 1, '2025-02-11 06:34:33', '2025-02-11 06:34:33'),
(2, 'img-gallery//67aaefacd6011.jpg', 'Trans Studio Bandung', 1, '2025-02-11 06:35:24', '2025-02-11 06:35:24'),
(3, 'img-gallery//67aaefdfe2f64.jpg', 'Ciwidey', 1, '2025-02-11 06:36:15', '2025-02-11 06:36:15'),
(4, 'img-gallery//67aaf008c7fdf.jpg', 'Jendela ALam', 1, '2025-02-11 06:36:56', '2025-02-11 06:36:56'),
(5, 'img-gallery//67aaf05fec26e.jpeg', 'De\'Ranch Lembang', 1, '2025-02-11 06:38:24', '2025-02-11 06:38:24'),
(6, 'img-gallery//67aaf09270080.jpeg', 'Lugs Gravitiy', 1, '2025-02-11 06:39:14', '2025-02-11 06:39:14'),
(7, 'img-gallery//67aaf0c3d5dba.jpg', 'Museum Geologi', 1, '2025-02-11 06:40:03', '2025-02-11 06:40:03'),
(8, 'img-gallery//67aaf0eaa93ce.jpg', 'Wisata Bandros', 1, '2025-02-11 06:40:42', '2025-02-11 06:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamins`
--

CREATE TABLE `jenis_kelamins` (
  `id` bigint UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_kelamins`
--

INSERT INTO `jenis_kelamins` (`id`, `jenis_kelamin`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', 70, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Perempuan', 55, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', 'teknologi', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Kesenian', 'kesenian', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'UMKM', 'umkm', 1, '2025-02-11 06:05:44', '2025-02-11 06:05:44'),
(4, 'pariwisata', 'pariwisata', 1, '2025-02-11 06:26:07', '2025-02-11 06:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `kontaks`
--

CREATE TABLE `kontaks` (
  `id` bigint UNSIGNED NOT NULL,
  `lokasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontaks`
--

INSERT INTO `kontaks` (`id`, `lokasi`, `email`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Kantor Kepala Desa Cikarag Kecamatan Malangbong', 'desacikarag@gmail.com', '0882260686031', 1, '2025-02-11 03:21:45', '2026-06-14 19:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint UNSIGNED NOT NULL,
  `layanan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `persyaratan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`id`, `layanan`, `persyaratan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Program UHC di Kota Bandung', '<p><strong>Identitas Resmi:</strong> Memiliki identitas yang dikeluarkan oleh Pemerintah Kota Bandung selama lebih dari 1 tahun.</p><p><strong>Kartu Keluarga (KK):</strong> Bagi bayi yang usianya lebih dari 1 bulan, namanya harus sudah tercantum di Kartu Keluarga untuk bisa masuk dalam UHC.</p><p><strong>Dokumen Pendukung:</strong> Menyiapkan KTP, KK, dan hasil pemeriksaan pasien/rujukan/surat rawat.</p><p><strong>Kepesertaan JKN:</strong> UHC berlaku untuk:</p><ul><li>Pasien yang belum memiliki JKN atau PBI non-aktif (sesuai persyaratan).</li><li>Pasien terdaftar BPJS Mandiri non-aktif karena masalah premi (dengan tambahan formulir PYDOPD).</li><li>Pasien terdaftar BPJS pegawai swasta non-aktif (dengan tambahan surat keterangan kerja).</li><li>Pasien BBL (bayi dari ibu yang terdaftar PBI dengan usia &lt;28 hari) dengan tambahan Surat Keterangan Lahir.</li></ul>', 1, '2025-02-11 06:23:03', '2025-02-11 06:23:03'),
(2, 'Pendaftaran Layanan Kesehatan di Puskesmas Secara Online', '<p><strong>Sistem yang Dikembangkan Sendiri oleh Puskesmas:</strong> Setiap Puskesmas mungkin memiliki sistem pendaftaran online yang unik. Petunjuk pendaftaran biasanya tersedia di situs web Puskesmas atau dapat diperoleh melalui kontak telepon.</p><p><strong>Platform Kesehatan Online Pemerintah:</strong> Jika tersedia, platform ini terintegrasi dengan beberapa Puskesmas. Anda mungkin perlu mendaftar akun terlebih dahulu sebelum dapat mendaftar di Puskesmas. Informasi lebih lanjut dapat ditemukan di situs web Dinas Kesehatan Kota Bandung.</p><p><strong>Aplikasi Pihak Ketiga:</strong> Beberapa Puskesmas mungkin bekerja sama dengan aplikasi pihak ketiga untuk menyediakan layanan pendaftaran online. Pastikan aplikasi tersebut terpercaya dan aman sebelum menggunakannya.</p><p>Langkah-langkah umum pendaftaran online di Puskesmas Bandung meliputi:</p><p><strong>Akses Situs Web atau Aplikasi:</strong> Buka situs web Puskesmas atau aplikasi yang telah ditentukan.</p><p><strong>Pendaftaran Akun:</strong> Jika diperlukan, buat akun dengan mengisi data diri yang diminta.</p><p><strong>Pilih Layanan:</strong> Pilih jenis layanan kesehatan yang dibutuhkan dan jadwal kunjungan.</p><p><strong>Konfirmasi Pendaftaran:</strong> Setelah mengisi semua informasi yang diperlukan, konfirmasi pendaftaran Anda.</p>', 1, '2025-02-11 06:24:18', '2025-02-11 06:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_13_022605_create_sliders_table', 1),
(7, '2023_09_14_134427_create_beritas_table', 1),
(8, '2023_09_14_142413_create_post_statuses_table', 1),
(9, '2023_09_14_223318_create_kategoris_table', 1),
(10, '2023_09_17_091224_create_comments_table', 1),
(11, '2023_09_18_054320_create_comment_replies_table', 1),
(12, '2023_09_18_173129_create_wilayahs_table', 1),
(13, '2023_09_18_203110_create_sejarahs_table', 1),
(14, '2023_09_18_210113_create_visi_misis_table', 1),
(15, '2023_09_19_061945_create_perangkat_desas_table', 1),
(16, '2023_09_21_054915_create_agamas_table', 1),
(17, '2023_09_21_073255_create_jenis_kelamins_table', 1),
(18, '2023_09_21_085821_create_pekerjaans_table', 1),
(19, '2023_09_23_063218_create_petas_table', 1),
(20, '2023_09_24_051908_create_umkms_table', 1),
(21, '2023_09_25_061424_create_kontaks_table', 1),
(22, '2023_09_25_075226_create_video_profils_table', 1),
(23, '2023_09_26_054211_create_situses_table', 1),
(24, '2023_11_29_060538_create_layanans_table', 1),
(25, '2023_11_29_073753_create_galleries_table', 1),
(26, '2023_11_29_164313_create_announcements_table', 1),
(27, '2023_11_29_201150_create_anggarans_table', 1),
(28, '2026_06_19_190356_create_chat_histories_table', 2),
(29, '2026_06_23_032231_create_chatbot_knowledge_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaans`
--

CREATE TABLE `pekerjaans` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pekerjaans`
--

INSERT INTO `pekerjaans` (`id`, `pekerjaan`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Petani', 132, 1, '2025-02-11 03:21:45', '2025-02-11 04:55:09'),
(2, 'Pegawai Negeri', 14, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'Belum/Tidak bekerja', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Pensiunan', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `perangkat_desas`
--

CREATE TABLE `perangkat_desas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perangkat_desas`
--

INSERT INTO `perangkat_desas` (`id`, `nama`, `foto`, `jabatan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Jafar Siddiq', 'img-perangkat//67aaf46b5d68e.jpg', 'Kepala Desa', 1, '2025-02-11 03:21:45', '2026-06-14 19:42:24'),
(2, 'Muhammad Ikhsan qolbun', 'img-perangkat//67aaf45773274.jpg', 'Sekretaris Desa', 1, '2025-02-11 03:21:45', '2026-06-14 19:37:22'),
(3, 'Yoga Citra N', 'img-perangkat//6a2f03bd5d3a0.jpg', 'Kepala Urusan Umum', 1, '2025-02-11 03:21:45', '2026-06-14 19:40:45'),
(4, 'Abdul Jabar', 'img-perangkat//67aaf3e13146a.jpg', 'Kepala Dusun', 1, '2025-02-11 03:21:45', '2026-06-14 19:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petas`
--

CREATE TABLE `petas` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petas`
--

INSERT INTO `petas` (`id`, `judul`, `alamat`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Peta Desa', 'Kantor Kepala Desa Cikarag Kecamatan Malangbong', 1, '2025-02-11 03:21:45', '2026-06-14 19:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `post_statuses`
--

CREATE TABLE `post_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_statuses`
--

INSERT INTO `post_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'draft', '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'publish', '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `sejarahs`
--

CREATE TABLE `sejarahs` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sejarahs`
--

INSERT INTO `sejarahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah Desa Cikarag', '<p>Desa Cikarag merupakan salah satu desa yang berada di Kecamatan Malangbong, Kabupaten Garut, Provinsi Jawa Barat. Pada awalnya, wilayah Desa Cikarag merupakan bagian dari Desa Cinagara. Seiring dengan perkembangan jumlah penduduk dan kebutuhan pelayanan pemerintahan, pada tanggal 25 Juli 1981 dilakukan pemekaran wilayah sehingga terbentuklah Desa Cikarag sebagai desa yang berdiri sendiri.</p><p>Nama \"Cikarag\" berasal dari kata <strong>\"Pamaragan\"</strong>, yang menurut cerita masyarakat setempat berkaitan dengan seorang wakil prajurit Mataram yang sedang dalam perjalanan menuju Batavia. Dalam perjalanannya, prajurit tersebut dikisahkan gugur di wilayah yang sekarang menjadi bagian dari Kecamatan Malangbong. Dari peristiwa tersebut kemudian lahirlah nama \"Cikarag\" yang digunakan sebagai identitas desa hingga saat ini.</p><p>Kepala Desa pertama yang memimpin Desa Cikarag setelah pemekaran adalah <strong>T. Rubai</strong>, yang berasal dari Kampung Cigondok. Di bawah kepemimpinannya, pemerintahan desa mulai dibentuk dan dikembangkan untuk melayani kebutuhan masyarakat setempat.</p><p>Seiring berjalannya waktu, Desa Cikarag terus berkembang baik dari segi pemerintahan, pembangunan, pendidikan, maupun kehidupan sosial masyarakat. Semangat gotong royong, kebersamaan, dan nilai-nilai budaya yang diwariskan para pendahulu tetap menjadi landasan utama dalam pembangunan desa hingga saat ini.</p><h3>Daftar Kepala Desa Cikarag</h3><figure class=\"table\"><table><thead><tr><th>Periode</th><th>Nama Kepala Desa</th></tr></thead><tbody><tr><td>1981–1986</td><td>T. Rubai</td></tr><tr><td>1986–1994</td><td>M. Sadikin</td></tr><tr><td>1994–2002</td><td>Idi Sahdi</td></tr><tr><td>2002–2007</td><td>Armin Ismanto Ismafian</td></tr><tr><td>2007–2013</td><td>Totong Sunarya</td></tr><tr><td>2013–2019</td><td>Dudung Abdurahman, S.Ag</td></tr><tr><td>2019</td><td>Thoha Nugraha (Pj.)</td></tr><tr><td>2019–sekarang</td><td>Jafar Siddiq</td></tr></tbody></table></figure>', 1, '2025-02-11 03:21:45', '2026-06-14 19:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `situses`
--

CREATE TABLE `situses` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_desa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `situses`
--

INSERT INTO `situses` (`id`, `logo`, `nm_desa`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-logo//6a2f6a16b0db5.png', 'Desa Cikarag', 'Malangbong', 'Garut', 'Jawa Barat', 44188, 1, '2025-02-11 03:21:45', '2026-06-15 02:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_slider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_btn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `judul`, `deskripsi`, `img_slider`, `link_btn`, `created_at`, `updated_at`) VALUES
(1, 'Website Desa Cikarag', 'Desa Cikarag merupakan salah satu desa yang berada di wilayah administratif Kecamatan Malangbong, Kabupaten Garut, Provinsi Jawa Barat. Desa ini memiliki letak geografis yang strategis dengan lingkungan yang asri serta didukung oleh potensi sumber daya alam dan sumber daya manusia yang terus berkembang.', 'img-slider//6a2eff7205cbc.jpg', 'http://127.0.0.1:8000/wilayah', '2025-02-11 03:21:45', '2026-06-15 06:38:43'),
(2, 'Sejarah Desa', 'Desa Cikarag merupakan salah satu desa yang berada di Kecamatan Malangbong, Kabupaten Garut, Provinsi Jawa Barat. Pada awalnya, wilayah Desa Cikarag merupakan bagian dari Desa Cinagara. Seiring dengan perkembangan jumlah penduduk dan kebutuhan pelayanan pemerintahan, pada tanggal 25 Juli 1981 dilakukan pemekaran wilayah sehingga terbentuklah Desa Cikarag sebagai desa yang berdiri sendiri.', 'img-slider//67aacc68000d2.png', 'http://127.0.0.1:8000/sejarah', '2025-02-11 03:21:45', '2026-06-15 06:36:58'),
(3, 'Visi & Misi', '\"Terwujudnya Desa Cikarag yang Maju, Mandiri, Sejahtera, Religius, dan Berbudaya melalui Tata Kelola Pemerintahan yang Baik serta Pemberdayaan Masyarakat yang Berkelanjutan.\"', 'img-slider//67aaca21bd8df.jpeg', 'http://127.0.0.1:8000/visi-misi', '2025-02-11 03:21:45', '2026-06-15 06:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `umkms`
--

CREATE TABLE `umkms` (
  `id` bigint UNSIGNED NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `umkms`
--

INSERT INTO `umkms` (`id`, `foto`, `produk`, `slug`, `harga`, `deskripsi`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-produk/67aae72a74e39.jpeg', 'Kerajinan Rajut Eceng Gondok', 'kerajinan-rajut-eceng-gondok', 150000, '<p>KERANJANG MINI ENCENG GONDOK DIMENSI 30X28X10 CM ( UKURAN PAKET )<br>DETAIL SIZE PRODUK : 30X18X10 CM<br>dikarenakan produk merupakan handmade wajar bila ada selisih dengan size yg tertera dideskripsi.<br><br>LANGSUNG PENGRAJIN , BELI DI MALL PASTI 100 LEBIH<br><br>LANGUNS AJA SIS.<br><br>NOTE : SUPAYA TIDAK RUSAK KAMI MENYEDIAKAN KARDUS BERBAYAR HANYA 500 RUPIAH , SILAHKAN CHECK OUT DI ETALASE<br><br>#ENCENGGONDOK #STORAGE #KERANJANGANYAMAN #SEAGRASS</p>', '81804226623', 1, '2025-02-11 05:59:06', '2026-06-14 19:49:57'),
(2, 'img-produk/67aae9ee8b60f.png', 'Pisang Bolen', 'pisang-bolen', 30000, '<p>Perpaduan pisang yang dibalut dengan kulit pastry yang renyah ini jadi camilan khas Garut. Saat dimakan, kombinasi lembutnya pisang, manis gurihnya cokelat dan keju yang jadi isian rasa dan renyahnya pastry menjadikan camilan ini oleh-oleh khas yang wajib untuk dibeli.</p><p>Kamu bisa mendapatkan pisang bolen ini di Kartika Sari yang sudah memiliki 8 cabang. Gerai pertamanya berada di Jl. Haji Akbar, No. 4 Kebon Kawung yang lokasinya tidak jauh dari Stasiun Garut. Di sini, pisang bolen disajikan dalam berbagai pilihan rasa, mulai dari Cokelat Keju, Durian Keju, Kacang Hijau, Peuyeum Keju, dan Keju Spesial.</p>', '81804226623', 1, '2025-02-11 06:10:54', '2026-06-14 19:49:08'),
(3, 'img-produk/67aaeaf668166.jpeg', 'Dorokdokcu, Malangbong garut', 'dorokdokcu-malangbong-garut', 15000, '<p>Dorokdok Pedas Jeruk Brand: Dorokdokcu Rasa: Pedas daun jeruk Netto: 50gr Harga: Rp 10.000 Terbuat dari 100% kulit sapi . Ini enak banget rasanya pedes asin gurih plus ada sedikit rasa khas daun jeruknya, sobi micin dijamin nagih!!</p>', '83434342323', 1, '2025-02-11 06:15:18', '2026-06-14 19:47:59'),
(4, 'img-produk/6a3a18fc657e6.jpg', 'Celana Mas jhon', 'celana-mas-jhon', 110000, '<p>Celana mas jhon</p>', '818887778992', 1, '2026-06-23 05:26:22', '2026-06-23 05:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `foto`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'img-profil//6a2efc0a114d1.png', 'admin', 'admin@gmail.com', NULL, '$2y$10$y524SMmxYHjWaYnq9OmZvOyo9tMISdjVPs72wj9ngvruf3sj7D0S2', NULL, '2025-02-11 03:21:45', '2026-06-14 19:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `video_profils`
--

CREATE TABLE `video_profils` (
  `id` bigint UNSIGNED NOT NULL,
  `url_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_profils`
--

INSERT INTO `video_profils` (`id`, `url_video`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/lAzBguvfRnE?si=dk1UgRuQjsJdMjMo', 1, '2025-02-11 03:21:45', '2026-06-14 19:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `visi_misis`
--

CREATE TABLE `visi_misis` (
  `id` bigint UNSIGNED NOT NULL,
  `visi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visi_misis`
--

INSERT INTO `visi_misis` (`id`, `visi`, `misi`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '\"Terwujudnya Desa Cikarag yang Maju, Mandiri, Sejahtera, Religius, dan Berbudaya melalui Tata Kelola Pemerintahan yang Baik serta Pemberdayaan Masyarakat yang Berkelanjutan.\"', 'Meningkatkan kualitas pelayanan publik yang cepat, transparan, akuntabel, dan berorientasi pada kepuasan masyarakat.\r\nMeningkatkan pembangunan infrastruktur desa guna mendukung pertumbuhan ekonomi, pendidikan, kesehatan, dan kesejahteraan masyarakat.\r\nMengembangkan potensi ekonomi masyarakat melalui pemberdayaan UMKM, pertanian, peternakan, perdagangan, dan usaha produktif lainnya.\r\nMeningkatkan kualitas sumber daya manusia melalui dukungan terhadap pendidikan, pelatihan, serta kegiatan kepemudaan dan kemasyarakatan.\r\nMemperkuat kehidupan sosial dan keagamaan guna mewujudkan masyarakat yang harmonis, religius, dan berakhlak mulia.\r\nMelestarikan budaya dan kearifan lokal sebagai identitas serta kekayaan masyarakat Desa Cikarag.\r\nMeningkatkan partisipasi masyarakat dalam proses pembangunan desa melalui semangat gotong royong dan musyawarah.\r\nMewujudkan lingkungan desa yang bersih, sehat, aman, dan nyaman bagi seluruh warga masyarakat.', 1, '2025-02-11 03:21:45', '2026-06-14 19:34:49');

-- --------------------------------------------------------

--
-- Table structure for table `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wilayahs`
--

INSERT INTO `wilayahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Wilayah Desa Cikarag Kabupaten garut', '<p>Desa Cikarag merupakan salah satu desa yang berada di wilayah administratif Kecamatan Malangbong, Kabupaten Garut, Provinsi Jawa Barat dengan kode pos 44188. Desa ini memiliki kondisi geografis yang berada di kawasan perbukitan dan dataran yang mendukung berbagai aktivitas pertanian, perkebunan, serta kegiatan ekonomi masyarakat.</p><p>Secara administratif, Desa Cikarag terdiri dari <strong>3 dusun, 8 Rukun Warga (RW), dan 34 Rukun Tetangga (RT)</strong> yang tersebar di beberapa wilayah permukiman penduduk. Pemerintahan desa terus berupaya meningkatkan pelayanan dan pembangunan guna menunjang kesejahteraan masyarakat.</p><p>Desa Cikarag berada di wilayah timur Kabupaten Garut, tepatnya di Kecamatan Malangbong yang merupakan salah satu kawasan strategis penghubung antara Kabupaten Garut, Kabupaten Sumedang, dan Kabupaten Tasikmalaya.</p><h4>Data Administratif</h4><ul><li><strong>Desa</strong> : Cikarag</li><li><strong>Kecamatan</strong> : Malangbong</li><li><strong>Kabupaten</strong> : Garut</li><li><strong>Provinsi</strong> : Jawa Barat</li><li><strong>Kode Pos</strong> : 44188</li><li><strong>Jumlah Dusun</strong> : 3</li><li><strong>Jumlah RW</strong> : 8</li><li><strong>Jumlah RT</strong> : 34</li></ul>', 1, '2025-02-11 03:21:45', '2026-06-14 19:33:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggarans`
--
ALTER TABLE `anggarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcements_slug_unique` (`slug`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_slug_unique` (`slug`);

--
-- Indexes for table `chatbot_knowledges`
--
ALTER TABLE `chatbot_knowledges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_histories`
--
ALTER TABLE `chat_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontaks`
--
ALTER TABLE `kontaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `petas`
--
ALTER TABLE `petas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_statuses`
--
ALTER TABLE `post_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarahs`
--
ALTER TABLE `sejarahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situses`
--
ALTER TABLE `situses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umkms`
--
ALTER TABLE `umkms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_profils`
--
ALTER TABLE `video_profils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visi_misis`
--
ALTER TABLE `visi_misis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anggarans`
--
ALTER TABLE `anggarans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chatbot_knowledges`
--
ALTER TABLE `chatbot_knowledges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat_histories`
--
ALTER TABLE `chat_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kontaks`
--
ALTER TABLE `kontaks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petas`
--
ALTER TABLE `petas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_statuses`
--
ALTER TABLE `post_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sejarahs`
--
ALTER TABLE `sejarahs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `situses`
--
ALTER TABLE `situses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `umkms`
--
ALTER TABLE `umkms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_profils`
--
ALTER TABLE `video_profils`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visi_misis`
--
ALTER TABLE `visi_misis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wilayahs`
--
ALTER TABLE `wilayahs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
