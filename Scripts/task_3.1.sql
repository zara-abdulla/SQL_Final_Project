--Monthly and yearly transaction counts and amounts
select  
    extract(year from transaction_date) as transaction_year,
    to_char(transaction_date, 'Mon') as transaction_month,
    count(transaction_id) as transaction_count,
    sum(amount) as total_amount
from transactions
group by extract(year from transaction_date), extract(month from transaction_date), to_char(transaction_date, 'Mon')
order by extract(year from transaction_date), extract(month from transaction_date);
