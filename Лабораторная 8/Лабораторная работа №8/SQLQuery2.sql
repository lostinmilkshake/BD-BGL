USE AdventureWorks;

--DROP PROCEDURE Sales.GetDiscountForCategory;

/*GO  
CREATE PROCEDURE Sales.GetDiscountForCategory(@Category nvarchar(50))
AS
begin
	SELECT Description, DiscountPct, Type, Category, StartDate, EndDate, MinQty, MaxQty
	FROM Sales.SpecialOffer WHERE Category=@Category;
end*/

EXEC Sales.GetDiscountForCategory 'Reseller';