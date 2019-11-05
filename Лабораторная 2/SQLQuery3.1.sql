SELECT SalesQuota, SUM(SalesYTD) AS TotalSalesYTD, 
	GROUPING(SalesQuota) AS grouping_couta, GROUPING(SalesYTD) AS grouping_sales FROM AdventureWorks.Sales.SalesPerson 
GROUP BY ROLLUP (SalesQuota,SalesYTD);