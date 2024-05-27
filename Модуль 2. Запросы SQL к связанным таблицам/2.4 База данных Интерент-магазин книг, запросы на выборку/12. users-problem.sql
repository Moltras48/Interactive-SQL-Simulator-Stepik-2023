/**
Вывести названия книг, которые ни разу не были заказаны
**/

SELECT title
FROM book
WHERE book_id NOT IN (
    SELECT DISTINCT book_id
    FROM buy_book
);