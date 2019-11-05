USE AdventureWorks;
GO
/*CREATE VIEW vEmployeeDetails WITH SCHEMABINDING 
AS SELECT
e.EmployeeID, c.Title, c.FirstName, c.MiddleName, c.LastName, c.Suffix, 
e.Title AS JobTitle, c.Phone, c.EmailAddress, c.EmailPromotion,
a.AddressLine1, a.AddressLine2, a.City, sp.Name AS StateProvinceName, a.PostalCode, cr.Name AS CountryRegionName, c.AdditionalContactInfo
FROM HumanResources.Employee AS e
JOIN Person.Contact AS c
ON c.ContactID = e.ContactID
JOIN HumanResources.EmployeeAddress AS ea
ON e.EmployeeID = ea.EmployeeID
JOIN Person.Address AS a
ON ea.AddressID = a.AddressID
JOIN Person.StateProvince AS sp
ON sp.StateProvinceID = a.StateProvinceID
JOIN Person.CountryRegion AS cr
ON cr.CountryRegionCode = sp.CountryRegionCode;*/

SELECT * FROM vEmployeeDetails