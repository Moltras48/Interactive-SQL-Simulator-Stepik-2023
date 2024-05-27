/**
Выбрать всех клиентов, которые заказывали книги Достоевского
**/

SELECT DISTINCT name_client
FROM buy_book
    INNER JOIN buy USING(buy_id)
    INNER JOIN book USING(book_id)
    INNER JOIN client USING(client_id)
    INNER JOIN author USING(author_id)
WHERE name_author = "Достоевский Ф.М."
ORDER BY name_client;