/**
Посчитать, сколько раз была заказана каждая книга
**/

SELECT name_author, title, COUNT(buy_book.amount) AS Количество
FROM author
    INNER JOIN book ON author.author_id = book.author_id
    LEFT JOIN buy_book ON book.book_id = buy_book.book_id
GROUP BY book.book_id
ORDER BY name_author, title;