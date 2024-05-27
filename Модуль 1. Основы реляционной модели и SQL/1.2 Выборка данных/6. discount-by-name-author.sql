/**
Поднять цену книг Булгакова на 10%, а цену книг Есенина - на 5%.
+---------+-----------------------+------------------+--------+--------+
| book_id | title                 | author           | price  | amount |
+---------+-----------------------+------------------+--------+--------+
| 1       | Мастер и Маргарита    | Булгаков М.А.    | 670.99 | 3      |
| 2       | Белая гвардия         | Булгаков М.А.    | 540.50 | 5      |
| 3       | Идиот                 | Достоевский Ф.М. | 460.00 | 10     |
| 4       | Братья Карамазовы     | Достоевский Ф.М. | 799.01 | 2      |
| 5       | Стихотворения и поэмы | Есенин С.А.      | 650.00 | 15     |
+---------+-----------------------+------------------+--------+--------+
**/

SELECT author, 
    title, 
    ROUND(
        IF(author = 'Булгаков М.А.', price+price*0.1, 
        IF (author = 'Есенин С.А.', price+price*0.05, price)), 
          2) AS new_price
FROM book;
