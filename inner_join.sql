-- join digunakan ketika membutuhkan informasi yang berasal dari 2 tabel atau lebih

-- contoh 
-- ingin mengetahui nama kota dari seorang employee (nama kota di table office dan seorang employee di table employee)

-- menampilakan database
SHOW DATABASES;

-- ambil database classicModels
USE classicmodels;

-- tampilkan table 
SHOW TABLES;

DESCRIBE `employees`
DESCRIBE offices

-- inner join
SELECT firstName,city FROM employees INNER JOIN offices
ON employees.`officeCode` = offices.`officeCode`;