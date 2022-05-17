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

