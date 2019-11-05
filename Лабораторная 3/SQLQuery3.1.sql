SELECT CONCAT(member.lastname, ' ', member.firstname, ' ', member.middleinitial) AS name, CONVERT(CHAR(8), reservation.log_date) AS date
FROM library.dbo.member LEFT OUTER JOIN library.dbo.reservation
ON member.member_no = reservation.member_no
WHERE member.member_no = 250 OR member.member_no = 341 OR member.member_no = 1675
ORDER BY member.member_no;