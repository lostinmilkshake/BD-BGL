/*SELECT * FROM library.dbo.member
WHERE member.member_no = 507;*/

UPDATE member SET lastname = 'Budd'
WHERE member.member_no = 507;

SELECT * FROM library.dbo.member
WHERE member.member_no = 507;