USE AdventureWorks
GO
/*CREATE PROCEDURE Sales.GetDiscountsForCategory 
	@Category nvarchar(50)
AS
	SELECT Description, DiscountPct, Type, Category, StartDate, EndDate, MinQty, MaxQty 
	FROM AdventureWorks.Sales.SpecialOffer
	WHERE Category = @Category
	ORDER BY StartDate, EndDate
GO*/
EXEC Sales.GetDiscountsForCategory 'Reseller'