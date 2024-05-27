/**
book:
|    Поле     |         Тип, описание          |
| book_id     | INT PRIMARY KEY AUTO_INCREMENT |
| title       | VARCHAR(50)                    |
| author      | VARCHAR(30)                    |
| price       | DECIMAL(8, 2)                  |
| amount      | INT                            |

values:
| book_id | title              | author        | price  | amount |
| 1       | Мастер и Маргарита | Булгаков М.А. | 670.99 | 3      |
**/

INSERT INTO book
VALUES (NULL, 'Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3);