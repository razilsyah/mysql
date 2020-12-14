-- self join yaitu untuk menjoin ke tabelnya sendiri

SELECT employeeNumber,firstName,reportsTo,jobTitle FROM employees

-- self join 
-- contoh menampilkan karyawan dengan bawahannya
SELECT a.firstName,a.jobTitle,b.firstName,b.jobTitle FROM employees AS a INNER JOIN employees AS b
ON a.employeeNumber = b.reportsTo;

-- contoh menampilkan semua karyawan dengan dan tidak ada bawahan
SELECT a.firstName,a.jobTitle,b.firstName,b.jobTitle FROM employees AS a LEFT JOIN employees AS b
ON a.employeeNumber = b.reportsTo;