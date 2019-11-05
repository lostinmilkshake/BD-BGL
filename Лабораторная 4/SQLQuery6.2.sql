SELECT juvenile.member_no, juvenile.birth_date, adult.street, adult.city, adult.state, adult.zip, adult.phone_no, DATEADD(YY,1,GETDATE()) AS date
FROM library.dbo.juvenile JOIN library.dbo.adult
ON juvenile.adult_member_no = adult.member_no
WHERE DATEDIFF(YEAR, juvenile.birth_date, DATEADD(YY,0,GETDATE())) > 18;

/*INSERT INTO adult VALUES (juvenile.member_no, adult.street, adult.city, adult.state, adult.zip, adult.phone_no)
FROM library.dbo.juvenile JOIN livrary.dbo.adult
ON juvenile.adult_member_no = adult.member_no
WHERE DATEDIFF(YEAR, juvenile.birth_date, DATEADD(YY,0,GETDATE())) > 18;*/