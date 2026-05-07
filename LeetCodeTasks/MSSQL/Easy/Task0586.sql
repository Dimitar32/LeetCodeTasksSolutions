/* Write your T-SQL query statement below */
;with cte as(
    select customer_number, row_number() over(order by  count(order_number) desc) rn
    from Orders
    group by customer_number
)
select customer_number 
from cte
where rn = 1
