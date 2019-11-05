USE AdventureWorks;
--DROP GetDiscounts1 
GO
CREATE PROCEDURE Sales.GetDiscounts1 AS

	SELECT Description, DiscountPct, Type, Category, StartDate, EndDate, MinQty, MaxQty 
	FROM AdventureWorks.Sales.SpecialOffer
	ORDER BY StartDate, EndDate
GO
EXEC Sales.GetDiscounts1;