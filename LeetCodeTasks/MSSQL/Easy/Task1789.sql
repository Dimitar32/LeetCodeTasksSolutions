select distinct e1.employee_id, iif(e2.department_id is not null, e2.department_id, e1.department_id) as department_id
from Employee e1
left outer join Employee e2 on e1.employee_id = e2.employee_id and e2.primary_flag = 'Y'