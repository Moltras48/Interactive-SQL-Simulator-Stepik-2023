/**
Студент прошел тестирование (то есть все его ответы занесены в таблицу testing), 
далее необходимо вычислить результат(запрос) и занести его в таблицу attempt для соответствующей попытки
**/

UPDATE attempt
SET result = (
    SELECT ROUND(SUM(is_correct) / 3 * 100) AS result
    FROM testing
         INNER JOIN answer USING(answer_id)
    WHERE attempt_id = 8
)
WHERE attempt_id = 8;

SELECT * FROM attempt;