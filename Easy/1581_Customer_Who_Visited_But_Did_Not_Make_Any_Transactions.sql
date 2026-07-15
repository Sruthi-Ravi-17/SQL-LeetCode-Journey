select V.customer_id, count(*) as count_no_trans
from Visits V
Left Join Transactions T on V.visit_id = T.visit_id
where T.transaction_id IS NULL
group by V.customer_id 
order by V.customer_id ASC;