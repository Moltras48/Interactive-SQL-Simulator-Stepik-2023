/**
Вывести города, в которых живут клиенты, оформлявшие заказы в интернет-магазине
**/


SELECT name_city, COUNT(*) AS Количество
FROM client
    INNER JOIN city ON client.city_id = city.city_id
    INNER JOIN buy ON client.client_id = buy.client_id
GROUP BY city.city_id
ORDER BY Количество DESC;