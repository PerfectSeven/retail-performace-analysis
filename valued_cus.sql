-- calculate valuable customers 
SELECT c.CustomerID, c.FirstName, c.LastName, Gender, ROUND(AVG(t.quantity * p.UnitPrice - t.Discount), 2) AS avg_sales,
CASE 
        WHEN AVG(t.Quantity * p.UnitPrice - t.Discount) >= 4000 THEN 'High Spender'
        WHEN AVG(t.Quantity * p.UnitPrice - t.Discount) BETWEEN 1999 AND 3999 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS customer_segment
FROM retail_transactions t
JOIN retail_products p ON t.productID = p.ProductID
JOIN retail_customers c ON t.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName, Gender
ORDER BY avg_sales DESC; 