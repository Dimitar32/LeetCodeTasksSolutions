select coalesce(w1.id, 1) 'Id'
from Weather w1
inner join Weather w2 on w2.recordDate = CAST(DATEADD(day, -1, w1.recordDate) AS DATE)
where w1.temperature > w2.temperature 