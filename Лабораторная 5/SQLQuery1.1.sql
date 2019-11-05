USE library;

SELECT adult_member_no, COUNT(member_no) AS No_Of_Children, (SELECT expr_date FROM adult WHERE adult_member_no=adult.member_no) AS expr_date
FROM juvenile
GROUP BY adult_member_no HAVING  COUNT(member_no)>3;