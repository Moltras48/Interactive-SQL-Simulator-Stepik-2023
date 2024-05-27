/**
Вывести жанр (или жанры), в котором было заказано больше всего экземпляров книг, указать это количество
**/

WITH Количество_купленных_книг AS (
    SELECT SUM(buy_book.amount) AS Количество
    FROM book
        INNER JOIN buy_book USING(book_id)
        INNER JOIN genre USING(genre_id)
    GROUP BY genre_id
)

SELECT name_genre, SUM(buy_book.amount) AS Количество
FROM book
        INNER JOIN buy_book USING(book_id)
        INNER JOIN genre USING(genre_id)
GROUP BY genre_id
HAVING Количество = (
    SELECT MAX(Количество)
    FROM Количество_купленных_книг
)