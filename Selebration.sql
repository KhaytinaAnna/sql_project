CREATE TABLE Parent (
	parent_id serial PRIMARY KEY,
  	parent_name varchar,
  	parent_age numeric,
  	parent_tel_num numeric
);

CREATE TABLE Child (
	child_id serial PRIMARY KEY,
  	child_name varchar,
  	child_age numeric,
  	child_group serial,
  	parent_id varchar,
  	FOREIGN KEY (child_group) REFERENCES Group_(group_id),
  	FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

CREATE TABLE Timetable (
	group_id serial,
  	celebration_dttm date,
  	audience_num numeric,
  	FOREIGN KEY (group_id) REFERENCES Group_(group_id)
);

CREATE TABLE Educator (
	educator_id serial PRIMARY KEY,
  	educator_name varchar,
  	educator_tel_num numeric
);

CREATE TABLE Group_ (
	group_id serial PRIMARY KEY,
  	group_name varchar,
  	educator_id serial,
  	gift_id serial,
  	FOREIGN KEY (educator_id) REFERENCES Educator(educator_id),
  	FOREIGN KEY (gift_id) REFERENCES NewYearGift(gift_id)
);

CREATE TABLE Educator_Group (
	educator_id serial PRIMARY KEY,
  	group_id serial PRIMARY KEY,
  	start_dt date PRIMARY KEY,
  	end_dt date,
  	FOREIGN KEY (educator_id) REFERENCES Educator(educator_id),
  	FOREIGN KEY (group_id) REFERENCES Group_(group_id)
);

CREATE TABLE NewYearGift (
	gift_id serial PRIMARY KEY,
  	chocolate_id serial,
  	sweet_id serial,
  	toy_id serial,
  	FOREIGN KEY (chocolate_id) REFERENCES Price(present_id),
  	FOREIGN KEY (sweet_id) REFERENCES Price(present_id),
  	FOREIGN KEY (toy_id) REFERENCES Price(present_id),
);

CREATE TABLE Price (
	present_id serial PRIMARY KEY,
  	price_amt numeric
);

INSERT INTO Parent values ('1', 'Sidorov Ivan', '35', '89015673827');
INSERT INTO Parent values ('2', 'Ivanov Petr', '29', '89275678921');
INSERT INTO Parent values ('3', 'Panenko Semen', '26', '89256893827');
INSERT INTO Parent values ('4', 'Kussev Andrej', '29', '89178346227');
INSERT INTO Parent values ('5', 'Kostina Ekaterina', '24', '89173890242');
INSERT INTO Parent values ('6', 'Podnebesnova Jana', '28', '89277802735');
INSERT INTO Parent values ('7', 'Kochagin Ilya', '36', '89010000827');
INSERT INTO Parent values ('8', 'Rodionov Ivan', '29', '89653793827');
INSERT INTO Parent values ('9', 'Redina Lilia', '40', '89015637647');
INSERT INTO Parent values ('10', 'Naniz Pshimaf', '27', '89273459754');

INSERT INTO Child values ('1', 'Sidorova Katya', '4', '2', '1');
INSERT INTO Child values ('2', 'Sidorov Mihail', '1', '1', '1');
INSERT INTO Child values ('3', 'Ivanov Matvei', '3', '2', '2');
INSERT INTO Child values ('4', 'Panenko Daniil', '4', '2', '3');
INSERT INTO Child values ('5', 'Kussev Vadim', '5', '3', '4');
INSERT INTO Child values ('6', 'Kostina Daria', '6', '3', '5');
INSERT INTO Child values ('7', 'Podnebesnova Ksenia', '5', '3', '6');
INSERT INTO Child values ('8', 'Kochagina Valentina', '2', '1', '7');
INSERT INTO Child values ('9', 'Rodionova Svetlana', '2', '1', '8');
INSERT INTO Child values ('10', 'Redin Aleksandr', '2', '1', '9');
INSERT INTO Child values ('11', 'Sidorov Stepan', '6', '3', '1');
INSERT INTO Child values ('12', 'Podnebesnova Lidia', '5', '3', '6');
INSERT INTO Child values ('13', 'Naniz Alla', '3', '2', '10');
INSERT INTO Child values ('14', 'Naniz Karina', '1', '1', '10');
INSERT INTO Child values ('15', 'Kochagin Vadim', '5', '3', '7');

INSERT INTO Timetable values ('1', '2021-12-28', '304');
INSERT INTO Timetable values ('2', '2021-12-27', '305');
INSERT INTO Timetable values ('3', '2021-12-29', '306');
INSERT INTO Timetable values ('1', '2021-12-29', '304');

INSERT INTO Educator values ('1', 'Hlebnikova Marina Olegovna', '89014561286');
INSERT INTO Educator values ('2', 'Yurova Anna Sergeevna', '89273596751');
INSERT INTO Educator values ('3', 'Kolesnikova Ksenia Sergeevna', '89005194913');
INSERT INTO Educator values ('4', 'Ivaniva Olga Vladimirovna', '89008762562');
INSERT INTO Educator values ('5', 'Korchajkin Daniil Dvitrievich', '89020872673');

INSERT INTO Group_ values ('1', 'Malinka', '1','1');
INSERT INTO Group_ values ('2', 'Klubnika', '2','7');
INSERT INTO Group_ values ('3', 'Ejevika', '5','10');

INSERT INTO Educator_group values ('1', '1', '2021-01-09', '2021-11-15');
INSERT INTO Educator_group values ('2', '1', '2021-11-15', '2022-01-01');
INSERT INTO Educator_group values ('3', '2', '2021-01-01', '2022-01-01');
INSERT INTO Educator_group values ('4', '4', '2021-01-09', '2022-01-03');
INSERT INTO Educator_group values ('5', '5', '2021-01-09', '2021-11-15');
INSERT INTO Educator_group values ('1', '3', '2021-01-09', '2021-11-15');
INSERT INTO Educator_group values ('1', '5', '2022-11-15', '2022-12-20');
INSERT INTO Educator_group values ('2', '2', '2022-01-01', '2022-01-03');
INSERT INTO Educator_group values ('3', '1', '2022-01-01', '2022-01-03');

INSERT INTO NewYearGift values ('1', '3', '5', '10');
INSERT INTO NewYearGift values ('2', '3', '4', '9');
INSERT INTO NewYearGift values ('3', '1', '6', '10');
INSERT INTO NewYearGift values ('4', '2', '6', '9');
INSERT INTO NewYearGift values ('5', '3', '6', '8');
INSERT INTO NewYearGift values ('6', '1', '4', '8');
INSERT INTO NewYearGift values ('7', '1', '4', '10');
INSERT INTO NewYearGift values ('8', '2', '5', '9');
INSERT INTO NewYearGift values ('9', '2', '4', '8');
INSERT INTO NewYearGift values ('10', '3', '5', '7');

INSERT INTO Price values ('1', '200');
INSERT INTO Price values ('2', '250');
INSERT INTO Price values ('3', '225');
INSERT INTO Price values ('4', '178');
INSERT INTO Price values ('5', '150');
INSERT INTO Price values ('6', '203');
INSERT INTO Price values ('7', '1200');
INSERT INTO Price values ('8', '1300');
INSERT INTO Price values ('9', '1570');
INSERT INTO Price values ('10', '1240');


SELECT avg(child_age)
FROM Child;

INSERT INTO Parent VALUES ('11', 'Menchuk Vsevolod', '27', '89117652091');
INSERT INTO Child VALUES ('16', 'Menchuk Agata', '1', '1', '11'), ('17', 'Menchuk Oleg', '3', '2', '11');

UPDATE Child
SET child_group = CASE
    WHEN child_group = 1
    THEN child_group = 0
    WHEN child_group = 2
    THEN child_group = 1
    WHEN child_group = 3
    THEN child_group = 2
    END;

UPDATE Group_
SET group_id = group_id - 1;

DELETE FROM Child
WHERE parent_id = (
    SELECT parent_id
    FROM Parent
    WHERE parent_age = 35
);

DELETE FROM Parent
WHERE parent_age = 35;

SELECT avg(child_age)
FROM Child
WHERE child_group = 2;

SELECT max(parent_age), min(parent_age)
FROM Parent;

SELECT child_name
FROM Child
WHERE child_group = (
    SELECT group_id
    FROM Group_
    WHERE group_name = 'Ejevika' OR group_name = 'Klubnika'
);


--В результате выполнения запроса 1 будут получены имена родителей, у которых хотя бы 2 ребенка
SELECT parent_name
FROM Parent INNER JOIN Child on Parent.parent_id = Child.parent_id
GROUP BY parent_id
HAVING count(child_id) >= 2;

--В результате выполнения запроса 2 будут получены группы в порядке убывания среднего возраста детей в них
SELECT group_name
FROM Group_ INNER JOIN Child on Group_.group_id = Child.child_group
GROUP BY group_id
ORDER BY avg(child_age) DESC;

--В результате выполнения запроса 3 найдем у каких групп воспитательницей была Хлебникова Марина Олеговна
SELECT group_name
FROM Group_ INNER JOIN Educator_Group USING(group_id) INNER JOIN Educator USING (educator_id)
GROUP BY educator_name
HAVING educator_name = 'Hlebnikova Marina Olegovna';

--В результате выполнения запроса 4 можно сравнить возраст ребенка со средним возрастом детей по каждой группе
SELECT child_group,
       child_name,
       child_age,
       avg(child_age) OVER (PARTITION BY child_group)
FROM Child;

--В результате выполнения запроса 5 в порядке возрастания выведется id подарков по стоимости
SELECT gift_id OVER (ORDER BY sum(price_amt))
FROM NewYearGift FULL OUTER JOIN Price ON Price.present_id = NewYearGift.chocolate_id
                                        OR Price.present_id = NewYearGift.sweet_id
                                        OR Price.present_id = NewYearGift.toy_id A
GROUP BY NewYearGift.gift_id;

--В результате выполнения запроса 6 находим для каждого воспитателя у группы предыдущего
SELECT group_id, educator_id, LAG(educator_id) OVER(PARTITION BY group_id ORDER BY start_dt) AS previous
FROM Educator_Group;


--Индексы ускоряют процессы поиска и JOIN. child_id, group_id чаще всего будет встречаться в запросах, поэтому будет удобно проиндексировать их
CREATE INDEX children ON Child(child_id);
CREATE INDEX groups_ ON GROUP_(group_id);

--Функция возвращает id воспитателя по имени
CREATE FUNCTION educators_id(name_ varchar) RETURNS integer AS $$
    BEGIN
        IF (SELECT count(*) FROM Educator WHERE educator_name = name_) = 0 THEN
            INSERT INTO Educator (educator_name) VALUES (name_);
        END IF;
        RETURN (SELECT DISTINCT educator_id FROM Educator WHERE educator_name = name_);
    END;
$$ LANGUAGE plpgsql;

--Функция возвращает id ребенка по имени
CREATE FUNCTION childs_id(name_ varchar) RETURNS integer AS $$
    BEGIN
        IF (SELECT count(*) FROM Child WHERE child_name = name_) = 0 THEN
            INSERT INTO Child (child_name) VALUES (name_);
        END IF;
        RETURN (SELECT DISTINCT child_id FROM Child WHERE child_name = name_);
    END;
$$ LANGUAGE plpgsql;

--Представление воспитателей для каждой конкретной группы
CREATE VIEW groups_view AS SELECT group_name, string_agg(educator_name, ', ' ORDER BY educator_name)
FROM Group_ INNER JOIN Educator ON Group_.educator_id = Educator.educator_id
GROUP BY group_name

--Представление родителей с их детьми по возрасту детей
CREATE VIEW parents_view AS SELECT parent_name, parent_age, child_name, child_age, parent_tel_num
FROM Parent INNER JOIN Child on Parent.parent_id = Child.parent_id
ORDER BY child_age;

--Представление расписания группы, ответственного на новогодние утренники
CREATE VIEW timetable_view AS SELECT celebration_dttm, audience_num, group_name, educator_name, educator_tel_num
FROM Timetable INNER JOIN Group_ USING(group_id)  INNER JOIN Educator USING(educator_id) INNER JOIN Child C2 on Group_.group_id = C2.child_group
GROUP BY celebration_dttm, audience_num


--Маскирование номера телефонов родителей
UPDATE Parent SET parent_tel_num = CONCAT('89****', substring(parent_tel_num from 9 for 2));

--Маскирование аудитории проведения празднования
UPDATE Timetable SET audience_num = substring(audience_num from 0 for 3) || '***';

