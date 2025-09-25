-- calculate total customers and total revenue by city
SELECT DISTINCT c.City, COUNT(c.customerID) AS cus_count,  ROUND(SUM(t.quantity * p.UnitPrice - t.Discount), 2) AS total_revenue
FROM retail_transactions t
JOIN retail_products p ON t.productID = p.ProductID
JOIN retail_customers c ON t.CustomerID = c.CustomerID
GROUP BY c.City
ORDER BY cus_count, total_revenue;