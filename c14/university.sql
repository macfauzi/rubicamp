CREATE TABLE jurusan (
    jurusan_id CHAR(3) PRIMARY KEY NOT NULL,
    namajurusan VARCHAR(50) NOT NULL
);

INSERT INTO jurusan ("jurusan_id", "namajurusan") VALUES
('CTI', 'Teknik Informatika'),
('CSI', 'Sistem Informasi'),
('ETE', 'Teknik Elektro'),
('ETM', 'Teknik Mesin'),
('CIK', 'Ilmu Komputer');



CREATE TABLE mahasiswa (
    nim VARCHAR(10) PRIMARY KEY NOT NULL,
    nama VARCHAR(50) NOT NULL,
    alamat TEXT, 
    jurusan_id CHAR(3) NOT NULL,
    FOREIGN KEY(jurusan_id) REFERENCES jurusan(jurusan_id)
);

INSERT INTO mahasiswa VALUES
('2422410101', 'Fauzi', 'Jl. Dipati Ukur No.235 Bandung Jawa Barat', 'CTI'),
('2422520002', 'Iqbal', 'Jl. Diponegoro No. 123 Jakarta DKI Jakarta', 'CSI'),
('2422510003', 'Yuri', 'Jl. Sudirman No. 456 Semarang Jawa Tengah', 'ETE'),
('2422530004', 'Andri', 'Jl. Ahmad Yani No. 789 Solo Jawa Tengah', 'ETM'),
('2422520005', 'Agung', 'Jl. Gatot Subroto No. 1011 Purwokerto Jawa Tengah', 'CSI'),
('2422510006', 'Anas', 'Jl. Pahlawan No. 1213 Bekasi Jawa Barat', 'CTI'),
('2422530007', 'Ardi', 'Jl. Merdeka No. 1415 Bogor Jawa Barat', 'ETE'),
('2422510008', 'Neta', 'Jl. Gajah Mada No. 1617 Sukabumi Jawa Barat', 'CTI'),
('2422520009', 'Rahmat', 'Jl. Hayam Wuruk No. 1819', 'CSI'),
('2422530010', 'Reza', 'Jl. Jenderal Sudirman No. 2021', 'ETM');


CREATE TABLE dosen (
    nip VARCHAR(8) PRIMARY KEY NOT NULL,
    nama VARCHAR(50) NOT NULL
);

INSERT INTO dosen VALUES
('11201013', 'Mark Zuckerberg'),
('11202014', 'Bill Gates'),
('11201015', 'Tim Cook'),
('11202016', 'Satya Nadella'),
('11201017', 'Jeff Bezos'),
('11202018', 'Larry Page'),
('11201019', 'Sundar Pichai'),
('11202020', 'Jack Dorsey'),
('11201021', 'Elon Reeve Musk'),
('11202022', 'Steve Jobs');


CREATE TABLE teach (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nim VARCHAR(10) NOT NULL,
    nip VARCHAR(8) NOT NULL,
    FOREIGN KEY(nim) REFERENCES mahasiswa(nim),
    FOREIGN KEY(nip) REFERENCES dosen(nip)
);

INSERT INTO teach (nim, nip) VALUES
('2422520002', '11201013'),
('2422510003', '11202014'),
('2422530004', '11201015'),
('2422520005', '11202016'),
('2422510006', '11201017'),
('2422530007', '11202018'),
('2422510008', '11201019'),
('2422520009', '11202020'),
('2422530010', '11201021');



CREATE TABLE matakuliah (
    matakuliah_id VARCHAR(6) PRIMARY KEY NOT NULL,
    nama VARCHAR(50) NOT NULL,
    sks INTEGER NOT NULL,
    nip VARCHAR(8) NOT NULL,
    FOREIGN KEY(nip) REFERENCES dosen(nip)
);

INSERT INTO matakuliah (matakuliah_id, nama, sks, nip) VALUES
('CSI010', 'Pemrograman Web', 4, '11201013'),
('CTI020', 'Basis Data', 3, '11202014'),
('CSI030', 'Jaringan Komputer', 3, '11201015'),
('CTI040', 'Sistem Operasi', 3, '11202016'),
('CSI050', 'Data Mining', 4, '11201017'),
('CTI060', 'Kecerdasan Buatan', 4, '11202018'),
('CSI070', 'Pengembangan Aplikasi Mobile', 3, '11201019'),
('CTI080', 'Analisis Algoritma', 3, '11202020'),
('CSI090', 'Sistem Informasi Geografis', 4, '11201021'),
('CTI100', 'Pengolahan Citra Digital', 4, '11201013');



CREATE TABLE enroll (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nim VARCHAR(10) NOT NULL,
    matakuliah_id VARCHAR(6) NOT NULL,
    nilai CHAR,
    FOREIGN KEY(nim) REFERENCES mahasiswa(nim),
    FOREIGN KEY(matakuliah_id) REFERENCES matakuliah(matakuliah_id)
);

INSERT INTO enroll (nim, matakuliah_id, nilai) VALUES
('2422520002', 'CSI010', 'A'),
('2422510003', 'CTI020', 'A'),
('2422530004', 'CSI030', 'A'),
('2422520005', 'CTI040', 'B'),
('2422510006', 'CSI050', 'B'),
('2422530007', 'CTI060', 'A'),
('2422510008', 'CSI070', 'A'),
('2422520009', 'CTI080', 'B'),
('2422530010', 'CSI090', 'A'),
('2422520002', 'CTI100', 'B');
