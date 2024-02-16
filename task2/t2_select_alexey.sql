-- Напишите скрипт, который будет возвращать из таблиц поля product_name для пользователей
-- с именем alexey независимо от регистра ввода имени.

SELECT
	ord.product_name
FROM
	orders ord
INNER JOIN customers cus on cus.id = ord.customer_id
WHERE
	LOWER(cus.name) = 'alexey';