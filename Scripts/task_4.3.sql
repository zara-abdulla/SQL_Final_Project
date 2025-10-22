--Average monthly credit payment per customer 
select customer_id, round(avg(monthly_payment),2) as avg_monthly_credit from credits
group by customer_id
order by round(avg(monthly_payment),2) desc;
