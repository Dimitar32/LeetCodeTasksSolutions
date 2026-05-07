/* Write your T-SQL query statement below */
;with cte as(
    select salary, dense_rank() over(order by salary desc) rn
    from Employee
)
select distinct salary as SecondHighestSalary
from (select 1 as dummy) d
left outer join cte c on c.rn = 2