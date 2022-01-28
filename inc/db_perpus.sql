-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jan 2022 pada 05.00
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `nis` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` varchar(15) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `thn_masuk` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`nis`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `jurusan`, `thn_masuk`) VALUES
(213834, 'lina marijuana', 'pelabuan', '2002-02-02', 'P', 'Administrasi', '2020'),
(202004044, 'M Fajar Nugraha', 'Sukabumi', '1996-05-03', 'L', 'Akuntansi', '2020'),
(202193021, 'reza rahardi', 'Jakarta', '2001-05-28', 'L', 'Akuntansi', ''),
(213981293, 'Anjeyani', 'Jemoro', '2003-02-26', 'P', 'Administrasi', '2020'),
(2019804045, 'Aceng', 'Cianjur', '2002-11-02', 'L', 'Akuntansi', '2019'),
(2020004075, 'Intan Rismawati', 'Sukabumi', '2002-02-02', 'P', 'Teknik Komputer Jaringan', '2020'),
(2020004234, 'Salman Alfariji', 'Jampang', '2000-12-30', 'L', 'Teknik Komputer Jaringan', '2020'),
(2020040069, 'M Haikal Irhamna', 'CibolangKaler', '2000-11-03', 'L', 'Teknik Komputer Jaringan', '2020'),
(2147483647, 'Gilang Rizki Fadilah', 'Lengkong, Kabupaten Sukabumi', '2001-03-06', 'L', 'Teknik Komputer Jaringan', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id` int(5) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `thn_terbit` varchar(4) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('rak1','rak2','rak3') NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`id`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(23, 'Matematika', 'Asepudin', 'Gramedial', '2015', '4871847h', 2, 'rak2', '0000-00-00 00:00:00'),
(24, 'Dasar PHP', 'Solihin', 'Toko bukbek', '2010', '943823jc4', 3, 'rak2', '0000-00-00 00:00:00'),
(25, 'Pintar CSS', 'Jack', 'Media Suar', '2012', '934748', 5, 'rak1', '0000-00-00 00:00:00'),
(26, 'Bahasa Arab', 'Soleh', 'Muslim post', '2015', '923847', 4, 'rak1', '0000-00-00 00:00:00'),
(29, 'Angular js', 'anggul', 'Raja Program', '2016', '943823jc4', 4, 'rak2', '0000-00-00 00:00:00'),
(30, 'Mahir MySQL', 'April', 'Megatama', '2014', '1234', 2, 'rak1', '2016-10-31 03:03:43'),
(31, 'Mahir PHP', 'Julian', 'Jorge', '2016', '4325', 2, 'rak3', '2016-10-31 09:06:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id` int(5) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(15) NOT NULL,
  `tgl_kembali` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ket` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id`, `judul`, `nis`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket`) VALUES
(26, 'Dasar PHP', 213834, 'lina marijuana', '30-10-2021', '21-11-2021', 'Kembali', ''),
(27, 'Pintar CSS', 2020004075, 'Intan Rismawati', '22-10-2021', '04-11-2021', 'Kembali', ''),
(28, 'HTML Untuk Pemula', 2020040069, 'M Haikal Irhamna', '21-10-2021', '31-10-2021', 'Kembali', ''),
(29, 'Dasar PHP', 213834, 'lina marijuana', '13-11-2021', '20-11-2021', 'Kembali', 'kSAD'),
(30, 'Dasar PHP', 213834, 'lina marijuana', '07-01-2022', '14-01-2022', 'Pinjam', ''),
(31, 'Pintar CSS', 2147483647, 'Gilang Rizki Fadilah', '02-01-2022', '05-01-2022', 'Pinjam', ''),
(32, 'Pintar CSS', 2019804045, 'Aceng', '11-01-2022', '18-01-2022', 'Kembali', ''),
(33, 'Pintar CSS', 202004044, 'M Fajar Nugraha', '28-01-2022', '04-02-2022', 'Pinjam', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(3) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `email`, `foto`, `level`) VALUES
(1, 'Saeful Abdulloh Sayuti', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Saeful.abdulloh_TI19@Nusaputra.ac.id', 'avatar5.png', 'admin'),
(2, 'Rahman Zulkarnaen', 'rahman', 'ee11cbb19052e40b07aac0ca060c23ee', 'rahman28@gmail.com', 'avatar5.png', 'user'),
(12, 'eful', 'eful', '202cb962ac59075b964b07152d234b70', 'saepulabdullohs@gmail.com', '147215.jpg', 'admin'),
(14, 'epul', 'epul', '60c59aa6963572056bb6fc72747cea02', 'epul@gmail.com', '58474.jpg', 'user'),
(15, 'Bem', 'bem', 'd3c654d99bdfaf101e012bfe2810679e', 'bem@gmail.com', '662879.png', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
