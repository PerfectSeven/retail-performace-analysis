-- total revenue per store
SELECT s.StoreName, ROUND(SUM(t.Quantity * p.UnitPrice - t.Discount)) AS total_revenue
FROM retail_transactions t
JOIN retail_products p ON t.ProductID = p.ProductID
JOIN retail_stores s ON t.StoreID = s.StoreID
GROUP BY s.StoreName
ORDER BY total_revenue;