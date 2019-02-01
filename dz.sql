use Labor_SQL;

#1
/*SELECT maker, type
FROM laptop
INNER JOIN product ON laptop.model = product.model
ORDER BY maker;*/

#2
/*SELECT product.model, ram, screen, price
FROM product
INNER JOIN laptop ON laptop.model = product.model
WHERE price > 1000
ORDER BY ram, price DESC; */

#3
/*SELECT *
FROM printer
WHERE color = 'y'
ORDER BY price DESC;*/

#4
/*SELECT model, speed, hd, cd, price
FROM pc
WHERE (cd = '12x' OR cd = '24x') AND price < 600;*/

#5
/*SELECT name, class
FROM ships
ORDER BY name;*/

#6
/*SELECT 	*
FROM pc as computer
WHERE speed <= 500 AND price < 800
ORDER BY computer.price DESC;*/

#7
/*SELECT *
FROM printer
WHERE type != 'Matrix' AND price < 300
ORDER BY type DESC;*/

#8
/*SELECT model, speed
FROM pc 
WHERE price BETWEEN 400 AND 600
ORDER BY hd;*/

#9
/*SELECT pc.model, speed, hd, maker
FROM pc
JOIN product AS p ON p.model = pc.model
WHERE (hd = 10 OR hd = 20) AND maker = 'A'
ORDER BY speed;*/

#10
/*SELECT model, speed, hd, price 
FROM laptop
WHERE screen >= 12
ORDER BY price DESC;*/

#11
/*SELECT model, type, price
FROM printer
WHERE price < 300
ORDER BY type DESC;*/

#12
/*SELECT model,ram, price
FROM laptop
WHERE ram = 64
ORDER BY screen;*/

#13
/*SELECT model,ram, price
FROM laptop
WHERE ram > 64
ORDER BY hd;*/

#14
/*SELECT model, price, price
FROM pc
WHERE speed BETWEEN 500 AND 750
ORDER BY hd;*/

#15
/*SELECT *
FROM outcome_o AS o
WHERE o.out >= 2000
ORDER BY o.date DESC;*/

#16
/*SELECT *
From income_o AS o
WHERE o.in BETWEEN 5000 AND 10000
ORDER BY inc;*/

#17
/*SELECT * 
FROM income
ORDER BY inc;*/

#18
/*SELECT * 
FROM outcome AS o
ORDER BY o.out;*/

#19
/*SELECT class
FROM classes
WHERE country = 'Japan'
ORDER BY type;*/

#20
/*SELECT name, launched
FROM ships
WHERE launched BETWEEN 1920 AND 1942
ORDER BY launched DESC;*/

#21
/*SELECT ship, battle
FROM outcomes
WHERE battle = 'Guadalcanal' AND result != 'sunk';*/
	
#22
/*SELECT ship, battle, result
FROM outcomes
WHERE result = 'sunk'
ORDER BY ship;*/

#23
/*SELECT class, displacement
FROM classes
WHERE displacement > 40
ORDER BY type;*/

#24
/*SELECT trip_no, town_from, town_to
FROM trip
WHERE town_from = 'London' OR town_to = 'London'
ORDER BY time_out;*/

#25
/*SELECT trip_no, plane, town_from, town_to
FROM trip
WHERE plane = 'TU-134'
ORDER BY time_out;*/

#26
/*SELECT trip_no, plane, town_from, town_to
FROM trip
WHERE plane != 'IL-86'
ORDER BY plane;*/

#27
/*SELECT trip_no, plane, town_from, town_to
FROM trip
WHERE town_from != 'Rostov' AND town_to != 'Rostov'
ORDER BY plane;*/

#2 вибірка з одної таблиці з пиростою умовою

#1
/*SELECT *
FROM product
WHERE model LIKE '%1%1%';*/

#2
/*SELECT *
FROM outcome AS o
WHERE MONTH(o.date) = 3;*/

#3
/*SELECT *
FROM outcome_o AS o
WHERE DAYOFMONTH(o.date) = 14;*/

#4
/*SELECT name
FROM ships
WHERE name LIKE 'W%n';*/

#5
/*SELECT name
FROM ships
WHERE name LIKE '%e%e%';*/

#6
/*SELECT name, launched
FROM ships
WHERE name NOT LIKE '%a';*/

#7
/*SELECT name
FROM battles
WHERE name LIKE '% %' AND name NOT LIKE '%c';*/

#8
/*SELECT *
FROM trip
WHERE HOUR(time_out) BETWEEN 12 AND 17;*/

#9
/*SELECT *
FROM trip
WHERE HOUR(time_in) BETWEEN 17 AND 23; */

#10
/*SELECT p.date, place
FROM pass_in_trip AS p
WHERE place LIKE '%a';*/

#11
/*SELECT p.date, place
FROM pass_in_trip AS p
WHERE place LIKE '%c';*/

#12
/*SELECT name
FROM passenger
WHERE name LIKE '% C%';*/

#13
/*SELECT name
FROM passenger
WHERE name NOT LIKE '% J%';*/

#3

#1
/*SELECT maker, type, speed, hd
FROM product
JOIN pc ON pc.model = product.model
WHERE hd <= 8;*/

#2
/*SELECT maker
FROM product
JOIN pc ON pc.model = product.model
WHERE speed>= 600;*/

#3
/*SELECT maker
FROM product
JOIN laptop AS lap ON lap.model = product.model
WHERE speed <= 500;*/

#4
/*SELECT DISTINCT l1.model, l2.model, l1.ram
FROM laptop AS l1
JOIN laptop AS l2 ON l1.ram = l2.ram
WHERe l1.hd = l2.hd AND (strcmp(l1.model, l2.model) = 1 OR strcmp(l1.model, l2.model) = 0);*/


#5
/*SELECT country, type
FROM classes
JOIN ships ON ships.class = classes.class
WHERE type = 'bb' OR type = 'bc';*/

#6
/*SELECT p.model,maker
FROM product AS p
JOIN pc ON pc.model = p.model
WHERE price <600; */

#7
/*SELECT p.model,maker
FROM product AS p
JOIN pc ON pc.model = p.model
WHERE price >300; */

#8,9
/*SELECT p.model,maker, price
FROM product AS p
JOIN pc ON pc.model = p.model; */

#10
/*SELECT p.model,maker, type, speed 
FROM product AS p
JOIN laptop ON laptop.model = p.model
WHERE speed > 600; */

#11
/*SELECT ships.name, displacement
FROM classes
JOIN ships ON ships.class = classes.class; */

#12
SELECT name, ship
FROM ships
JOIN outcomes AS o ON o.ship = ships.name;

#13 
/*SELECT ships.name, country
FROM classes
JOIN ships ON ships.class = classes.class; */

#14
/*SELECT plane, name
FROM trip
JOin company AS c ON c.ID_comp = trip.ID_comp;*/

#15
