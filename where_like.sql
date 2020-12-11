
-- NOT LIKE untuk membalikan
-- persen % dibaca setelah/sebelum huruf apapun
-- underscor ____ dibaca yang mempunya 4 huruf
-- where Like ,menampilkan huruf pertama dan huruf terkahir 
SELECT firstName,`lastName` FROM employees 
WHERE lastName LIKE "%i" OR firstName LIKE 'M%'


-- where like ,menampilkan huruf yang di apit li
SELECT firstName,`lastName` FROM employees 
WHERE `firstName` LIKE '%li%'

-- where like underscor
SELECT firstName,`lastName` FROM employees 
WHERE `firstName` LIKE '_____'

