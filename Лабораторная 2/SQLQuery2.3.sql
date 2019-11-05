SELECT ProductID, SpecialOfferID, AVG(UnitPrice) AS UnitPrice, SUM(LineTotal) AS LineTotal FROM AdventureWorks.Sales.SalesOrderDetail
GROUP BY LineTotal, ProductID, SpecialOfferID, UnitPrice
ORDER BY ProductID;