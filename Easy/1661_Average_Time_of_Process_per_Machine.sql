select a.machine_id, ROUND(AVG(b.timestamp-a.timestamp),3) as processing_time
from a.Activity, b.Activity
where
a.machine_id = b.machine_id
AND
a.process_id = b.process_id
AND 
a.activity_type = 'start'
AND
b.activity_type = 'end'
group by machine_id;