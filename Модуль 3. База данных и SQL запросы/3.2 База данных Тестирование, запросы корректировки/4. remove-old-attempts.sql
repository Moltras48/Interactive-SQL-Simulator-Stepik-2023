/**
Удалить из таблицы attempt все попытки, выполненные раньше 1 мая 2020 года
Таблицы связаны.
**/

DELETE FROM attempt
WHERE date_attempt < "2020-05-01";
