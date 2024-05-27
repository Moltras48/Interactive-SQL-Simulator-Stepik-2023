/**
Завершить этап «Оплата» для заказа с номером 5, 
вставив в столбец date_step_end дату 13.04.2020, и начать следующий этап («Упаковка»), 
задав в столбце date_step_beg для этого этапа ту же дату
**/

UPDATE buy_step AS b1, 
       buy_step AS b2
    SET b1.date_step_end = "2020.04.13",
        b2.date_step_beg = "2020.04.13"
WHERE b1.buy_id = 5
      AND b2.buy_id = 5
      AND b1.step_id = (SELECT step_id FROM step WHERE name_step = "Оплата")
      AND b2.step_id = (SELECT step_id + 1 FROM step WHERE name_step = "Оплата");

SELECT * FROM buy_step;
