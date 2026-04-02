/* Write your T-SQL query statement below */
;with cte as
(
    select 
        person_name,
        sum([weight]) over(order by turn) w
    from [Queue]
)
select top 1 person_name
from cte
where w <= 1000
order by w desc