/* Write your T-SQL query statement below */
declare @p_count int = (select count(distinct player_id) from Activity)
;with cte_first_login as
(
    select min(event_date) as min_event_date, player_id
    from Activity
    group by player_id
), 
cte as
(
    select 
            event_date,  
            player_id
    from Activity
)
select cast(cast(count(fl.player_id) as decimal(9,2))/@p_count as decimal(9,2)) as fraction
from cte_first_login fl
inner join cte c 
                on fl.player_id = c.player_id 
                and dateadd(day, 1, fl.min_event_date) = c.event_date