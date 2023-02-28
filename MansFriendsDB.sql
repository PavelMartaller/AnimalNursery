DROP DATABASE MansFriends;
CREATE DATABASE MansFriends;

USE MansFriends;

-- таблицы представителей животных
CREATE TABLE cat (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Command VARCHAR(50),
    Birthday DATE
);

CREATE TABLE dog (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Command VARCHAR(100),
    Birthday DATE
);

CREATE TABLE hamster (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Command VARCHAR(100),
    Birthday DATE
);

CREATE TABLE horse (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(50),
    Command VARCHAR(100),
	Birthday DATE
);

CREATE TABLE camel (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(50),
    Command VARCHAR(100),
	Birthday DATE
);

CREATE TABLE donkey (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(50),
    Command VARCHAR(100),
	Birthday DATE
);

-- Таблицы групп животных
CREATE TABLE homeAnimal (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Command VARCHAR(100),
    Birthday DATE
);

CREATE TABLE packAnimal (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    liftWeight INT,
    Name VARCHAR(50),
    Command VARCHAR(100),
    Birthday DATE
);

-- базовый родительский класс
CREATE TABLE mansFriend(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Command VARCHAR(100),
    Birthday Date
    );
    
-- Заполняем низкоуровневые таблицы представителей
    INSERT INTO cat (Name, Command, Birthday) VALUES
    ('Пуша', 'Спать', '2021-07-05'),
    ('Глотик', 'Пить', '2019-04-06'),
	('Беляш', 'Прыгать', '2021-01-02'),
    ('Матроскин', 'Спать', '2015-03-10');
    
    SELECT * FROM cat;

    INSERT INTO dog (Name, Command, Birthday) VALUES
    ('Бобик', 'Бежать', '2020-01-01'),
    ('Барбос', 'Лежать', '2019-06-08'),
	('Туман', 'Ползти', '2022-01-08'),
    ('Дик', 'Лизать', '2023-04-17');
	
    SELECT * FROM dog;
 
	INSERT INTO hamster (Name, Command, Birthday) VALUES
    ('Томас', 'Кувырок', '2011-01-11'),
    ('Фобка', 'Есть', '2019-01-15'),
	('Крыска', 'Копать', '2020-08-16'),
    ('Шарик', 'Бегать', '2016-04-27');
	
    SELECT * FROM hamster;
     
	INSERT INTO camel (Name, Command, LiftWeight, Birthday) VALUES
    ('Лихач', 'Встать', 90, '2012-10-11'),
    ('Балда', 'Жевать', 20, '2015-08-11'),
	('Водовоз', 'Поднимать', 40, '2021-02-16'),
    ('Толик', 'Везти', 25, '2008-03-22');
	
    SELECT * FROM camel;
     
	INSERT INTO horse (Name, Command, liftWeight, Birthday) VALUES
    ('Хрусталик', 'Прыжок', 100, '2012-01-01'),
    ('Топтышка', 'Рысь', 200, '2017-08-06'),
	('Гончий', 'Галоп', 90, '2021-01-06'),
    ('Кавказ', 'Рысь', 90, '2021-03-15');
	
    SELECT * FROM horse;    
     
	INSERT INTO donkey (Name, Command, liftWeight, Birthday) VALUES
    ('Богарт', 'Бежать', 55, '2021-11-01'),
    ('Пузик', 'Есть', 15, '2018-06-06'),
	('Шрек', 'Кочевать', 200, '2021-08-12'),
    ('Иа', 'Жевать', 10, '2018-09-11');
	
    SELECT * FROM donkey;  	
 
 -- Удаление таблицы верблюдов
 DELETE FROM camel WHERE id > 0;
 SELECT * FROM camel;
 
-- Объединение таблицы лошадей и ослов в одну
CREATE TABLE packAnimalNew (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
SELECT Name, 
       Command, 
       Birthday
FROM horse UNION 
SELECT Name, 
       Command, 
       Birthday
FROM donkey;

SELECT * FROM packAnimalNew;

-- cоздание таблицы c животныvb в возрасте от 1 до 3 лет
INSERT INTO homeAnimal (Name, Command, Birthday)
SELECT  Name, 
        Command, 
        Birthday
FROM cat UNION 
SELECT  Name, 
        Command, 
        Birthday
FROM dog UNION
SELECT  Name, 
        Command, 
        Birthday
FROM hamster;

SELECT * FROM homeAnimal;

INSERT INTO mansFriend (Name, Command, Birthday)
SELECT  Name, 
        Command, 
        Birthday
FROM homeAnimal UNION
SELECT  Name, 
        Command, 
        Birthday
FROM packAnimalNew;
SELECT * FROM mansFriend;

CREATE TABLE youngAnimals (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
SELECT Name, 
        Command, 
        Birthday,
        Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) as age
FROM mansFriend
WHERE Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) > 1 
	and Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) < 3;

SELECT * FROM youngAnimals;

-- объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам
CREATE TABLE newmansFriend (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
SELECT  Name, 
        Command,
        Birthday,
        'cat' AS oldTable
FROM cat UNION
SELECT  Name, 
        Command, 
        Birthday,
        'dog' AS oldTable
FROM dog UNION
SELECT  Name, 
        Command, 
        Birthday,
        'hamster' AS oldTable
FROM hamster UNION
SELECT  Name, 
        Command, 
        Birthday,
        'horse' AS oldTable
FROM horse UNION 
SELECT  Name, 
        Command, 
        Birthday,
        'donkey' AS oldTable
FROM donkey;

SELECT * FROM newmansFriend;