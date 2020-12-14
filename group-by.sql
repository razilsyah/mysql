-- group by yaitu mengelompokan data dimana hasil dari fungsi agregat

-- kasus pertamana hitung karyawan yang berada di setiap city
USE classicmodels;
SHOW TABLES

DESCRIBE offices
DESCRIBE employees

SELECT city,firstName FROM offices INNER JOIN employees
USING (officeCode)

-- group by city
SELECT city,COUNT(*) FROM offices INNER JOIN employees
USING (officeCode)
GROUP BY city;