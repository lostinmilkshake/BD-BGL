USE AdventureWorks;

--DROP PROCEDURE Sales.AddDiscount;

/*GO
CREATE PROCEDURE Sales.AddDiscount
(@Description nvarchar(255),
@DiscountPct smallmoney,
@Type nvarchar(50),
@Category nvarchar(50),
@StartDate Datetime,
@EndDate Datetime,
@MinQty int,
@MaxQty int,
@NewProductID int out
)
AS
begin
	BEGIN TRY
		INSERT INTO Sales.SpecialOffer VALUES (@Description, @DiscountPct, @Type, @Category, @StartDate, @EndDate, @MinQty, @MaxQty, NEWID(), GETDATE());
		SET @NewProductID=SCOPE_IDENTITY();
	END TRY
	BEGIN CATCH
		--Дописать запись в dbo.ErrorLog
		INSERT INTO dbo.ErrorLog VALUES (GETDATE(), SUSER_NAME(), ERROR_NUMBER(), ERROR_SEVERITY(), ERROR_STATE(), ERROR_PROCEDURE(), ERROR_LINE(), ERROR_MESSAGE());
	END CATCH
end*/

/*DECLARE	@StartDate datetime, @EndDate datetime
SET @StartDate=GetDate()
SET @EndDate=DateAdd(month,1,@StartDate)
DECLARE @NewId int
EXEC Sales.AddDiscount
'Half price off everything',
0.5,
'Seasonal Discount',
'Customer',
@StartDate,
@EndDate,
0,
20,
@NewID OUTPUT
SELECT @NewID;*/

/*DECLARE	@StartDate datetime, @EndDate datetime
SET @StartDate=GetDate()
SET @EndDate=DateAdd(month,1,@StartDate)
DECLARE @NewId int, @ReturnValue int
EXEC @ReturnValue=Sales.AddDiscount
'Half price off everything',
-0.5, --UNACCEPTABLE VALUE
'Seasonal Discount',
'Customer',
@StartDate,
@EndDate,
0,
20,
@NewID OUTPUT
IF (@ReturnValue=0)
SELECT @NewID 
ELSE
SELECT TOP 1 * FROM dbo.ErrorLog ORDER BY ErrorTime DESC*/