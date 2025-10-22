--Total deposits and withdrawals per account  
SELECT account_id, transaction_type, SUM(amount) as total_amount
FROM transactions
WHERE transaction_type IN ('Withdrawal','Deposit')
GROUP BY account_id, transaction_type
ORDER BY account_id;
