SELECT LOWER(CONCAT(firstname,' ',middleinitial,' ',SUBSTRING(lastname,1,2))) AS email_name FROM library.dbo.member
WHERE lastname='Anderson';

SELECT CONCAT(firstname,' ',middleinitial,' ',lastname) AS email_name FROM library.dbo.member
WHERE lastname='Anderson';