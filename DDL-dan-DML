`barang`-- DDL (data definision language) create,rename,alter,drop

-- menampilkan isi databases
SHOW DATABASES;

-- membuat databases
CREATE DATABASE toko;

-- menghapus database toko
DROP DATABASE toko;


-- untuk menggunakan database yang di pilih
USE toko;


-- membuat table satuan
CREATE TABLE satuan (satuan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
			satuan_nama VARCHAR(255) NOT NULL);

-- menampilkan tabel			
SHOW TABLES;

-- menampilkan data 
DESCRIBE satuan;


-- membuat table supplier
CREATE TABLE supplier (supplier_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
			supplier_nama VARCHAR(255) NOT NULL,
			supplier_alamat TEXT NOT NULL);


-- membuat table cabang
CREATE TABLE cabang (cabang_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
			cabang_nama VARCHAR(255) NOT NULL,
			cabang_alamat TEXT NOT NULL);




-- membuat tabel barang dan foreign key
CREATE TABLE barang (barang_id INT NOT NULL AUTO_INCREMENT,
			barang_nama VARCHAR(50) NOT NULL,
			harga_beli INT NOT NULL,
			harga_jual INT NOT NULL,
			supplier_id INT,
			satuan_id INT,
			INDEX (`supplier_id`),
			INDEX (satuan_id),
			FOREIGN KEY (supplier_id) REFERENCES supplier(`supplier_id`)
			ON DELETE RESTRICT ON UPDATE CASCADE,
			FOREIGN KEY (satuan_id) REFERENCES `satuan` ( `satuan_id`)
			ON DELETE RESTRICT ON UPDATE CASCADE,
			PRIMARY KEY (barang_id)
			);
			

-- menambahkan column di table barang
ALTER TABLE barang ADD deskripsi TEXT;

-- menghapus column 
ALTER TABLE barang DROP deskripsi;





-- DML (data manipulasion language) insert,delete,select,update

-- Insert : merupakan perintah yang berfungsi untuk menambah / memasukan data atau record pada database.

INSERT INTO satuan(satuan_id,satuan_nama) VALUES(NULL,'pcs')
INSERT INTO satuan(satuan_nama) VALUES ('KG'),('buah'),('liter')

INSERT INTO supplier(`supplier_nama`,`supplier_alamat`) VALUES ('PT MEKAR JAYA','JL IR.SOEGANDA'),('PT COCA-COLA','JL RANCAEKEK')

INSERT INTO cabang (cabang_nama,cabang_alamat) VALUES ('cabang bandung','jl.parakan muncang')

INSERT INTO barang (barang_nama,harga_beli,harga_jual,supplier_id,satuan_id,deskripsi) VALUES ('pokari-sweet',3000,6000,2,1,'500mg')


-- menambahkan column atau field pada table barang
ALTER TABLE barang ADD deskripsi TEXT;

-- Select : merupakan perintah yang berfungs untuk melihat atau menampilkan data pada database.

SELECT * FROM satuan;
SELECT * FROM supplier;
SELECT * FROM cabang;
SELECT * FROM barang;
			

-- update data/record barang herga_beli asalnya 3000 menjadi 4500
UPDATE barang SET `harga_beli` = 4500 WHERE barang_id = 3
UPDATE barang SET barang_nama = 'vitamin c' WHERE barang_id = 3


-- delete data/record table satuan field satuan_nama liter
DELETE FROM satuan WHERE satuan_id = 4



			
