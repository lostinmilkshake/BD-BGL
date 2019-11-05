SELECT member_no,isbn,fine_assessed , (fine_assessed*2) AS double_frine FROM library.dbo.loanhist
WHERE fine_assessed is not NULL;

