/* Fungsi agregasi digunakan untuk menampilkan nilai-nilai atribut yang ada dalam tabel, sering pula ada kebutuhan untuk menampilkan data-data agregasi. Seperti: Banyaknya record, total nilai suatu atribut, rata-rata nilai atribut, nilai atribut terbesar atau terkecil. Data agregasi tersebut dapat diperoleh dengan fungsi-fungsi yang juga kita temukan padanannya dalam bahasa query formal.

Beberapa fungsi agregasi:
Count : Untuk mendapatkan nilai banyaknya record hasil query.
Sum :Untuk mendapatkan nilai total suatu atribut numerik hasil query.
Avg :Untuk mendapatkan nilai rata-rata suatu atribut numerik hasil query.
Max :Untuk mendapatkan nilai terbesar suatu atribut numerik hasil query.
Min :Untuk mendapatkan nilai terkecil suatu atribut numerik hasil query.
Perkataan ‘hasil query’ pada uraian masing-masing fungsi agregasi diatas penting untuk diperhatikan, karena fungsi-fungsi tersebut memang hanya diberlakukan pada hasil query.
*/


-- count 
SELECT COUNT(*) FROM employees;

SELECT COUNT(*) FROM employees JOIN offices
USING (officeCode)
WHERE city = 'boston'


-- sum()
DESCRIBE payments;
SELECT amount,paymentDate FROM payments
WHERE YEAR (paymentDate) = '2003'

SELECT SUM(amount) AS jumlah_pembayaran_2003 FROM payments 
WHERE YEAR (paymentDate) = '2003'


-- AVG 
SHOW TABLES
DESCRIBE products;
SELECT productName,productLine,buyPrice FROM products

SELECT AVG( buyPrice) FROM products
WHERE productLine = 'motorcycles'



-- min()
SELECT * FROM products
SELECT MIN(msrp) FROM products

-- max ()
SELECT MAX(msrp) FROM products
WHERE productLine = 'motorcycles'
















