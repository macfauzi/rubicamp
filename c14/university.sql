CREATE TABLE jurusan (
    jurusan_id CHAR(3) PRIMARY KEY NOT NULL,
    namajurusan VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    nim VARCHAR(4) PRIMARY KEY NOT NULL,
    nama VARCHAR(50) NOT NULL,
    alamat TEXT, 
    jurusan_id CHAR(3) NOT NULL,
    FOREIGN KEY(jurusan_id) REFERENCES jurusan(jurusan_id)
);

CREATE TABLE dosen (
    nip VARCHAR(4) PRIMARY KEY NOT NULL,
    
);