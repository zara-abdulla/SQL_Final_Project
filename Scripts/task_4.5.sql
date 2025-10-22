--Risky credit ratio by region/city  
select c.city,
    count(case when cr.status = 'Defaulted' then 1 end) as risky_loans,
    count(*) as total_loans,
    round(count(case when cr.status = 'Defaulted' then 1 end) * 100.0 / count(*), 2) as risk_ratio_percent
from credits cr
join customers c 
    on c.customer_id = cr.customer_id
group by c.city
order by  risk_ratio_percent desc;
