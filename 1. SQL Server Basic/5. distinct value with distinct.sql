-- 1. distinct on 1 column
SELECT DISTINCT city
FROM sales.customers
ORDER BY city;

-- 2. distinct on multiple column
SELECT city, state
FROM sales.customers
ORDER BY city, state;