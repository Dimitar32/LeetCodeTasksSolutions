/* Write your T-SQL query statement below */
;with cte as(
    select e.name, e.salary, d.name as Department, dense_rank() over(partition by e.departmentid order by e.salary desc) rn
    from Employee e
    inner join Department d on e.departmentid = d.id
)
select c.Department, c.name as Employee, c.salary as Salary
from cte c 
where c.rn in(1,2,3)