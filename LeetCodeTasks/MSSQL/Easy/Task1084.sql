/* Write your T-SQL query statement below */
;with cte as 
(
    select product_id
    from Sales
    where sale_date not between '2019-01-01' and '2019-03-31'
),
cte_sales as
(
    select distinct p.product_id, p.product_name
    from Product p
    inner join Sales s on p.product_id = s.product_id
)
select p.product_id, p.product_name
from cte_sales p
left outer join cte c on p.product_id = c.product_id 
where c.product_id is null

;with cte as 
(
    select product_id
    from Sales
    where sale_date not between '2019-01-01' and '2019-03-31'
)
select distinct p.product_id, p.product_name
from Product p
inner join Sales s on p.product_id = s.product_id
left outer join cte c on p.product_id = c.product_id 
where c.product_id is null


-- the below is the most optimal
SELECT p.product_id, p.product_name
FROM Product p
INNER JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING MIN(s.sale_date) >= '2019-01-01'
   AND MAX(s.sale_date) <= '2019-03-31'