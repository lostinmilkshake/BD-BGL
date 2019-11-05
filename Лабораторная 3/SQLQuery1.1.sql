SELECT CONCAT(member.firstname,' ', member.middleinitial, ' ', member.lastname) AS name, adult.street, adult.city, adult.state, adult.zip 
FROM library.dbo.member 
JOIN library.dbo.adult 
ON member.member_no = adult.member_no;