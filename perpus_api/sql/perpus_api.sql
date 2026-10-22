-- =========================================================
-- DATABASE: perpus_api
-- Jobsheet Ujian Praktik ASTS Ganjil - XII RPL 1
-- =========================================================

CREATE DATABASE IF NOT EXISTS perpus_api;
USE perpus_api;

-- Tabel buku
CREATE TABLE IF NOT EXISTS books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  kode_buku VARCHAR(20) NOT NULL,
  judul VARCHAR(150) NOT NULL,
  penulis VARCHAR(100) NOT NULL,
  kategori VARCHAR(50) NOT NULL,
  tahun_terbit YEAR NOT NULL,
  penerbit VARCHAR(100) NOT NULL
);

-- Tabel admin
CREATE TABLE IF NOT EXISTS admins (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

-- Akun admin contoh (username: admin / password: admin123)
-- Catatan: untuk aplikasi produksi, password sebaiknya disimpan dengan password_hash().
INSERT INTO admins (username, password) VALUES ('admin', 'admin123');

-- Minimal 10 data buku (di sini disediakan 12)
INSERT INTO books (kode_buku, judul, penulis, kategori, tahun_terbit, penerbit) VALUES
('BK001','Laskar Pelangi','Andrea Hirata','Novel',2005,'Bentang Pustaka'),
('BK002','Bumi','Tere Liye','Novel',2014,'Gramedia'),
('BK003','Pemrograman PHP','Abdul Kadir','Teknologi',2020,'Andi'),
('BK004','Belajar HTML dan CSS','Jubilee Enterprise','Teknologi',2021,'Elex Media'),
('BK005','Dasar-Dasar JavaScript','Wahana Komputer','Teknologi',2022,'Andi'),
('BK006','Negeri 5 Menara','Ahmad Fuadi','Novel',2009,'Gramedia'),
('BK007','Basis Data','Fathansyah','Teknologi',2018,'Informatika'),
('BK008','Cantik Itu Luka','Eka Kurniawan','Novel',2002,'Gramedia'),
('BK009','Algoritma dan Pemrograman','Rinaldi Munir','Teknologi',2019,'Informatika'),
('BK010','Bumi Manusia','Pramoedya Ananta Toer','Novel',1980,'Hasta Mitra'),
('BK011','Belajar MySQL','Betha Sidik','Teknologi',2017,'Informatika'),
('BK012','Sang Pemimpi','Andrea Hirata','Novel',2006,'Bentang Pustaka');
