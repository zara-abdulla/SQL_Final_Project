--Distribution of transaction types (Deposit, Withdrawal, Transfer)
SELECT 
    transaction_type,
    COUNT(*) AS transaction_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM transactions), 2) AS percentage
FROM transactions
GROUP BY transaction_type;
