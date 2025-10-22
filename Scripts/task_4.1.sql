--Total credit per customer
select 
    c.customer_id,
    c.full_name,
    cr.credit_id,
    cr.credit_amount,
    sum(cr.credit_amount) over (partition by c.customer_id) as total_credit_amount
from credits cr
left join customers c 
    on c.customer_id = cr.customer_id
order by c.customer_id, cr.start_date;
