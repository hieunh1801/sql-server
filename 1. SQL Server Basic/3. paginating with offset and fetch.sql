-- Chú ý: offset và fetch đi cùng với mệnh đề ORDER BY

-- 2. Bỏ qua 10 hàng đầu tiên (11 -> ~)
SELECT product_id, product_name, list_price
FROM
    production.products
ORDER BY product_id
OFFSET 10 ROWS; -- bỏ qua 10 hàng đầu tiên

-- 3. Bỏ qua 10 hàng đầu, select 9 hàng tiếp theo thôi (11 -> 19)
SELECT product_id, product_name, list_price
FROM
    production.products
ORDER BY product_id
OFFSET 10 ROWS -- bỏ qua 10 hàng đầu tiên
FETCH NEXT 9 ROWS ONLY -- lấy 9 hàng tiếp theo

-- 4. phân trang. 
-- page_number = 1, page_size = 10 (1 -> 10)
-- page_number = 2, page_size = 10 (11 -> 20)
-- page_number = 3, page_size = 10 (21 -> 30)
SELECT product_id, product_name, list_price
FROM
    production.products
ORDER BY product_id
OFFSET (3 - 1)*10 ROWS -- bỏ qua 10 hàng đầu tiên
FETCH NEXT 10 ROWS ONLY -- lấy 9 hàng tiếp theo