/**
Определить стоимость покупки, если купить самую дешевую книгу каждого автора
**/

SELECT SUM(min_prices) AS Стоимость_покупки
FROM (
    SELECT MIN(price) AS min_prices
    FROM book
    GROUP BY author
) AS _;