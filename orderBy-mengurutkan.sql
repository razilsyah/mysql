

-- order by ,mengurutkan dari abjad,angka dari yang terkecil
SELECT `productName`,`productLine`,buyPrice FROM `products` ORDER BY productName ASC,`productLine`DESC

-- order by mengurutkan dari yang besar tambahkan DESC
SELECT `productName`,`productLine`,buyPrice FROM `products` ORDER BY `buyPrice` DESC

SELECT `productName`,`productLine`,buyPrice,MSRP FROM `products`

-- hasil untung dari MSRP - buyPrice
SELECT `productName`,`productLine`,MSRP - buyPrice AS dapat_untung FROM `products` ORDER BY dapat_untung DESC