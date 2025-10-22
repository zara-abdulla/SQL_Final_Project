--Monthly deposit vs. withdrawal trend 
select 
    to_char(transaction_date, 'Mon') as transaction_month,
    transaction_type,
    sum(amount) as monthly_amount
from transactions
where transaction_type in ('Deposit', 'Withdrawal')
group by extract(month from transaction_date), to_char(transaction_date, 'Mon'), transaction_type
order by extract(month from transaction_date), transaction_type;
