/**
Вывести информацию о доставке с опозданием
**/

SELECT buy_id,
       DATEDIFF(date_step_end, date_step_beg) AS Количество_дней,
       IF(days_delivery < DATEDIFF(date_step_end, date_step_beg), DATEDIFF(date_step_end, date_step_beg) - days_delivery, 0) AS Опоздание
FROM buy_step 
    INNER JOIN step USING(step_id)
    INNER JOIN buy USING(buy_id)
    INNER JOIN client USING(client_id)
    INNER JOIN city USING(city_id)
WHERE date_step_beg IS NOT NULL 
  AND date_step_end IS NOT NULL
  AND name_step = "Транспортировка"
ORDER BY buy_id;