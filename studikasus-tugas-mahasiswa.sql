-- buat database studiKasus_tugas
CREATE DATABASE studiKasus_tugas;

USE studiKasus_tugas;

-- table mahasiswa
CREATE TABLE mahasiswa (NIM VARCHAR(9) NOT NULL PRIMARY KEY,
			Nama VARCHAR(25) NOT NULL,
			alamat VARCHAR(30) NOT NULL,
			kd_prodi VARCHAR(2) NOT NULL);
			
DESCRIBE mahasiswa;

INSERT INTO mahasiswa (NIM,nama,alamat,kd_prodi) VALUES ('100101001','wahyudi','surakarta','01'),
							('100101002','sriyono','klaten','01'),
							('100202001','rustanto','sukoharjo','02'),
							('100103001','mariyatun','wonogiri','03'),
							('100202002','sri handayani','sragen','02'),
							('100204001','handayani','klaten','04'),
							('100204002','sri mariyatun','surakarta','04'),
							('100103002','eko wahyudi','surakarta','03');

SELECT * FROM mahasiswa





-- table prodi
CREATE TABLE prodi (kd_prodi VARCHAR(2) NOT NULL PRIMARY KEY,
			nama_prodi VARCHAR(30) NOT NULL,
			kd_dosen VARCHAR(6) NOT NULL);

DESCRIBE prodi;

INSERT INTO prodi (kd_prodi,nama_prodi,`kd_dosen`) VALUES ('01','sistem informasi','000001'),
								('02','manajemen informatika','000002'),
								('03','teknik informatika','000003'),
								('04','teknik komputer','000004');
								
SELECT * FROM prodi;




-- table dosen
CREATE TABLE dosen (kd_dosen VARCHAR(6) NOT NULL PRIMARY KEY,
			nama_dosen VARCHAR(40) NOT NULL,
			alamat VARCHAR(40) NOT NULL);
			
			
INSERT INTO dosen (kd_dosen,nama_dosen,alamat) VALUES ('000001','eko purwanto,M.Kom','sukoharjo'),
							('000002','faulinda ely,M.Eng ','sukoharjo'),
							('000003','joni maulindar,M.Eng','surakarta'),
							('000004','sri sumarlinda,M.Kom','yogyakarta');
							
SELECT * FROM dosen;




-- a. Tampilkan data mahasiswa (NIM, NAMA,ALAMAT) yang beralamat di SURAKARTA.

SELECT NIM,nama,alamat FROM mahasiswa
WHERE alamat = 'surakarta'



-- b. Tampilkan data mahasiswa (NIM, NAMA, ALAMAT) yang prodi=02.

SELECT * FROM mahasiswa
SELECT NIM,nama,alamat FROM mahasiswa
WHERE kd_prodi = '02'



-- c. Tampilkan data mahasiswa (NIM, NAMA, ALAMAT) yang namanya mengandung SRI.

SELECT NIM,nama,alamat FROM mahasiswa
WHERE nama LIKE 'sri%'




-- d. Tampilkan data mahasiswa (NIM, NAMA, ALAMAT) yang namanya mengandung SRI dan Beralamat di SURAKARTA.
SELECT NIM,nama,alamat FROM mahasiswa
WHERE nama LIKE 'sri%' AND alamat = 'surakarta'



-- e. Tampilkan data mahasiswa (NIM, NAMA, ALAMAT, KODE_PRODI, NAMA PRODI) yang beralamat di SUKOHARJO.
SHOW TABLES;
SELECT NIM,nama,alamat,kd_prodi,nama_prodi FROM mahasiswa INNER JOIN prodi
USING (kd_prodi)
WHERE alamat = 'sukoharjo'



-- f. Tampilkan data mahasiswa (NIM, NAMA, ALAMAT, KODE_PRODI, NAMA PRODI) yang beralamat NAMA_PRODI=TEKNIK INFORMATIKA.
SELECT NIM,nama,alamat,kd_prodi,nama_prodi FROM mahasiswa INNER JOIN prodi
USING (kd_prodi)
WHERE nama_prodi = 'teknik informatika'


-- g. Tampilkan data mahasiswa (NIM, NAMA, ALAMAT, KODE_PRODI, NAMA PRODI) yang namanya mengandung SRI.

SELECT NIM,nama,alamat,kd_prodi,nama_prodi FROM mahasiswa INNER JOIN prodi
USING (kd_prodi)
WHERE nama LIKE 'sri%'


-- h. Tampilkan data mahasiswa (NIM, NAMA, ALAMAT, KODE_PRODI, NAMA PRODI) yang namanya mengandung SRI dan NAMA_PRODI=TEKNIK KOMPUTER.
SELECT *,`nama_prodi` FROM mahasiswa INNER JOIN prodi
USING (kd_prodi)
WHERE nama LIKE 'sri%' AND nama_prodi = 'teknik komputer'



-- i. Tampilkan data mahasiswa (NIM, NAMA, ALAMAT, KODE_PRODI, NAMA PRODI,KD_DOSEN, NAMA_DOSEN) yang beralamat di SURAKARTA.

SELECT NIM,nama,a.alamat,a.kd_prodi,nama_prodi,b.kd_dosen,nama_dosen FROM mahasiswa AS a INNER JOIN prodi AS b INNER JOIN dosen
ON a.`kd_prodi` = b.`kd_prodi` AND b.`kd_dosen` = dosen.`kd_dosen`
WHERE a.alamat = 'surakarta'



-- j. Tampilkan data mahasiswa (NIM, NAMA, ALAMAT, KODE_PRODI, NAMA PRODI,KD_DOSEN, NAMA_DOSEN) yang namanya mengandung SRI dan NAMA_PRODI=TEKNIK KOMPUTER.

SELECT NIM,nama,a.alamat,a.kd_prodi,nama_prodi,b.kd_dosen,nama_dosen FROM mahasiswa AS a INNER JOIN prodi AS b INNER JOIN dosen
ON a.`kd_prodi` = b.`kd_prodi` AND b.`kd_dosen` = dosen.`kd_dosen`
WHERE a.nama LIKE 'sri%' AND `nama_prodi` = 'teknik komputer'
















			

