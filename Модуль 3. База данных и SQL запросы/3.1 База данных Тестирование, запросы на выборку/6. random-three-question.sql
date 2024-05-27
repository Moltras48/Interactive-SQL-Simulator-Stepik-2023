/**
Случайным образом отберите 3 вопроса по дисциплине «Основы баз данных»
таблица question
+-------------+-------------------------------------------------------------------------+------------+
| question_id | name_question                                                           | subject_id |
+-------------+-------------------------------------------------------------------------+------------+
| 1           | Запрос на выборку начинается с ключевого слова:                         | 1          |
| 2           | Условие, по которому отбираются записи, задается после ключевого слова: | 1          |
| 3           | Для сортировки используется:                                            | 1          |
| 4           | Какой запрос выбирает все записи из таблицы student:                    | 1          |
| 5           | Для внутреннего соединения таблиц используется оператор:                | 1          |
| 6           | База данных - это:                                                      | 2          |
| 7           | Отношение - это:                                                        | 2          |
| 8           | Концептуальная модель используется для                                  | 2          |
| 9           | Какой тип данных не допустим в реляционной таблице?                     | 2          |
+-------------+-------------------------------------------------------------------------+------------+
таблица subject
+------------+-------------------+
| subject_id | name_subject      |
+------------+-------------------+
| 1          | Основы SQL        |
| 2          | Основы баз данных |
| 3          | Физика            |
+------------+-------------------+
**/

SELECT question_id, name_question
FROM question
     INNER JOIN subject USING(subject_id)
WHERE name_subject = "Основы баз данных"
ORDER BY RAND()
LIMIT 3;