CREATE TABLE jurusan (
    id_jurusan CHAR(3) PRIMARY KEY NOT NULL,
    nama_jurusan VARCHAR(50) NOT NULL
);

INSERT INTO jurusan VALUES
('001', 'Teknik Informatika'),
('002', 'Sistem Informasi'),
('003', 'Teknik Komputer'),
('004', 'Teknik Elektro'),
('005', 'Ilmu Komputer'),
('006', 'Teknik Mesin');

CREATE TABLE mahasiswa (
    nim VARCHAR(4) PRIMARY KEY NOT NULL,
    nama VARCHAR(50) NOT NULL,
    alamat TEXT,
    id_jurusan CHAR(3) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id_jurusan)
);
INSERT INTO mahasiswa VALUES
('1000', 'Yuri', 'Jl. Masjid No.323, Ciamis', '001')
('1001', 'Muhammad Rizki', 'Jl. Raya Bogor No. 123, Bogor', '001'),
('1002', 'Siti Aisyah', 'Jl. Pahlawan No. 456, Bandung', '002'),
('1003', 'Ahmad Fauzi', 'Jl. Veteran No. 789, Semarang', '003'),
('1004', 'Nurul Huda', 'Jl. Diponegoro No. 1011, Yogyakarta', '004'),
('1005', 'Fajar Ramadhan', 'Jl. Gajah Mada No. 1213, Surakarta', '005'),
('1006', 'Dwi Putri', 'Jl. Slamet Riyadi No. 1415, Solo', '001'),
('1007', 'Bima Yudha', 'Jl. Sudirman No. 1617, Tegal', '002'),
('1008', 'Intan Permata', 'Jl. Pemuda No. 1819, Cirebon', '003'),
('1009', 'Agung Prabowo', 'Jl. Merdeka No. 2021, Bekasi', '004'),
('1010', 'Dewi Sartika', 'Jl. Pangeran Diponegoro No. 2223, Tangerang', '005'),
('1011', 'Rahmat Hidayat', 'Jl. Gatot Subroto No. 2425, Jakarta', '001'),
('1012', 'Nadia Amalia', 'Jl. HOS Cokroaminoto No. 2627, Depok', '002'),
('1013', 'Faris Ikhsan', 'Jl. Ir. H. Juanda No. 2829, Surabaya', '003'),
('1014', 'Sofia Amirah', 'Jl. Doktor Wahidin Sudirohusodo No. 3031, Malang', '004'),
('1015', 'Adam Firdaus', 'Jl. A. Yani No. 3233, Denpasar', '005'),
('1016', 'Nabila Fauziyah', 'Jl. Brigjen Katamso No. 3435, Yogyakarta', '001'),
('1017', 'Muhammad Rasyid', 'Jl. Sisingamangaraja No. 3637, Medan', '002'),
('1018', 'Zahra Amalia', 'Jl. Imam Bonjol No. 3839, Palembang', '003'),
('1019', 'Iqbal Fahmi', 'Jl. Jend. Sudirman No. 4041, Makassar', '005');


CREATE TABLE dosen (
    nip VARCHAR(3) PRIMARY KEY NOT NULL,
    nama_dosen VARCHAR(50) NOT NULL
);

INSERT INTO dosen VALUES
('100', 'Linus Torvalds'),
('101', 'James Gosling'),
('102', 'Brendan Eich'),
('103', 'Ken Thompson'),
('104', 'Guido van Rossum'),
('105', 'Rob Pike'),
('106', 'Dylan Field'),
('107', 'Ryan Dahl'),
('108', 'Steve Jobs'),
('109', 'Solomon Hykes');

CREATE TABLE matakuliah (
    id_mk VARCHAR(3) PRIMARY KEY NOT NULL,
    nama_mk VARCHAR(50) NOT NULL,
    sks INTEGER NOT NULL
);

INSERT INTO matakuliah VALUES
('M01', 'Pemrograman Web', 3),
('M02', 'Basis Data', 3),
('M03', 'Struktur Data', 3),
('M04', 'Algoritma dan Pemrograman', 4),
('M05', 'Sistem Operasi', 3),
('M06', 'Jaringan Komputer', 3),
('M07', 'Pemrograman Berorientasi Objek', 4),
('M08', 'Pengolahan Citra Digital', 3),
('M09', 'Pemrograman Mobile', 3),
('M10', 'Sistem Informasi Geografis', 3),
('M11', 'Kecerdasan Buatan', 3),
('M12', 'Pemrograman Paralel', 3),
('M13', 'Pengembangan Aplikasi Web', 4),
('M14', 'Sistem Basis Data', 4),
('M15', 'Pemrograman Berbasis Internet', 4),
('M16', 'Pengolahan Citra Digital II', 3),
('M17', 'Pemrograman Berbasis Cloud', 4),
('M18', 'Sistem Informasi Manajemen', 4),
('M19', 'Pemrograman Berorientasi Komponen', 4),
('M20', 'Pengembangan Aplikasi Mobile', 4),
('M21', 'Sistem Informasi Geografis II', 3),
('M22', 'Kecerdasan Buatan II', 3),
('M23', 'Pemrograman Berbasis Jaringan', 4),
('M24', 'Sistem Basis Data II', 4),
('M25', 'Pemrograman Berbasis AI', 4),
('M26', 'Pengembangan Aplikasi Berbasis Web', 4),
('M27', 'Sistem Informasi Manajemen II', 4),
('M28', 'Pemrograman Berorientasi Distribusi', 4),
('M29', 'Pengembangan Aplikasi Berbasis Mobile', 4),
('M30', 'Sistem Informasi Geografis III', 3);


CREATE TABLE teach (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nim VARCHAR(4) NOT NULL,
    id_mk VARCHAR(3) NOT NULL,
    nip VARCHAR(3) NOT NULL,
    nilai VARCHAR(2),
    FOREIGN KEY(nim) REFERENCES mahasiswa(nim),
    FOREIGN KEY(id_mk) REFERENCES matakuliah(id_mk)
    FOREIGN KEY(nip) REFERENCES dosen(nip)
);

INSERT INTO teach (nim, id_mk, nip, nilai) VALUES 
('1001', 'M01', '100', 'A'),
('1002', 'M01', '101', 'B'),
('1003', 'M01', '102', 'C'),
('1004', 'M01', '103', 'A'),
('1005', 'M01', '104', 'B'),
('1006', 'M01', '105', 'C'),
('1007', 'M01', '106', 'A'),
('1008', 'M01', '107', 'B'),
('1009', 'M01', '108', 'C'),
('1010', 'M01', '109', 'A'),
('1001', 'M02', '100', 'B'),
('1002', 'M02', '101', 'C'),
('1003', 'M02', '102', 'A'),
('1004', 'M02', '103', 'B'),
('1005', 'M02', '104', 'C'),
('1006', 'M02', '105', 'A'),
('1007', 'M02', '106', 'B'),
('1008', 'M02', '107', 'C'),
('1009', 'M02', '108', 'A'),
('1010', 'M02', '109', 'B');