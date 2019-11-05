USE AdventureWorks
GO
/*CREATE PROCEDURE Sales.GetDiscountsForCategoryAndDate
	@Category nvarchar(50),
	@DateToCheck datetime
AS
	SELECT Description, DiscountPct, Type, Category, StartDate, EndDate, MinQty, MaxQty 
	FROM AdventureWorks.Sales.SpecialOffer
	WHERE Category = @Category AND StartDate < @DateToCheck
	ORDER BY StartDate, EndDate
GO*/
DECLARE @DateToCheck datetime
SET @DateToCheck = NULL --maybe this i dunno cause task is not clear
EXEC Sales.GetDiscountsForCategoryAndDate 'Reseller',@DateToCheck;
SET @DateToCheck = DateAdd(month,1,GETDATE())
EXEC Sales.GetDiscountsForCategoryAndDate 'Reseller',@DateToCheck