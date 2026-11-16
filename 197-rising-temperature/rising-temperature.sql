# Write your MySQL query statement below
SELECT td.id as Id FROM Weather td
    LEFT JOIN Weather pd
        ON DATEDIFF(td.recordDate, pd.recordDate) = 1
    WHERE td.temperature > pd.temperature