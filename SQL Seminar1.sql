/*
1.	Создайте таблицу с мобильными телефонами, используя графический интерфейс.
Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ
*/
CREATE DATABASE phone;
USE phone;
CREATE TABLE product
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(20) NOT NULL,
    Manufacturer VARCHAR(15) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price INT
);

INSERT product(ProductName, Manufacturer, ProductCount, Price)
VALUES 
	("iPhone X", "Apple", 3, 76000),
    ("iPhone 8", "Apple", 2, 51000),
    ("Galaxy S9", "Samsung", 2, 56000),
	("Galaxy S8", "Samsung", 1, 41000),
	("P20 Pro", "Huawei", 5, 36000);


SELECT * FROM product; -- Показатть всю таблицу 

/*
2. Выведите название, производителя и цену для товаров, количество которых превышает 2
(SQL - файл, скриншот, либо сам код)
*/

SELECT ProductName, Manufacturer, Price
FROM product
WHERE ProductCount >2;

/*
3. Выведите весь ассортимент товаров марки “Samsung”
*/

SELECT *
FROM product
WHERE Manufacturer LIKE "Samsung";

/*
Выведите информацию о телефонах,
где суммарный чек больше 100 000 и меньше 145 000**
*/

SELECT ProductName, Manufacturer, Price
FROM product
WHERE (ProductCount * Price)>100000
AND (ProductCount * Price)<145000;

/*4.*** С помощью регулярных выражений найти
(можно использовать операторы “LIKE”, “RLIKE для 4.3” ):
*/
-- 4.1. Товары, в которых есть упоминание "Iphone"

SELECT ProductName, Price
FROM product
WHERE ProductName LIKE "%IPhone%";

-- 4.2. "Galaxy"
SELECT ProductName, Price
FROM product
WHERE ProductName LIKE "%Galaxy%";	

-- 4.3.  Товары, в которых есть ЦИФРЫ
SELECT ProductName, Price
FROM product
WHERE ProductName RLIKE "[0-9]";

-- 4.4.  Товары, в которых есть ЦИФРА "8"  

SELECT ProductName, Price
FROM product
WHERE ProductName RLIKE "[8]";




