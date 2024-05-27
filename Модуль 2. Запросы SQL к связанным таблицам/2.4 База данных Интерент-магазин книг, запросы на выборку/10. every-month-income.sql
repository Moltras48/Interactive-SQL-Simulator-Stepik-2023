/**
Сравнить ежемесячную выручку от продажи книг за текущий и предыдущий годы
**/


SELECT YEAR(date_step_beg) AS Год, 
       MONTHNAME(date_step_beg) AS Месяц, 
       SUM(book.price * buy_book.amount) AS Сумма
FROM buy_book
     INNER JOIN book USING(book_id)
     INNER JOIN buy USING(buy_id)
     INNER JOIN buy_step USING(buy_id)
     INNER JOIN step USING(step_id)
WHERE date_step_beg IS NOT NULL 
      AND name_step = "Упаковка"
GROUP BY YEAR(date_step_beg), MONTHNAME(date_step_beg)
UNION ALL
SELECT YEAR(date_payment) AS Год, 
       MONTHNAME(date_payment) AS Месяц, 
       SUM(price * amount) AS Сумма
FROM buy_archive
GROUP BY YEAR(date_payment), MONTHNAME(date_payment)
ORDER BY Месяц, Год