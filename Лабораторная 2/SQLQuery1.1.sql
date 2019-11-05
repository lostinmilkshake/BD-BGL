SELECT SalesPersonID, Bonus FROM AdventureWorks.Sales.SalesPerson
ORDER BY Bonus DESC;
SELECT TOP(4) WITH TIES SalesPersonID, Bonus FROM AdventureWorks.Sales.SalesPerson
ORDER BY Bonus DESC;
