/**
Для каждого автора из таблицы author вывести количество книг, написанных им в каждом жанре
**/

SELECT name_author, name_genre, COUNT(amount) AS Колличество
FROM author 
    CROSS JOIN genre
    LEFT JOIN book ON genre.genre_id = book.genre_id AND author.author_id = book.author_id
GROUP BY name_author, name_genre
ORDER BY name_author, Колличество DESC;