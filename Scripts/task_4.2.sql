--Credit status distribution (Active, Closed, Defaulted)
select status,  round(sum(credit_amount)*100.0/(select sum(credit_amount) from credits),2) as percentage
from credits
group by status;
