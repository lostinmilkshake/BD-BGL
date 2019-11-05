/*SELECT item.cover, item.isbn, item.title_no, title.title 
FROM library.dbo.item JOIN library.dbo.title
ON item.title_no = title.title_no
WHERE title = 'The Cherry Orchard';

DELETE FROM [item] WHERE title_no = 8 AND isbn = 10101;

SELECT item.cover, item.isbn, item.title_no, title.title 
FROM library.dbo.item JOIN library.dbo.title
ON item.title_no = title.title_no
WHERE title = 'The Cherry Orchard';*/