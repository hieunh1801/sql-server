-- 1. Lấy ra 10 hàng đầu (1 -> 10)
USE BikeStores
SELECT TOP 10 product_id, product_name, list_price
FROM
    production.products
ORDER BY product_id

-- 2. Lấy ra 10% số rows đầu tiên
SELECT TOP 10 PERCENT product_id, product_name, list_price
FROM
    production.products
ORDER BY product_id