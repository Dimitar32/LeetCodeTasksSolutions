/* Write your T-SQL query statement below */
;with cte as(
    select player_id, event_date as first_login, dense_rank() over(partition by player_id order by event_date asc) rn
    from Activity
)
select player_id, first_login
from cte
where rn = 1

/*
also can be made with grouping

select player_id, min(event_date) first_login
from Activity
group by player_id

*/