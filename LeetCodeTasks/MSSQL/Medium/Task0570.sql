select e2.name
from Employee e2
where e2.id in(
    select e1.managerId
    from Employee e1
    group by e1.managerId
    having e1.managerId is not null and count(*) >= 5)