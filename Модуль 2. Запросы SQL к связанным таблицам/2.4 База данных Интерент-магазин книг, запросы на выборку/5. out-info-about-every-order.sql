/**
Вывести информацию о каждом заказе
**/

SELECT buy_id, name_client, SUM(price *  buy_book.amount) AS Стоимость
FROM buy_book
    INNER JOIN buy USING(buy_id)
    INNER JOIN book USING(book_id)
    INNER JOIN client USING(client_id)
GROUP BY buy_id
ORDER BY buy_id;
