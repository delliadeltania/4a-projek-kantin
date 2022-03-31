CREATE TABLE `admin` (
  `username` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `password` varchar(255)
);

CREATE TABLE `pelanggan` (
  `email` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `no_telp` varchar(255),
  `password` varchar(255),
  `nama_lengkap` varchar(255),
  `jenis_kelamin` Enum,
  `tanggal_lahir` date,
  `alamat` varchar(255)
);

CREATE TABLE `pemesanan` (
  `id_pesan` int PRIMARY KEY AUTO_INCREMENT,
  `email` varchar(255),
  `id_tiket` varchar(255),
  `jumlah` int,
  `keterangan` Enum
);

CREATE TABLE `stasiun` (
  `id_stasiun` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `nama_stasiun` varchar(255),
  `kota` varchar(255),
  `alamat` varchar(255)
);

CREATE TABLE `tiket` (
  `id_tiket` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `s_asal` varchar(255),
  `s_tujuan` varchar(255),
  `kelas` Enum,
  `tgl_berangkat` date,
  `jam` timestamp,
  `jml_tiket` int,
  `harga` int
);

ALTER TABLE `pemesanan` ADD FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`);

ALTER TABLE `pelanggan` ADD FOREIGN KEY (`email`) REFERENCES `pemesanan` (`email`);
