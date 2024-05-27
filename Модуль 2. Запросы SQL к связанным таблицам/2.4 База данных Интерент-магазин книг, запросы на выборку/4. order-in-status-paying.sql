/**
Вывести номера всех оплаченных заказов и даты, когда они были оплачены
**/

SELECT buy_id, date_step_end
FROM buy_step
    INNER JOIN step ON buy_step.step_id = step.step_id
WHERE date_step_beg IS NOT NULL 
    AND date_step_end IS NOT NULL
    AND name_step = "Оплата";