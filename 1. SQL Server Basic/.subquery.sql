-- SUBQUERY được dùng trong các trường hợp sau
-- 1. In place of an expression
SELECT order_id, order_date, ( SELECT
                                MAX (list_price)
                                FROM
                                    sales.order_items i
                                WHERE
                                    i.order_id = o.order_id
                            ) AS max_list_price
FROM sales.orders o
order by order_date desc
-- 2. With IN or NOT IN - có trong/ không có trong list value
SELECT
    product_id,
    product_name
FROM
    production.products
WHERE
    category_id IN (
        SELECT
            category_id
        FROM
            production.categories
        WHERE
            category_name = 'Mountain Bikes'
        OR category_name = 'Road Bikes'
    );
-- 3. With ANY or ALL
SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price >= ANY ( -- lớn hơn bất kì giá trị nào select ra được
        SELECT
            AVG (list_price)
        FROM
            production.products
        GROUP BY
            brand_id
    )

-- 4. With EXISTS or NOT EXISTS
-- 5. In UPDATE, DELETE, or INSERT statement
-- 6. In the FROM clause
SELECT 
   AVG(order_count) average_order_count_by_staff
FROM
(
    SELECT 
 staff_id, 
        COUNT(order_id) order_count
    FROM 
 sales.orders
    GROUP BY 
 staff_id
) t;