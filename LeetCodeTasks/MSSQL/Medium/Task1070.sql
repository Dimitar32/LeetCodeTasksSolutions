/* Write your T-SQL query statement below */
;with cte_first_year as
(
    select min(year) as [first_year], product_id
    from Sales
    group by product_id
)
select s.product_id, fy.first_year, s.quantity, s.price
from Sales s
inner join cte_first_year fy 
            on s.product_id = fy.product_id
            and s.year = fy.first_year
