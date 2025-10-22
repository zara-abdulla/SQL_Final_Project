--Profitability analysis based on credit interest 
select customer_id, sum(credit_amount) as total_credit, round(sum((credit_amount*(interest_rate/100))),2) as interest_income,
round(sum(credit_amount*(interest_rate/100))/sum(credit_amount)*100,2) as profit
from credits
group by customer_id;
