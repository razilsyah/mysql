-- cara menampilkan field yang diinginkan pada tabel products
SELECT productCode,`productName` FROM `products`;

-- cara menampilkan field yang di inginkan dan di batasi hanya 10 data ,dari 1-10
SELECT productCode,`productName` FROM `products` LIMIT 10;

-- cara menampilkan field yang di inginkan dan di batasi dari urutan ke 10 ke atas ,dari 10-20
SELECT productCode,`productName` FROM `products` LIMIT 10,10; 


-- cara menggunakan where
SELECT productName,`productLine`,buyPrice FROM products
WHERE `productLine`= 'Motorcycles'

SELECT productName,`productLine`,buyPrice FROM products
WHERE buyPrice < 50 AND `productLine`= 'motorcycles'

-- menggunakan where dan in
SELECT productName,`productLine`,buyPrice FROM products
WHERE buyPrice > 0 AND productLine IN('motorcycles','ships')

-- menggunakan where between ,yaitu anatara 50 and 60
SELECT productName,`productLine`,buyPrice FROM products
WHERE buyPrice BETWEEN 50 AND 60

















