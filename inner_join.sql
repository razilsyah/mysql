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

-- inner join ,employees dan office
SELECT firstName,city FROM employees INNER JOIN offices
ON employees.`officeCode` = offices.`officeCode`;

-- using() jika kedua table memiliki nama column yang sama
SELECT firstName,city FROM employees INNER JOIN offices
USING (officeCode);

-- inner join
SELECT customerName,firstName FROM customers INNER JOIN employees
ON customers.`salesRepEmployeeNumber`= employees.`employeeNumber`;

SELECT employeeNumber,firstName,customerName,salesRepEmployeeNumber FROM `employees`,customers

















