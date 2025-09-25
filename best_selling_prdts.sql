-- calculate best and least selling products
SELECT p.ProductName,  ROUND(SUM(t.Quantity * p.UnitPrice - t.Discount)) AS total_revenue
FROM retail_transactions t
JOIN retail_products p ON t.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY total_revenue DESC;