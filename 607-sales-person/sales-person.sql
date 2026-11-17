# Write your MySQL query statement below
SELECT p.name
    FROM SalesPerson p
    WHERE NOT p.sales_id IN (SELECT p.sales_id
        FROM SalesPerson p
        INNER JOIN Orders o ON p.sales_id = o.sales_id
        INNER JOIN Company c ON o.com_id = c.com_id
        WHERE c.name = "RED")


