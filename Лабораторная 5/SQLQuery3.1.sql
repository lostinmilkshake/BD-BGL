USE library;
SELECT member_no, lastname 
FROM dbo.member 
WHERE member_no IN (SELECT member_no FROM dbo.loanhist WHERE fine_assessed>5.0);