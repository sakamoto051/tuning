SELECT
    product_id 
FROM
    PriceByAge 
GROUP BY
    product_id 
HAVING
    SUM(high_age - low_age + 1) = 101
