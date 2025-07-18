select e1.employee_id, e1.[name], count(*) reports_count, round(avg(e2.age*1.00),0) average_age
from Employees e1
inner join Employees e2 on e1.employee_id = e2.reports_to
group by e1.employee_id, e1.[name]
order by e1.employee_id asc