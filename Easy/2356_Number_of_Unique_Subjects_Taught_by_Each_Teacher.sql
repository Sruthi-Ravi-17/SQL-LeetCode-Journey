select count(Distict subject_id) as cnt, teacher_id
from Teacher 
group by teacher_id
order by teacher_id DESC;