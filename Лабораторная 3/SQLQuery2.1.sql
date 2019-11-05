SELECT it.isbn, co.copy_no, co.on_loan, tit.title, it.translation, it.cover 
FROM library.dbo.title AS tit 
INNER JOIN library.dbo.copy AS co
ON co.title_no = tit.title_no
INNER JOIN library.dbo.item AS it
ON co.title_no = it.title_no
WHERE it.isbn = 1 OR it.isbn = 500 OR it.isbn = 1000
ORDER BY isbn;