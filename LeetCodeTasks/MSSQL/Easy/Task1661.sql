/* Write your T-SQL query statement below */
select machine_id, cast(avg(tim) AS DECIMAL(10, 3)) 'processing_time'
from(
select a1.machine_id, (a2.timestamp - a1.timestamp) tim
    from Activity a1
    inner join Activity a2 on a1.machine_id = a2.machine_id and a1.process_id = a2.process_id
    where a1.activity_type = 'start' and a2.activity_type = 'end'
) w
group by machine_id