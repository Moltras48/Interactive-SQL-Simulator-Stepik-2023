/**
Для каждой отдельной книги необходимо вывести информацию о количестве проданных экземпляров и их стоимости за 2020 и 2019
**/

SELECT title, SUM(Количество) AS Количество, SUM(Сумма) AS Сумма
FROM (
    SELECT title, SUM(buy_book.amount) AS Количество, SUM(buy_book.amount * price) AS Сумма
    FROM buy_book
         INNER JOIN book USING(book_id)
         INNER JOIN buy USING(buy_id)
         INNER JOIN buy_step USING(buy_id)
         INNER JOIN step USING(step_id)
    WHERE name_step = "Оплата" AND date_step_end IS NOT NULL
    GROUP BY title 
    UNION ALL
    SELECT title, SUM(buy_archive.amount) AS Количество, SUM(buy_archive.amount * buy_archive.price) AS Сумма
    FROM buy_archive
        INNER JOIN book USING(book_id)
    GROUP BY title
) AS y2020_y2019
GROUP BY title 
ORDER BY Сумма DESC;