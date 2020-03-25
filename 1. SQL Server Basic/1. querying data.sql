use BikeStores;

-- 1. select full columncolumn
-- khi sqlserver thực thi SELECT query thì:
-- FROM được thực hiện trước rồi tới SELECT
SELECT * 
FROM production.brands

-- chú ý: select * chỉ nên dùng khi kiểm tra bảng. ko nên dùng ở production
-- lý do: 
    -- gây ra dư thừa dữ liệu => khi get data thì chậm
    -- khi ta add cột mới vào => nó tự select ra luôn 
    -- => đối với java và các ngôn ngữ chặt chẽ khác sẽ gãy luôn vì nó 

-- 2. thứ tự select
-- Thứ tự chạy: FROM => WHERE => SELECT
SELECT *
FROM sales.customers
WHERE state = 'CA';

-- 3. thứ tự chạy lệnh select
-- Thứ tự chạy: FROM => WHERE => GROUP BY => SELECT => ORDER BY
USE BikeStores
SELECT city, COUNT (*)
FROM sales.customers
WHERE COUNT (*) > 10
GROUP BY city
HAVING COUNT (*) > 10
ORDER BY city;