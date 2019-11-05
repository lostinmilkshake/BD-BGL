SELECT MAX(loanhist.fine_paid) FROM library.dbo.loanhist;

SELECT DISTINCT member.firstname, member.lastname, loanhist.isbn, loanhist.fine_paid 
FROM library.dbo.member JOIN library.dbo.loanhist ON loanhist.member_no = member.member_no 
WHERE fine_paid=(SELECT MAX(loanhist.fine_paid) FROM library.dbo.loanhist);

SELECT title_no, title, (SELECT isbn FROM library.dbo.reservation) FROM library.dbo.title WHERE (SELECT COUNT(isbn) FROM library.dbo.reservation)<5 OR (SELECT COUNT(isbn) FROM library.dbo.reservation)>50;