/**
Удалить всех авторов, которые пишут в жанре "Поэзия"
**/

DELETE FROM author
USING author
      INNER JOIN book ON author.author_id = book.author_id
      INNER JOIN genre ON book.genre_id = genre.genre_id
WHERE name_genre = "Поэзия";