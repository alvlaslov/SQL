CREATE DATABASE homework3;

USE homework3;

CREATE TABLE staff
(
id INT PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(40) NOT NULL,
lastname VARCHAR(40) NOT NULL,
post VARCHAR(20) NOT NULL,
seniority INT NOT NULL,
salary INT NOT NULL,
age INT NOT NULL
);

INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
('Вася', 'Петров', 'Начальник', 40, 100000, 60),
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 25000, 40),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);


-- 1. Отсортируйте данные по полюз аработная плата (salary) в порядке: убывания; возрастания

-- в порядке: убывания;
SELECT salary
FROM staff
ORDER BY salary DESC;

-- в порядке: возрастания
SELECT salary
FROM staff
ORDER BY salary;

-- 2. Выведите 5 максимальных заработных плат (saraly)

SELECT salary
FROM staff
ORDER BY salary DESC
LIMIT 5;

-- 3. Посчитайте суммарную зарплату (salary) по каждой специальности(роst)

SELECT post, SUM(salary) AS Total_salary
FROM staff
GROUP BY post;

-- 4. Найдите кол-во сотрудников сo специальностью (post)«Рабочий»в возрасте от 24 до 49 лет включительно.

SELECT COUNT(*) AS Total
FROM staff
WHERE post = 'Рабочий' AND age BETWEEN 24 AND 49;


-- 5. Найдите количество специальностей

SELECT post, COUNT(*) AS PostCount
FROM staff
GROUP BY post;

-- 6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет

SELECT post
FROM staff
GROUP BY post
HAVING AVG(age) < 30;


