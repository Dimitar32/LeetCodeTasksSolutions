/* Write your T-SQL query statement below */
select sp1.name
from SalesPerson sp1
where sp1.name not in(
    select sp.name
    from SalesPerson sp
    inner join Orders o on sp.sales_id = o.sales_id
    inner join Company c on o.com_id = c.com_id 
    where c.name = 'RED'
)

--below is better solution
SELECT sp.name
FROM SalesPerson sp
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    INNER JOIN Company c ON o.com_id = c.com_id
    WHERE o.sales_id = sp.sales_id
      AND c.name = 'RED'
);