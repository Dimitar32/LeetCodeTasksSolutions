select teacher_id, count(*) as cnt
from(
    select distinct teacher_id, subject_id
    from Teacher
) t
group by teacher_id