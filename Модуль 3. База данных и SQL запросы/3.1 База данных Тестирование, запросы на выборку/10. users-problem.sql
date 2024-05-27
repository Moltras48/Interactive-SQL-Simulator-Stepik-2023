/**
Сделать шпаргалку по всем предметам (для которых в базе есть вопросы)
**/

SELECT name_subject, SUBSTRING(name_question, 1, 30), SUBSTRING(name_answer, 1, 30)
FROM question
     INNER JOIN answer USING(question_id)
     INNER JOIN subject USING(subject_id)
WHERE is_correct = 1;