SELECT ProductID, SUM(LineTotal) AS Total FROM AdventureWorks.Sales.SalesOrderDetail 
WHERE UnitPrice < 5.00 GROUP BY CUBE(ProductID, LineTotal, OrderQty)
ORDER BY ProductID;