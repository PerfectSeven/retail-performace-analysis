-- calculate average sales per transaction for each store
SELECT s.StoreID, ROUND(AVG(t.Quantity * p.UnitPrice - t.Discount)) AS avg_sales
FROM retail_transactions t
JOIN retail_products p ON t.ProductID = p.ProductID
JOIN retail_stores s ON t.StoreID = s.StoreID
GROUP BY s.StoreID
ORDER BY avg_sales;