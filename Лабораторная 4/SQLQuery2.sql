/*USE library;
GO
EXEC sp_help title;
GO*/

/*INSERT INTO title(title, author, synopsis) 
VALUES ('The art of Lawn Tennis', 'William T. Tiden', DEFAULT);
SELECT title.title, title.author, title.synopsis FROM library.dbo.title
WHERE title = 'The art of Lawn Tennis';

SELECT title.title_no FROM library.dbo.title
WHERE title = 'The art of Lawn Tennis';

SELECT title.title FROM library.dbo.title
WHERE title_no = 51;

INSERT INTO title(title, author, synopsis) 
VALUES ('Riders of the Purple Sage', 'Zane Grey', DEFAULT);*/
SELECT * FROM library.dbo.title
WHERE title = 'Riders of the Purple Sage';