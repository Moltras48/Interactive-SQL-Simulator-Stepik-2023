/**
Удалить тех авторов из таблиц author и book, у кого в таблице book есть книги, названия которых состоит из двух или более слов
**/

DELETE FROM author
WHERE author_id IN (
    SELECT DISTINCT author_id
    FROM book
    WHERE title LIKE "_% _%"
);

SELECT * FROM author;

SELECT * FROM book;
