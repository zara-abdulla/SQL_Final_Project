--Accounts with the highest number of transactions
select account_id, count(transaction_id) as transaction_count, sum(amount) as total_amount
from transactions
group by account_id
order by transaction_count desc;