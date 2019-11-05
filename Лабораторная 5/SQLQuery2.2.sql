SELECT DISTINCT member.firstname, member.lastname, loanhist.isbn, loanhist.fine_paid FROM library.dbo.loanhist 
JOIN library.dbo.member ON loanhist.member_no = member.member_no
WHERE loanhist.fine_paid=(SELECT MAX(fine_paid) FROM library.dbo.loanhist);