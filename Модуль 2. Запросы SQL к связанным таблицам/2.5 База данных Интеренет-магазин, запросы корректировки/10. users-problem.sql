/**
Ввести количество заказов, находящихся в каждом из статусов.
**/

SELECT name_step, COUNT(date_step_beg) AS Количество_заказов
FROM step
    LEFT JOIN (SELECT * FROM buy_step WHERE date_step_beg IS NOT NULL AND date_step_end IS NULL) AS new ON step.step_id = new.step_id
GROUP BY name_step
ORDER BY name_step;