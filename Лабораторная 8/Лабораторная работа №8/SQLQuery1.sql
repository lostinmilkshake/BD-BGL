USE AdventureWorks;

/*GO  
CREATE PROCEDURE Sales.GetDiscount
AS
BEGIN
	SELECT Description, DiscountPct, Type, Category, StartDate, EndDate, MinQty, MaxQty
	FROM Sales.SpecialOffer ORDER BY StartDate, EndDate;
END*/

EXEC Sales.GetDiscount;