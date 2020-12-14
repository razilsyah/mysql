-- left join sama halnya dg inner join tapi yang mempunya data null akan di tampilkan juga


SHOW DATABASES;
USE classicmodels;
SHOW TABLES;

DESCRIBE customers
DESCRIBE orders

-- left join
SELECT customerName,orderNumber FROM customers LEFT JOIN orders
ON customers.`customerNumber` = orders.`customerNumber`

-- untuk menampilkan yang null
WHERE orderNumber IS NULL