SELECT adult.member_no, COUNT(juvenile.adult_member_no) AS numkids 
FROM library.dbo.adult JOIN library.dbo.juvenile ON adult.member_no=juvenile.adult_member_no
GROUP BY adult.member_no, adult.state HAVING adult.state='AZ' AND COUNT(juvenile.adult_member_no)>2 
UNION 
SELECT adult.member_no, COUNT(juvenile.adult_member_no) AS numkids 
FROM library.dbo.adult JOIN library.dbo.juvenile ON adult.member_no=juvenile.adult_member_no
GROUP BY adult.member_no, adult.state HAVING adult.state='CA' AND COUNT(juvenile.adult_member_no)>3;