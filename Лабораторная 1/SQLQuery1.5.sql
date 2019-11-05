SELECT member_no,fine_assessed,fine_paid FROM library.dbo.loanhist
WHERE fine_paid is NULL;