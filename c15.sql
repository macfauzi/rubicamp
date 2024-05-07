ALTER TABLE mahasiswa 
ADD COLUMN umur INTEGER;

UPDATE mahasiswa
SET umur = 30
WHERE nim = '1000';

UPDATE mahasiswa
SET umur = 19
WHERE nim = '1001';

UPDATE mahasiswa
SET umur = 30
WHERE nim = '1002';

UPDATE mahasiswa
SET umur = 27
WHERE nim = '1003';

UPDATE mahasiswa
SET umur = 21
WHERE nim = '1004';

UPDATE mahasiswa
SET umur = 19
WHERE nim = '1005';

UPDATE mahasiswa
SET umur = 18
WHERE nim = '1006';

UPDATE mahasiswa
SET umur = 19
WHERE nim = '1007';

UPDATE mahasiswa
SET umur = 20
WHERE nim = '1008';

UPDATE mahasiswa
SET umur = 21
WHERE nim = '1009';

UPDATE mahasiswa
SET umur = 19
WHERE nim = '1010';

UPDATE mahasiswa
SET umur = 23
WHERE nim = '1011';

UPDATE mahasiswa
SET umur = 24
WHERE nim = '1012';

UPDATE mahasiswa
SET umur = 21
WHERE nim = '1013';

UPDATE mahasiswa
SET umur = 18
WHERE nim = '1014';

UPDATE mahasiswa
SET umur = 23
WHERE nim = '1015';

UPDATE mahasiswa
SET umur = 21
WHERE nim = '1016';

UPDATE mahasiswa
SET umur = 20
WHERE nim = '1017';

UPDATE mahasiswa
SET umur = 18
WHERE nim = '1018';

UPDATE mahasiswa
SET umur = 19
WHERE nim = '1019';

INSERT INTO mahasiswa VALUES
('1020', 'Mira Wulandari', 'Jl. Cihampelas No. 20 Bandung Jawa Barat', '001', 22),
('1021', 'Nana Lestari', 'Jl. R.E. Martadinata No. 42 Bandung Jawa Barat', '001', 21),
('1022', 'Oky Kurniawan', 'Jl. Teuku Umar No. 64 Surabaya Jawa Timur', '004', 23),
('1023', 'Putri Utami', 'Jl. Gajah Mada No. 86 Semarang Jawa Tengah', '002', 19),
('1024', 'Rani Fitriani', 'Jl. Ahmad Yani No. 30 Surakarta Jawa Tengah', '004', 20),
('1025', 'Susi Widayanti', 'Jl. Diponegoro No. 52 Malang Jawa Timur', '001', 21),
('1026', 'Tono Sutrisno', 'Jl. Gubernur Suryo No. 74 Surabaya Jawa Timur', '006', 24),
('1027', 'Umi Rosidah', 'Jl. Panglima Sudirman No. 96 Yogyakarta Yogyakarta', '002', 19),
('1028', 'Vina Septiani', 'Jl. Sudirman No. 30 Bandung Jawa Barat', '004', 22),
('1029', 'Dina Wijaya', 'Jl. Gatot Subroto No. 32 Malang Jawa Timur', '001', 18);

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

INSERT INTO teach (nim, id_mk, nip, nilai) VALUES
('1000', 'M03', '100', 'A'),
('1000', 'M07', '101', 'B'),
('1001', 'M10', '104', 'C'),
('1001', 'M11', '105', 'D'),
('1002', 'M14', '106', 'E'),
('1002', 'M02', '107', 'A'),
('1003', 'M08', '108', 'B'),
('1003', 'M10', '109', 'C'),
('1004', 'M01', '110', 'D'),
('1004', 'M07', '101', 'E'),
('1005', 'M17', '109', 'A'),
('1005', 'M03', '107', 'B'),
('1006', 'M12', '103', 'C'),
('1006', 'M09', '104', 'D'),
('1007', 'M08', '108', 'E'),
('1007', 'M09', '106', 'A'),
('1008', 'M20', '107', 'B'),
('1008', 'M07', '105', 'C'),
('1009', 'M01', '109', 'D'),
('1009', 'M04', '102', 'E'),
('1010', 'M17', '101', 'A'),
('1010', 'M01', '108', 'B'),
('1011', 'M12', '103', 'C'),
('1011', 'M09', '101', 'D'),
('1012', 'M22', '105', 'E'),
('1012', 'M12', '108', 'A'),
('1013', 'M05', '101', 'B'),
('1013', 'M11', '107', 'C'),
('1014', 'M22', '102', 'D'),
('1014', 'M19', '109', 'E');

-- Task #1
SELECT nim, nama, alamat, umur, nama_jurusan 
FROM mahasiswa 
LEFT JOIN jurusan USING(id_jurusan);

-- Task #2
SELECT nim, nama, alamat, umur, nama_jurusan 
FROM mahasiswa 
LEFT JOIN jurusan USING(id_jurusan)
WHERE umur < 20;

-- Task #3
SELECT nim, nama AS nama_mahasiswa, nilai 
FROM mahasiswa 
JOIN teach USING(nim) 
WHERE nilai < 'B';

-- Task #4
SELECT nim, nama, SUM(sks) AS total_sks 
FROM mahasiswa 
LEFT JOIN teach USING(nim)
LEFT JOIN matakuliah USING(id_mk)
GROUP BY nim, nama
HAVING total_sks > 10;

-- Task #5
SELECT nim, nama, nama_mk AS mata_kuliah
FROM mahasiswa
LEFT JOIN teach USING(nim)
LEFT JOIN matakuliah USING (id_mk)
WHERE nama_mk LIKE '%Data Mining%';

-- Task #6
SELECT nama_dosen, COUNT (DISTINCT nim) AS jumlah_mahasiswa 
FROM dosen 
LEFT JOIN teach USING(nip) 
LEFT JOIN mahasiswa USING(nim)
GROUP BY nama_dosen;

/* previous query

SELECT nama_dosen, count(nim) AS jumlah_mahasiswa 
FROM mahasiswa 
LEFT JOIN teach USING(nim) 
LEFT JOIN dosen USING(nip) 
GROUP BY nama_dosen; 
*/

-- Task #7
SELECT * 
FROM mahasiswa 
ORDER BY umur ASC;

-- Task #8
SELECT nim, nama, nama_mk, nilai, nama_jurusan AS jurusan, nama_dosen AS dosen
FROM mahasiswa 
LEFT JOIN teach USING(nim)
LEFT JOIN matakuliah USING(id_mk)
LEFT JOIN dosen USING(nip)
LEFT JOIN jurusan USING(id_jurusan)
WHERE nilai = 'D' OR nilai = 'E';
