--Comparison of active vs. closed account balances
SELECT status, SUM(balance) AS total_balance,count( * )as account_count,ROUND((SUM(balance) * 100.0 / (SELECT SUM(balance) FROM accounts)),2) AS balance_ratio
FROM accounts GROUP BY status;
