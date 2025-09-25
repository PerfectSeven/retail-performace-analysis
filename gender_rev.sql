-- calculate how gender affects spending habits
SELECT c.Gender, ROUND(SUM(t.quantity * p.UnitPrice - t.Discount), 2) AS total_revenue
FROM retail_transactions t
JOIN retail_products p ON t.productID = p.ProductID
JOIN retail_customers c ON t.CustomerID = c.CustomerID
GROUP BY c.Gender
ORDER BY total_revenue DESC;