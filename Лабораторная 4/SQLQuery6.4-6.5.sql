SELECT * FROM library.dbo.juvenile JOIN library.dbo.adult
ON juvenile.member_no = adult.member_no;

DELETE FROM library.dbo.juvenile WHERE member_no IN (SELECT member_no FROM library.dbo.adult);

SELECT member_no FROM library.dbo.juvenile WHERE member_no='16101';