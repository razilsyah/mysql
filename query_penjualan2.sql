-- membuat database baru
CREATE DATABASE penjualan2;

USE barang;

-- membuat table barang
CREATE TABLE barang (kode VARCHAR(255) NOT NULL PRIMARY KEY,
			nama VARCHAR(50) NOT NULL,
			satuan VARCHAR(10) NOT NULL,
			harga INT(11)NOT NULL,
			categori VARCHAR(50) NOT NULL
			);
			

-- membuat tabel pelanggan
CREATE TABLE pelanggan (id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
			nama VARCHAR(50) NOT NULL,
			jenis_kelamin VARCHAR(1) NOT NULL,
			telepon VARCHAR(12) NOT NULL
			);
			
			
			
			
-- membuat tabel transaksi_barang
CREATE TABLE transaksi_barang (id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
				id_pelanggan INT(11) NOT NULL,
				kode_barang VARCHAR(255) NOT NULL,
				jumlah INT(11) NOT NULL,
				tanggal DATE NOT NULL
				);




-- memasukan / menambah data record
INSERT INTO barang (kode,nama,satuan,harga,categori) VALUES ('B001','PEPSODEN','UNIT',5000,'ALAT MANDI'),
								('B002','TARO','BUNGKUS',8000,'MAKANAN'),
								('B003','KUE','BUNGKUS',7500,'MAKANAN'),
								('B004','SIKAT GIGI','UNIT',2500,'ALAT MANDI'),
								('B005','MIE','BUNGKUS',2500,'MAKANAN')





-- menampilkan data/record barang
SELECT * FROM barang;


-- menambahkan data / record pelanggan 
INSERT INTO pelanggan ( nama,jenis_kelamin,telepon) VALUES ('danil','L','081234567890'),
							    ('razil','L','081234567891'),
							    ('khalinda','P','081234567892')

SELECT * FROM pelanggan;
 
 
 
 
 -- menambahkan data / record transaksi_barang 
 INSERT INTO transaksi_barang (id_pelanggan,kode_barang,jumlah,tanggal) VALUES (1,'B001',2,'2020-12-10'),
										(1,'B002',5,'2020-12-10'),
										(2,'B001',3,'2020-12-09'),
										(2,'B003',2,'2020-12-09'),
										(3,'B003',2,'2020-12-10'),
										(4,'B004',5,'2020-12-10'),
										(4,'B001',3,'2020-12-09'),
										(4,'B003',2,'2020-12-09'),
										(5,'B007',3,'2020-12-10')

SELECT * FROM transaksi_barang;


				
-- 1.tampilkan data barang dengan nama categori makanan dan harga yang paling murah
SELECT * FROM barang WHERE categori = 'makanan' AND harga <= 3000

-- tampilkan data barang harga termurah mengunakan min()
SELECT MIN( harga )FROM barang

-- tampilkan data barang harga termahal menggunakan max()
SELECT MAX(harga) AS harga_termahal FROM barang

-- tampilkan data barang harga rata-rata
SELECT AVG(harga) AS harga_rata_rata FROM barang











				
				
				
				
				