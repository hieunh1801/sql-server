USE BikeStores
-- 1. sorting on 1 column
SELECT first_name, last_name
FROM sales.customers
ORDER BY first_name ASC;

-- 2. sorting on multiple column
SELECT first_name, last_name
FROM sales.customers
ORDER BY first_name ASC, last_name DESC;

-- 3. Sort a result set by an expression
-- trong expression ta viết biểu thức tính toán trên row và trả về cái gì đó
-- vd: sort theo full name
-- vd: sort theo tổng số kí tự của fist_name và last_name
-- vd: sort theo street với số của street là lớn nhất (tách tên và số của street và lấy theo số)
SELECT first_name, last_name
FROM sales.customers
ORDER BY LEN(first_name) DESC;
