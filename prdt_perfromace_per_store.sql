-- calculate products that are bought more in each store
 SELECT s.StoreName, p.ProductName, SUM(Quantity) AS qty_sold, ROUND(SUM(t.quantity * p.UnitPrice - t.Discount), 2) AS total_revenue
 FROM retail_transactions t
 JOIN retail_products p ON t.productID = p.ProductID
 JOIN retail_stores s ON t.StoreID = s.StoreID
 GROUP BY s.StoreName, p.ProductName
 ORDER BY qty_sold, total_revenue DESC;