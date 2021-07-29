-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Waktu pembuatan: 28 Jul 2021 pada 12.15
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `antrian`
--

CREATE TABLE `antrian` (
  `Nama` varchar(255) NOT NULL,
  `TanggalPeriksa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `antrian`
--

INSERT INTO `antrian` (`Nama`, `TanggalPeriksa`) VALUES
('Aziz', '17 Agustus 2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `antrian_poli`
--

CREATE TABLE `antrian_poli` (
  `Nama` varchar(255) NOT NULL,
  `Poli` varchar(255) NOT NULL,
  `Dokter` varchar(255) NOT NULL,
  `Tanggal` varchar(255) NOT NULL,
  `Jam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `antrian_poli`
--

INSERT INTO `antrian_poli` (`Nama`, `Poli`, `Dokter`, `Tanggal`, `Jam`) VALUES
('Aziz', 'Gigi', 'comboBoxChanged', '17 Agustus 2021', 'comboBoxChanged');

-- --------------------------------------------------------

--
-- Struktur dari tabel `database_poli`
--

CREATE TABLE `database_poli` (
  `Nama_Pasien` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Poli` varchar(255) NOT NULL,
  `No_BPJS` varchar(255) NOT NULL,
  `Keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `doktercuti`
--

CREATE TABLE `doktercuti` (
  `Dokter` varchar(255) DEFAULT NULL,
  `TanggalAwal` varchar(255) DEFAULT NULL,
  `TanggalAkhir` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `doktercuti`
--

INSERT INTO `doktercuti` (`Dokter`, `TanggalAwal`, `TanggalAkhir`) VALUES
('Dr Evans', '17 Agustus 2021', '18 Agustus 2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `Nobpjs` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `TanggalLahir` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `NoTelp` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Poli` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`Nobpjs`, `nama`, `TanggalLahir`, `Email`, `NoTelp`, `Alamat`, `Poli`) VALUES
('190283', 'Aziz', 'Aziz@gmail', '17 Austust 2000', '085556437282', 'KArang salam', 'comboBoxChanged');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
