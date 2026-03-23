/* Write your T-SQL query statement below */
;with cte as(
    select num, lag(num) over(order by id) prev_num, lead(num) over(order by id) next_num
    from Logs
)
select distinct num as ConsecutiveNums 
from cte
where num = prev_num and num = next_num