USE AdventureWorks;

--DROP PROCEDURE Sales.GetDiscountForCategoryAndDate;

/*GO  
CREATE PROCEDURE Sales.GetDiscountForCategoryAndDate(@Category nvarchar(50), @DateToCheck datetime)
AS
begin
	IF @DateToCheck=NULL
		SET @DateToCheck=GETDATE()
	SELECT Description, DiscountPct, Type, Category, StartDate, EndDate, MinQty, MaxQty
	FROM Sales.SpecialOffer
	WHERE Category=@Category
end*/

--EXEC Sales.GetDiscountForCategoryAndDate 'Reseller', null;

DECLARE @DateToCheck datetime
SET @DateToCheck=DateAdd(month,1,GetDate())
EXEC Sales.GetDiscountForCategoryAndDate 'Reseller', @DateToCheck;