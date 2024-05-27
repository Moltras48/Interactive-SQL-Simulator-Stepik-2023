/**
Удалить все жанры, к которым относится меньше 4-х наименований книг
**/


DELETE FROM genre
WHERE genre_id IN (
    SELECT genre_id
    FROM book
    GROUP BY genre_id
    HAVING COUNT(title) < 4
);