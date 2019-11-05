--SELECT SUM(OrderQty) AS OrderQty,ProductID FROM AdventureWorks.Sales.SalesOrderDetail GROUP BY OrderQty,ProductID;
SELECT SUM(OrderQty) AS OrderQty, ProductID FROM AdventureWorks.Sales.SalesOrderDetail
GROUP BY OrderQty,ProductID HAVING SUM(OrderQty)>=2000
ORDER BY OrderQty;
