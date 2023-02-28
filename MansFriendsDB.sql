DROP DATABASE MansFriends;
CREATE DATABASE MansFriends;

USE MansFriends;

## Создаем низкоуровневые таблицы
create table cat (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);


create table dog (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);


create table hamster (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);



create table horse (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);


create table camel (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);


create table donkey (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);

## Создаем таблицы уровня выше
create table pet (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);


create table packAnimal (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);

## Создаем общую таблицу
create table mansFriend(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday Date
    );
    
## Заполняем данными низкоуровневые таблицы
    
    insert into cat (Name, Command, Birthday) values
    ('Барсик', 'Спать', '2022-01-01'),
    ('Мурзик', 'Спать', '2017-06-06'),
	('Месси', 'Спать', '2023-01-06'),
    ('Мурка', 'Спать', '2021-03-17');
    
    select * from cat;

    insert into dog (Name, Command, Birthday) values
    ('Полкан', 'Лежать', '2022-01-01'),
    ('Хатико', 'Лежать', '2017-06-06'),
	('Юта', 'Лежать', '2023-01-06'),
    ('Микки', 'Лежать', '2021-03-17');
	
    select * from dog;
 
	insert into hamster (Name, Command, Birthday) values
    ('Хома', 'Бежать', '2022-01-01'),
    ('Пушок', 'Бежать', '2017-06-06'),
	('Хомура', 'Бежать', '2023-01-06'),
    ('Генерал', 'Бежать', '2021-03-17');
	
    select * from hamster;
     
	insert into camel (camelName, camelCommand, camelLiftWeight, camelBirthday) values
    ('Агата', 'Поднять', 100, '2022-01-01'),
    ('Ида', 'Поднять', 200, '2017-06-06'),
	('Ланцелот', 'Поднять', 400, '2023-01-06'),
    ('Джаред', 'Поднять', 50, '2021-03-17');
	
    select * from camel;
     
	insert into horse (Name, Command, liftWeight, Birthday) values
    ('Мерин', 'Галоп', 150, '2022-01-01'),
    ('Буран', 'Галоп', 50, '2017-06-06'),
	('Плотва', 'Галоп', 200, '2023-01-06'),
    ('Осман', 'Галоп', 250, '2021-03-17');
	
    select * from horse;    
     
	insert into donkey (Name, Command, liftWeight, Birthday) values
    ('Алдар', 'Жевать', 35, '2022-01-01'),
    ('Бригелла', 'Жевать', 10, '2017-06-06'),
	('Зигфрид', 'Жевать', 20, '2023-01-06'),
    ('Моисей', 'Жевать', 100, '2021-03-17');
	
    select * from donkey;  	
 
 ## Удаление таблицы верблюдов
 delete from camel where id > 0;
 select * from camel;
 
## Объединение таблицы лошадей и ослов в одну таблицу.
create table packAnimalNew (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select  Name, 
        Command, 
        Birthday
from horse union 
select  Name, 
        Command, 
        Birthday
from donkey;

select * from packAnimalNew;

## Создание таблицы, в которой все животные в возрасте от 1 до 3 лет.
INSERT into pet (Name, Command, Birthday)
select  Name, 
        Command, 
        Birthday
from cat union 
select  Name, 
        Command, 
        Birthday
from dog union
select  Name, 
        Command, 
        Birthday
from hamster;
select * from pet;

INSERT into mansFriend (Name, Command, Birthday)
select  Name, 
        Command, 
        Birthday
from pet union 
select  Name, 
        Command, 
        Birthday
from packAnimalNew;
select * from mansFriend;

create table youngAnimals (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select Name, 
        Command, 
        Birthday,
        Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) as age
from mansFriend
where Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) > 1 
	and Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) < 3;
select * from youngAnimals;

## Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.

create table newmansFriend (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select  Name, 
        Command,
        Birthday,
        'cat' as oldTable
from cat union 
select  Name, 
        Command, 
        Birthday,
        'dog' as oldTable
from dog union
select  Name, 
        Command, 
        Birthday,
        'hamster' as oldTable
from hamster union 
select  Name, 
        Command, 
        Birthday,
        'horse' as oldTable
from horse union 
select  Name, 
        Command, 
        Birthday,
        'donkey' as oldTable
from donkey;

select * from newmansFriend;