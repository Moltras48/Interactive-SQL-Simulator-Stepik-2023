/**
1. Добавьте себя любимого (любимую) в таблицу студентов.
2. Вставьте в таблицу attempt:
 2.1  свой student_id,
 2.2  все три предмета  которые вы якобы сдали.
 2.3  случайную дату для каждой попытки
**/

INSERT INTO student (name_student)
VALUE ("Ахметов Тимур");

INSERT INTO attempt(student_id, subject_id, date_attempt, result)
SELECT res.student_id, 
       res.subject_id,
       DATE_ADD(NOW(), interval -10 DAY),
       100
FROM ( 
    SELECT student_id, subject_id
    FROM student
         CROSS JOIN subject
    WHERE name_student = "Ахметов Тимур"
) AS res;

SELECT * FROM attempt;