/**
В таблицу buy_step для заказа с номером 5 включить все этапы из таблицы step, которые должен пройти этот заказ
**/

INSERT INTO buy_step (buy_id, step_id)
SELECT buy_id, step_id
FROM step
    CROSS JOIN buy 
WHERE buy.buy_id = 5;

SELECT * FROM buy_step;
