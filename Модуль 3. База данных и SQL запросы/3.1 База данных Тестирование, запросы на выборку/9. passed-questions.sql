/**
Для каждого вопроса вывести процент успешных решений, 
то есть отношение количества верных ответов к общему количеству ответов, значение округлить до 2-х знаков после запятой
**/

SELECT name_subject, 
       CONCAT(SUBSTRING(name_question, 1, 30), "...") AS Вопрос, 
       COUNT(*) AS Всего_ответов, 
       ROUND(SUM(is_correct) / COUNT(*) * 100, 2) AS Успешность
FROM subject
    INNER JOIN question USING(subject_id)
    INNER JOIN testing USING(question_id)
    INNER JOIN answer USING(answer_id)
GROUP BY testing.question_id
ORDER BY name_subject, Успешность DESC, name_question;
