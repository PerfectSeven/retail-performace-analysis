-- calculate flow of customers by year
SELECT  `Year`, COUNT(c.CustomerID) AS cus_count
FROM retail_customers c
JOIN retail_transactions t ON t.customerID = c.CustomerID
GROUP BY  `Year`
ORDER BY cus_count;
