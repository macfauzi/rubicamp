CREATE TABLE jurusan (
    id_jurusan CHAR(3) PRIMARY KEY NOT NULL,
    nama_jurusan VARCHAR(50) NOT NULL
);

INSERT INTO jurusan VALUES
('CTI', 'Teknik Informatika'),
('CSI', 'Sistem Informasi'),
('ETE', 'Teknik Elektro'),
('ETM', 'Teknik Mesin'),
('CIK', 'Ilmu Komputer');

CREATE TABLE mahasiswa (
    nim VARCHAR(4) PRIMARY KEY NOT NULL,
    nama VARCHAR(50) NOT NULL,
    alamat TEXT,
    id_jurusan CHAR(3) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id_jurusan)
);

INSERT INTO mahasiswa VALUES
('1000', 'Fauzi', 'Jl. Dipati Ukur No.235 Bandung Jawa Barat', 'CTI'),
('1001', 'Iqbal', 'Jl. Diponegoro No. 123 Jakarta DKI Jakarta', 'CSI'),
('1002', 'Yuri', 'Jl. Sudirman No. 456 Semarang Jawa Tengah', 'ETE'),
('1003', 'Andri', 'Jl. Ahmad Yani No. 789 Solo Jawa Tengah', 'ETM'),
('1004', 'Agung', 'Jl. Gatot Subroto No. 1011 Purwokerto Jawa Tengah', 'CSI'),
('1005', 'Anas', 'Jl. Pahlawan No. 1213 Bekasi Jawa Barat', 'CTI'),
('1006', 'Ardi', 'Jl. Merdeka No. 1415 Bogor Jawa Barat', 'ETE'),
('1007', 'Neta', 'Jl. Gajah Mada No. 1617 Sukabumi Jawa Barat', 'CTI'),
('1008', 'Rahmat', 'Jl. Hayam Wuruk No. 1819', 'CSI'),
('1009', 'Reza', 'Jl. Jenderal Sudirman No. 2021', 'ETM');

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
    id_mk VARCHAR(6) PRIMARY KEY NOT NULL,
    nama_mk VARCHAR(50) NOT NULL,
    sks INTEGER NOT NULL
);

INSERT INTO matakuliah VALUES
('CSI010', 'Pemrograman Web', 4),
('CTI020', 'Basis Data', 3),
('CSI030', 'Jaringan Komputer', 3),
('CTI040', 'Sistem Operasi', 3),
('CSI050', 'Data Mining', 4),
('CTI060', 'Kecerdasan Buatan', 4),
('CSI070', 'Pengembangan Aplikasi Mobile', 3),
('CTI080', 'Analisis Algoritma', 3),
('CSI090', 'Sistem Informasi Geografis', 4),
('CTI100', 'Pengolahan Citra Digital', 4);


CREATE TABLE teach (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nim VARCHAR(4) NOT NULL,
    id_mk VARCHAR(6) NOT NULL,
    nip VARCHAR(3) NOT NULL,
    nilai VARCHAR(2),
    FOREIGN KEY(nim) REFERENCES mahasiswa(nim),
    FOREIGN KEY(id_mk) REFERENCES matakuliah(id_mk)
    FOREIGN KEY(nip) REFERENCES dosen(nip)
);

INSERT INTO teach (nim, id_mk, nip) VALUES
('1000', 'CTI040','100' ),
('1001', 'CSI010', '101'),
('1002', 'CSI050', '104'),
('1003', 'CSI070', '107'),
('1004', 'CTI040', '103');