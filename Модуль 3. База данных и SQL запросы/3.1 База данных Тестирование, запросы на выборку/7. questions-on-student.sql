/**
Вывести вопросы, которые были включены в тест для Семенова Ивана по дисциплине (значение attempt_id для этой попытки равно 7).
**/

SELECT name_question,
       name_answer,
       IF(is_correct, "Верно", "Неверно") AS Результат
FROM testing
     INNER JOIN question USING(question_id)
     INNER JOIN answer USING(answer_id)
WHERE attempt_id = 7;