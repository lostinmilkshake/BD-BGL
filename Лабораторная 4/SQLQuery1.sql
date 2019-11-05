/*--INSERT INTO item (isbn, title_no, translation, cover, loanable) VALUES (10001, 8, 'ENGLISH', 'HARDBACK', 'Y'),(10101, 8, 'ENGLISH', 'SOFTBACK', 'Y');
SELECT item.isbn, item.title_no, item.cover FROM library.dbo.item
WHERE isbn = 10001 OR isbn = 10101;
--INSERT INTO copy (isbn, copy_no, title_no, on_loan) VALUES (10001, 1, 8, 'N');*/
/*SELECT copy.isbn, copy.copy_no, copy.title_no, copy.on_loan FROM library.dbo.copy
WHERE isbn = 10001;*/
SELECT item.translation, item.isbn FROM library.dbo.item 
WHERE isbn = 10001 OR isbn = 10101;