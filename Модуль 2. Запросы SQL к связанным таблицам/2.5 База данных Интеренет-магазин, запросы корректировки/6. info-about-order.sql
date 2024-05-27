/**
Создать общий счет (таблицу buy_pay) на оплату заказа с номером 5
**/

CREATE TABLE buy_pay
AS (
    SELECT buy_id, SUM(buy_book.amount) AS Количество, SUM(price * buy_book.amount) AS Итого
    FROM buy_book
        INNER JOIN book USING(book_id)
    WHERE buy_id = 5
);


SELECT * FROM buy_pay;
