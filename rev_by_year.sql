-- calculate revenue by year
SELECT `Year`, ROUND(SUM(t.Quantity * p.UnitPrice - t.Discount)) AS total_revenue
FROM retail_transactions t
JOIN retail_products p ON t.ProductID = p.ProductID
GROUP BY `Year`
ORDER BY total_revenue;