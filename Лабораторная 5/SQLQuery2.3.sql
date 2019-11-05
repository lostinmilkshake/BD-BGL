USE library
GO

SELECT title.title_no, title, loan.isbn,
(SELECT COUNT(isbn) FROM reservation WHERE loan.isbn = reservation.isbn) AS TotalReserved
FROM title
JOIN library.dbo.loan ON loan.title_no = title.title_no