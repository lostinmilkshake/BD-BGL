USE AdventureWorks
GO
EXEC sp_depends @objname = vEmployeeDetails;
EXEC sp_helptext 'vEmployeeDetails';