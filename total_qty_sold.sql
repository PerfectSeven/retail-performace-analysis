-- total quantity sold
SELECT p.ProductName, SUM(Quantity) AS qty_sold
FROM retail_transactions t
JOIN retail_products p ON t.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY qty_sold DESC;
