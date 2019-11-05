/*SELECT juvenile.member_no, adult.street, adult.city, adult.state, adult.zip, adult.phone_no, DATEADD(YY,1,GETDATE()) AS date
FROM library.dbo.juvenile JOIN library.dbo.adult
ON juvenile.adult_member_no = adult.member_no
WHERE DATEDIFF(YEAR, juvenile.birth_date, DATEADD(YY,0,GETDATE())) >= 18 AND juvenile.member_no = 16101;*/

/*INSERT INTO library.dbo.adult(juvenile.member_no, adult.street, adult.city, adult.state, adult.zip, adult.phone_no, adult.expr_date)
SELECT juvenile.member_no, adult.street, adult.city, adult.state, adult.zip, adult.phone_no, DATEADD(YY,1,GETDATE()) AS date 
FROM library.dbo.juvenile JOIN library.dbo.adult
ON juvenile.adult_member_no = adult.member_no
WHERE DATEDIFF(YEAR, juvenile.birth_date, DATEADD(YY,0,GETDATE())) = 18 
--INSERT INTO library.dbo.adult(member_no, street, city, state, zip, phone_no, expr_date)*/

SELECT member_no, street, city, state, zip, phone_no, DATEADD(YY,1,GETDATE()) AS date
FROM library.dbo.adult
WHERE member_no = 16101