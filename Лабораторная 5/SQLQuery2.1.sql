SELECT member.firstname, member.lastname,
	(SELECT TOP(1) loanhist.isbn FROM library.dbo.loanhist WHERE loanhist.fine_paid = (SELECT MAX(fine_paid) FROM library.dbo.loanhist)) AS isbn,
	(SELECT top(1) loanhist.fine_paid FROM library.dbo.loanhist WHERE loanhist.fine_paid = (SELECT MAX(fine_paid) FROM library.dbo.loanhist)) AS finepaid
FROM library.dbo.member 