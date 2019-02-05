INSERT INTO public.country (id, name) VALUES (1, 'United Kingdom');
INSERT INTO public.country (id, name) VALUES (2, 'France');
INSERT INTO public.country (id, name) VALUES (3, 'Spain');
INSERT INTO public.country (id, name) VALUES (4, 'Ukraine');
INSERT INTO public.country (id, name) VALUES (5, 'Germany');
INSERT INTO public.country (id, name) VALUES (6, 'Belgium');
INSERT INTO public.country (id, name) VALUES (7, 'USA');
INSERT INTO public.country (id, name) VALUES (8, 'Poland');
INSERT INTO public.country (id, name) VALUES (9, 'Italy');
INSERT INTO public.country (id, name) VALUES (10, 'Czech Republic');
INSERT INTO public.country (id, name) VALUES (11, 'Russia');
INSERT INTO public.country (id, name) VALUES (12, 'Sweden');
INSERT INTO public.country (id, name) VALUES (13, 'Norway');
INSERT INTO public.country (id, name) VALUES (14, 'Finland');
INSERT INTO public.country (id, name) VALUES (15, 'Romania');
INSERT INTO public.country (id, name) VALUES (16, 'Hungary');


INSERT INTO public.city (id, name, country_id) VALUES (1, 'London', 1);
INSERT INTO public.city (id, name, country_id) VALUES (2, 'Paris', 2);
INSERT INTO public.city (id, name, country_id) VALUES (3, 'Madrid', 3);
INSERT INTO public.city (id, name, country_id) VALUES (4, 'Birmingham', 1);
INSERT INTO public.city (id, name, country_id) VALUES (5, ' Manchester', 1);
INSERT INTO public.city (id, name, country_id) VALUES (6, 'Glasgow', 1);
INSERT INTO public.city (id, name, country_id) VALUES (7, 'Sheffield', 1);
INSERT INTO public.city (id, name, country_id) VALUES (8, 'Marseille', 2);
INSERT INTO public.city (id, name, country_id) VALUES (9, 'Toulouse', 2);
INSERT INTO public.city (id, name, country_id) VALUES (10, 'Bordeaux', 2);
INSERT INTO public.city (id, name, country_id) VALUES (11, 'Barcelona', 3);
INSERT INTO public.city (id, name, country_id) VALUES (12, 'Valencia', 3);
INSERT INTO public.city (id, name, country_id) VALUES (13, 'Seville', 3);
INSERT INTO public.city (id, name, country_id) VALUES (14, 'Kyiv', 4);
INSERT INTO public.city (id, name, country_id) VALUES (15, 'Kharkiv', 4);
INSERT INTO public.city (id, name, country_id) VALUES (16, 'Dnipro', 4);
INSERT INTO public.city (id, name, country_id) VALUES (17, 'Berlin', 5);
INSERT INTO public.city (id, name, country_id) VALUES (18, 'Hamburg', 5);
INSERT INTO public.city (id, name, country_id) VALUES (19, 'Munich', 5);
INSERT INTO public.city (id, name, country_id) VALUES (20, 'Brussels', 6);
INSERT INTO public.city (id, name, country_id) VALUES (21, 'Antwerpen', 6);
INSERT INTO public.city (id, name, country_id) VALUES (22, 'New York City', 7);
INSERT INTO public.city (id, name, country_id) VALUES (23, 'Los Angeles', 7);
INSERT INTO public.city (id, name, country_id) VALUES (24, 'Chicago', 7);
INSERT INTO public.city (id, name, country_id) VALUES (25, 'Katowice', 8);
INSERT INTO public.city (id, name, country_id) VALUES (26, 'Lublin', 8);
INSERT INTO public.city (id, name, country_id) VALUES (27, 'Warsaw', 8);
INSERT INTO public.city (id, name, country_id) VALUES (28, 'Rome', 9);
INSERT INTO public.city (id, name, country_id) VALUES (29, 'Milan', 9);
INSERT INTO public.city (id, name, country_id) VALUES (30, 'Naples', 9);
INSERT INTO public.city (id, name, country_id) VALUES (31, 'Prague', 10);
INSERT INTO public.city (id, name, country_id) VALUES (32, 'Ostrava', 10);
INSERT INTO public.city (id, name, country_id) VALUES (33, 'Brno', 10);
INSERT INTO public.city (id, name, country_id) VALUES (34, 'Moscow', 11);
INSERT INTO public.city (id, name, country_id) VALUES (35, 'Saint Petersburg', 11);
INSERT INTO public.city (id, name, country_id) VALUES (36, 'Stockholm', 12);
INSERT INTO public.city (id, name, country_id) VALUES (37, 'Malm?', 12);
INSERT INTO public.city (id, name, country_id) VALUES (38, 'G?teborg', 12);
INSERT INTO public.city (id, name, country_id) VALUES (39, 'Oslo', 13);
INSERT INTO public.city (id, name, country_id) VALUES (40, 'Bergen', 13);
INSERT INTO public.city (id, name, country_id) VALUES (41, 'Trondheim', 13);
INSERT INTO public.city (id, name, country_id) VALUES (42, 'Helsinki', 14);
INSERT INTO public.city (id, name, country_id) VALUES (43, 'Tampere', 14);
INSERT INTO public.city (id, name, country_id) VALUES (44, 'Bucharest', 15);
INSERT INTO public.city (id, name, country_id) VALUES (45, 'Constanta', 15);
INSERT INTO public.city (id, name, country_id) VALUES (46, 'Cluj-Napoca', 15);
INSERT INTO public.city (id, name, country_id) VALUES (47, 'Budapest', 16);
INSERT INTO public.city (id, name, country_id) VALUES (48, 'Debrecen', 16);
INSERT INTO public.city (id, name, country_id) VALUES (49, 'Szeged', 16);
INSERT INTO public.city (id, name, country_id) VALUES (50, 'Samara', 11);


INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (300, 'Alex', 'Smith', 2);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (301, 'Anna', 'Popova', 14);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (302, 'Mike', 'Johnson', 1);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (303, 'Hope', 'Brown', 7);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (304, 'Herbert', 'Schmidt ', 17);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (305, 'Sabine', 'Fischer', 17);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (306, 'Karine ', 'Andre', 8);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (307, 'Manon', 'Vincent', 8);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (308, 'Pierre', 'Dupont', 9);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (309, 'K?vin', 'Petit', 10);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (310, 'Maria', 'Fournier', 2);

INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (100, 'Angelina', 'Jolie', 5);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (101, 'Brad ', 'Pitt', 7);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (102, 'Johnny', 'Depp', 8);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (103, 'Tom', 'Cruise', 10);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (104, 'Julia', 'Roberts', 16);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (105, 'Jennifer', 'Aniston', 18);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (106, 'Freddie', 'Mercury', 19);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (107, 'Brian', 'May', 24);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (108, 'Roger', 'Taylor', 26);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (109, 'Elton', 'John', 29);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (110, 'Kurt', 'Cobain', 30);

INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (600, 'Ivan', 'Ivanov', 1);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (601, 'Sergiy', 'Sergeev', 2);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (602, 'Irina', 'Sokolyan', 3);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (603, 'Igor', 'Velychuk', 5);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (604, 'Andriy', 'Malanyk', 4);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (605, 'Tetyana', 'Makarova', 6);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (606, 'Vasulj', 'Vasyljov', 7);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (607, 'Andriy', 'Goyan', 9);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (608, 'Ivan', 'Fadeev', 2);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (609, 'Igor', 'Yaremchuk', 8);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (610, 'Ivan', 'Seleev', 4);


INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (801, 'Kate', 'Jin', 8);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (802, 'Art', 'House', 6);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (804, 'Kolya', 'Bibin', 7);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (805, 'Vita', 'Valet', 10);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (803, 'Sasha', 'Guf', 20);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (806, 'Galya', 'Glyk', 28);

INSERT INTO
   public.person( id, first_name,  last_name, city_id) 
VALUES  (511, 'Hanna', 'Pyrizhok', 15),
(512, 'Maria', 'Vasilkov', 1),
(513, 'Olha', 'Holovna', 3),
(514, 'Basil', 'Kravet', 11),
(515, 'Viktor', 'Brol', 22),
(516, 'Alla', 'Oleg', 6),
(517, 'Oksana', 'Dovga', 19),
(518, 'Ivan', 'Kravets', 8),
(519, 'Jonh', 'Verit', 16),
(520, 'Mykola', 'Kravets', 4);

INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (400, 'Olexiy', 'Ivanov', 2);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (401, 'Tymophy', 'Kozak', 8);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (402, 'Oksana', 'Lytvin', 2);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (403, 'Lila', 'Goy', 2);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (404, 'Andriy', 'Bogach', 10);


INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (701, 'Audrey', 'Smith', 2);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (702, 'Catherine ', 'Edwards', 1);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (703, 'Dexter', 'Round', 8);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (704, 'Frankie', 'Walls', 1);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (705, 'Matthew', 'Turner', 9);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (706, 'Pamela', 'Fletcher', 22);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (707, 'Scott', 'Bush', 1);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (708, 'Victor', 'Bishop', 14);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (709, 'William', 'Jacobson', 10);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (710, 'Elvin', 'Thomas', 1);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (700, 'Jenny', 'Vipirovsky', 9);


INSERT INTO person (id, first_name, last_name, city_id) VALUES (1, 'Oleg', 'Shevtsov', 15);
INSERT INTO person (id, first_name, last_name, city_id) VALUES (2, 'Viktoria', 'Petrenko', 16);
INSERT INTO person (id, first_name, last_name, city_id) VALUES (3, 'Harry', 'Jons', 1);
INSERT INTO person (id, first_name, last_name, city_id) VALUES (4, 'Jessica', 'Korn', 1);
INSERT INTO person (id, first_name, last_name, city_id) VALUES (6, 'Ben', 'Reddy', 4);
INSERT INTO person (id, first_name, last_name, city_id) VALUES (5, 'Daniel', 'Caine', 5);
INSERT INTO person (id, first_name, last_name, city_id) VALUES (7, 'Antonio', 'Banda', 3);
INSERT INTO person (id, first_name, last_name, city_id) VALUES (8, 'Mario', 'Casas', 12);
INSERT INTO person (id, first_name, last_name, city_id) VALUES (10, 'Alexandr', 'Fehling', 18);
INSERT INTO person (id, first_name, last_name, city_id) VALUES (9, 'Franka', 'Potente', 12);

INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (200, 'John', 'Newman', 1);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (201, 'Alan', 'Walker', 2);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (202, 'Ariana', 'Grande', 3);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (203, 'Bruno', 'Mars', 4);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (204, 'Bebe', 'Rexha', 5);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (205, 'Charlie', 'Puth', 6);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (206, 'Chris', 'Brown', 7);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (207, 'Kanye', 'West', 8);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (208, 'Ed', 'Sheeran', 9);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (209, 'Justin', 'Timberlake', 10);
INSERT INTO public.person (id, first_name, last_name, city_id) VALUES (210, 'Adam', 'Levine', 11);


INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (300, 301, '1984-11-01', '1997-12-19', '2175 Washington St', 'Kolotylo', 302);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (301, 305, '1973-12-12', '2000-11-16', '728 N Altamont St', 'Kolotylo', 302);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (302, 306, '1969-04-30', '2003-02-15', '16018 Inglewd Rd NE
BOTHELL', 'Kolotylo', 302);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (303, 309, '1965-03-29', '2006-06-26', '19115 Ballinger Way NE', 'Kolotylo', 302);


INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (100, 105, '1998-11-12', '2018-12-12', '55 Lenina Street', 'Ivanchuk', 101);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (101, 106, '1963-03-02', '2011-10-11', '109 Kokosova Street', 'Ivanchuk', 102);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (102, 108, '1981-01-01', '2001-02-03', '33 Ukrainian Street', 'Ivanchuk', 109);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (103, 110, '1996-10-08', '2009-01-06', '63 Komsomola Street', 'Ivanchuk', 104);


INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (630, 600, '1986-12-11', '2018-01-25', 'Poletaeva str.,6', 'Sinelnikova', 603);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (631, 601, '1974-11-02', '2014-11-12', 'Rusjka str.,115', 'Sinelnikova', 603);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (632, 602, '1980-02-15', '2011-12-11', 'Golovna str., 52', 'Sinelnikova', 603);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (633, 603, '1986-03-10', '2015-05-10', 'Komarova str., 10', 'Sinelnikova', 602);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (634, 604, '1970-02-11', '2016-06-17', 'Poletaeva str.,110', 'Sinelnikova', 602);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (635, 605, '1968-05-05', '1999-07-10', 'Golovna str.,110', 'Sinelnikova', 603);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (636, 606, '1970-06-11', '2000-08-01', 'Rusjka str.,123', 'Sinelnikova', 603);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (637, 607, '1985-07-12', '2000-09-02', 'Poletaeva str.,156', 'Sinelnikova', 602);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (638, 608, '1990-08-12', '2005-12-11', 'Golovna str., 78', 'Sinelnikova', 601);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (639, 609, '1995-12-08', '2006-12-08', 'Poletaeva str.,12', 'Sinelnikova', 601);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (640, 610, '2000-11-08', '2010-08-08', 'Golovna str.,10', 'Sinelnikova', 601);

INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (700, 703, '1988-10-11', '2012-03-31', '46 Lockfield Avenue
', 'Mershon', 710);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (701, 707, '1985-12-27', '2010-04-01', '10-16 Buchanan Street', 'Mershon', 710);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (702, 701, '1997-11-04', '2017-08-25', '49 Featherstone Street', 'Mershon', 710);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (703, 700, '1978-05-28', '2007-02-13', '109 Silverburn Street', 'Mershon', 710);

INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (801, 803, '2003-03-23', '2013-03-23', 'street 20', 'active', 801);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (802, 801, '1991-11-11', '2011-11-11', 'street 35', 'passive', 803);

INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (400, 400, '1976-05-16', '1990-06-18', 'Geroiv Maydanu 103b', 'Madryha', 401);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (401, 403, '1976-07-18', '1995-07-20', 'Ruska 22', 'Madryha', null);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (402, 404, '1956-07-18', '1985-11-04', 'Vorobkevycha 45', 'Madryha', 401);

INSERT INTO employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (1, 1, '1974-10-13', '1996-04-23', '184/85 Komarova str.', 'Chuchko', 10);
INSERT INTO employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (2, 3, '1971-02-11', '1995-05-05', '30 str Mary Axe', 'Chuchko', 10);
INSERT INTO employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (3, 6, '1979-07-14', '2004-06-03', '5 Parizer str', 'Chuchko', 10);
INSERT INTO employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (4, 8, '1964-04-15', '1993-08-24', '477, Avinguda Diagonal', 'Chuchko', 10);


INSERT INTO
   public.employee( id, person_id,  birth_date, hire_date, address, chief_id, note) 
VALUES
   (501, 511, '1992-07-23', '2000-04-01', 'MEGASYSTEMS INC 799 E', 514, 'Hanna Pyrizhok'),
(502, 512, '980-05-16', '1994-08-08', 'MAIN ST PHOENIX AZ 85123', 514, 'Hanna Pyrizhok'),
(503, 515, '1975-11-03', '1996-03-21', 'BOYLSTON AVE E SEATTLE WA 98102', 512, 'Hanna Pyrizhok'),
(504, 514, '1985-02-28', '1990-08-17', 'DRAGRAM SUITE 5A', 514, 'Hanna Pyrizhok'),
(505, 513, '1982-09-02', '1992-10-01', 'MAIN ST PO BOX 1022', 512, 'Hanna Pyrizhok');


INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (201, 201, '1969-02-04', '1997-01-16', '20 Rue Saint-Martin, 75001 Paris', 'Havrylitsa', 209);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (200, 200, '1960-07-21', '1997-11-05', 'Wahaca, 119 Waterloo Rd, Lambeth, London SE1 8UL', 'Havrylitsa', 210);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (202, 202, '1990-11-16', '2018-12-12', 'Plaza de Carlos Cambronero, 4, 28004 Madrid', 'Havrylitsa', 210);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (203, 203, '1975-09-18', '2010-02-15', '26, Great Western Arcade, Colmore Row, Birmingham B2 5HU', 'Havrylitsa', 209);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (204, 204, '1985-04-01', '2009-06-03', '22 Lloyd Street, Albert Square, Manchester M2 5WA', 'Havrylitsa', 209);
INSERT INTO public.employee (id, person_id, birth_date, hire_date, address, note, chief_id) VALUES (205, 205, '1984-09-22', '2007-10-24', '3 Port Dundas Pl, Glasgow G2 3LD', 'Havrylitsa', 210);


INSERT INTO public.category (id, name) VALUES (1, 'Cheese');
INSERT INTO public.category (id, name) VALUES (2, 'Dairy products');
INSERT INTO public.category (id, name) VALUES (3, 'Meat products');
INSERT INTO public.category (id, name) VALUES (4, 'Seafood');
INSERT INTO public.category (id, name) VALUES (5, 'Coffee');
INSERT INTO public.category (id, name) VALUES (6, 'Oil');
INSERT INTO public.category (id, name) VALUES (7, 'Dries fruit');
INSERT INTO public.category (id, name) VALUES (8, 'Fruits');
INSERT INTO public.category (id, name) VALUES (9, 'Drinks');



INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (300, 'Cuttlefish', 15, 6, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (301, 'Loco', 13, 7, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (302, 'Mussel', 12, 9, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (303, 'Octopus', 16, 13, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (304, 'Oyster', 9, 13, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (305, 'Scallop', 12, 13, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (306, 'Squid', 13, 14, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (307, 'Escargot', 10, 14, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (308, 'Bombay duck', 20, 12, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (309, 'Bream', 16, 6, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (310, 'crabs', 12, 16, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (311, 'lobsters', 13, 7, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (312, 'Krill', 10, 3, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (313, 'Langostino', 15, 2, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (314, 'Shrimp', 18, 1, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (315, 'Lamprey', 12, 1, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (316, 'Mackerel', 16, 14, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (317, 'Mullet', 17, 12, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (318, 'Pike', 16, 3, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (319, 'Pilchard', 15, 6, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (320, 'Pomfret', 19, 3, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (321, 'Salmon', 15, 1, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (322, 'Shark', 12, 12, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (323, 'Skate', 12, 13, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (324, 'Sturgeon', 13, 6, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (325, 'Surimi', 17, 7, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (326, 'Caviar', 18, 10, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (327, 'Lumpfish', 16, 13, 4);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (328, 'Tobiko', 14, 14, 4);

INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (100, 'ayran', 100, 1, 2);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (101, 'butter', 120, 4, 2);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (102, 'buttermilk', 50, 3, 2);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (103, 'milk', 10, 7, 2);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (104, 'yogurt', 15, 9, 2);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (105, 'cream', 20, 11, 2);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (106, 'kumis', 130, 13, 2);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (107, 'sour cream', 40, 14, 2);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (108, 'ice cream', 50, 16, 2);





INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (701, 'bamana', 29, 3, 8);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (702, 'coconut', 45, 2, 8);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (703, 'apple', 10, 4, 8);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (704, 'mango', 26, 5, 8);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (705, 'lemon', 30, 7, 8);


INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (650, 'prunes', 10, 1, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (651, 'kuraga', 15, 2, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (652, 'gotgam', 8, 8, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (653, 'Apple chips', 7, 7, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (654, 'Chifle', 10, 3, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (655, 'nut', 11, 4, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (656, 'Figs', 10, 15, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (657, 'Dates', 5, 3, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (658, 'Apricots', 6, 5, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (659, 'Peaches', 8, 2, 7);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (660, 'Raisins', 10, 1, 7);


INSERT INTO product (id, name, price, country_id, category_id) VALUES (2, 'Edam', 7, 9, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (3, 'Parmesan', 16, 9, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (4, 'Emmental', 8, 5, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (5, 'Gouda', 7, 8, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (6, 'Feta', 4, 8, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (1, 'Tofu ', 10, 2, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (7, 'Brie', 8, 2, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (8, 'Mozzarella', 6, 9, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (9, 'Ricotta', 9, 9, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (10, 'Bryndza', 7, 4, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (11, 'Cheddar', 11, 12, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (12, 'Roquefort', 15, 2, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (13, 'Gorgonzola', 13, 5, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (14, 'Pecorino', 11, 9, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (15, 'Camembert', 17, 2, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (16, 'Grana Padana', 15, 9, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (17, 'Limburger', 14, 3, 1);
INSERT INTO product (id, name, price, country_id, category_id) VALUES (18, 'Munster', 18, 2, 1);


INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (800, 'calvados', 135, 2, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (801, 'gin', 80, 6, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (802, 'tequila', 95, 3, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (803, 'vodka', 50, 11, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (804, 'champagne', 75, 7, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (805, 'absinthe', 220, 8, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (806, 'beer', 30, 5, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (807, 'whisky', 82, 1, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (808, 'brandy', 47, 14, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (809, 'cider', 23, 9, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (810, 'rum', 77, 12, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (811, 'liqueur ', 64, 4, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (812, 'cognac', 58, 10, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (813, 'sherry', 14, 13, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (814, 'wine', 116, 15, 9);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (815, 'punch', 65, 16, 9);

INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (400, 'Kopi Luwak', 960, 1, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (401, 'Jamaica Blue Mountain', 805, 1, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (402, 'Hawaii Captain Cook', 400, 2, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (403, 'Galapagos San Cristobal', 320, 2, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (404, 'Nepal Kukri Mount Everest', 235, 3, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (405, 'Ethiopia Sidamo', 86, 3, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (406, 'Cafe de Colombia', 150, 4, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (407, 'Java', 86, 4, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (408, 'Cote dazur', 81, 5, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (409, 'Sera', 86, 5, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (410, 'Lilla & Rose', 72, 6, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (411, 'Rosso & Nero', 81, 6, 5);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (412, 'Ballerina', 70, 7, 5);


INSERT INTO
   public.product( id, name, price, country_id, category_id) 
VALUES
   (501, 'olive oil', 340, 9, 6), 
   (502, 'coconut oil', 356, 4, 6), 
   (503, 'corn oil', 100, 9, 6), 
   (504, 'peanut oil', 318, 7, 6), 
   (505, 'palm oil', 120, 4, 6);


INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (200, 'Whale meat', 3000, 1, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (201, 'Beef', 150, 2, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (202, 'Pork', 130, 3, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (203, 'Horsemeat', 500, 4, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (204, 'Rabbit', 190, 5, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (205, 'Meat of Nutria', 250, 6, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (206, 'Chicken', 70, 7, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (207, 'Turkey', 130, 8, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (208, 'Snails', 200, 9, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (209, 'Frog''s thighs', 1000, 10, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (210, 'Kangaroo Meat', 1500, 11, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (211, 'Wild duck meat', 210, 12, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (212, 'Pheasan meat', 700, 13, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (213, 'Bushmeat', 2000, 14, 3);
INSERT INTO public.product (id, name, price, country_id, category_id) VALUES (214, 'Turtle meat', 2500, 15, 3);


INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (10, 2, '2018-11-03', '2018-11-03', 2, 2);
INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (1, 2, '2007-10-15', '2007-10-16', 9, 1);
INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (4, 1, '2014-08-14', '2014-08-14', 2, 8);
INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (5, 4, '2016-12-24', '2016-12-24', 1, 2);
INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (2, 2, '2009-04-14', '2009-04-14', 5, 3);
INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (3, 4, '2014-06-15', '2014-06-17', 4, 18);
INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (7, 2, '2018-05-06', '2018-05-07', 5, 17);
INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (8, 3, '2018-09-14', '2018-09-14', 9, 18);
INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (6, 3, '2018-03-14', '2018-03-15', 7, 3);
INSERT INTO "order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (9, 1, '2018-10-11', '2018-10-11', 4, 5);



INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (300, 301, '2016-05-05', '2016-05-07', 300, 2);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (301, 301, '2016-07-13', '2016-07-14', 304, 17);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (302, 302, '2015-03-26', '2015-03-27', 307, 8);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (303, 302, '2015-02-02', '2015-02-03', 303, 7);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (304, 303, '2017-06-28', '2017-06-29', 302, 1);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (305, 303, '2017-06-09', '2017-06-10', 308, 9);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (306, 300, '2016-06-25', '2016-06-27', 308, 9);



INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (700, 700, '2012-05-08', '2012-05-09', 703, 2);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (701, 700, '2013-01-15', '2013-01-17', 703, 2);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (702, 701, '2011-12-03', '2011-12-04', 707, 1);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (703, 701, '2014-10-17', '2014-10-19', 707, 8);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (704, 702, '2017-09-09', '2012-09-12', 701, 9);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (705, 702, '2017-11-15', '2017-11-16', 701, 5);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (706, 703, '2008-04-29', '2008-04-30', 700, 1);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (707, 703, '2010-07-19', '2010-07-20', 700, 16);

INSERT INTO public.order (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (400, 400, '1999-11-12', '1999-11-14', 403, 16);
INSERT INTO public.order (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (401, 401, '1997-07-04', '1997-07-06', 402, 18);
INSERT INTO public.order (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (402, 402, '2002-01-02', '2002-01-05', 400, 02);




INSERT INTO
   public.order( id, employee_id,  order_date, shipped_date, person_id, city_delivery_id) 
VALUES  (521, 501, '1995-03-21', '1995-03-25', 518, 8),
(522, 501, '1995-04-21', '1995-04-25', 517, 19),
(523, 504, '1990-03-21', '1995-03-25', 519, 16),
(524, 505, '1985-03-21', '1995-03-25', 516, 6),
(525, 505, '1985-06-15', '1995-06-20', 520, 4);



INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (810, 801, '2018-10-20', '2017-11-20', 802, 5);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (811, 802, '2001-10-15', '2001-10-17', 803, 7);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (812, 802, '2001-10-20', '2001-10-25', 801, 9);





INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (670, 630, '2005-12-01', '2006-01-12', 600, 1);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (671, 632, '2010-01-01', '2010-02-01', 602, 3);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (672, 631, '2017-02-03', '2017-03-03', 601, 10);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (673, 635, '2017-03-04', '2017-05-04', 608, 15);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (674, 638, '2015-05-04', '2015-06-04', 609, 45);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (675, 639, '2017-06-01', '2017-07-02', 603, 30);


INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (100, 100, '2013-06-07', '2013-06-09', 102, 6);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (101, 101, '2019-01-01', '2019-01-15', 104, 9);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (102, 102, '2018-05-05', '2018-06-06', 108, 1);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (103, 103, '2015-10-10', '2015-10-29', 106, 4);


INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (200, 200, '1997-01-15', '1997-01-16', 207, 1);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (201, 201, '1997-02-12', '1997-02-12', 206, 2);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (202, 202, '2010-06-17', '2010-06-18', 208, 3);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (203, 203, '2018-10-17', '2018-10-17', 205, 4);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (204, 201, '2016-08-31', '2016-09-01', 208, 5);
INSERT INTO public."order" (id, employee_id, order_date, shipped_date, person_id, city_delivery_id) VALUES (205, 201, '2017-05-22', '2017-05-22', 206, 2);


INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (300, 321, 1, 301, 14);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (301, 311, 1, 301, 15);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (302, 311, 1, 301, 15);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (303, 312, 1, 301, 9);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (304, 315, 1, 301, 12);


INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (101, 101, 1, 101, 999);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (102, 102, 8, 102, 150);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (103, 103, 2, 103, 190);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (104, 105, 6, 100, 200);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (105, 106, 4, 101, 499);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (106, 108, 16, 102, 750);



INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (821, 703, 26, 812, 24);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (822, 701, 20, 811, 19);





INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (680, 650, 5, 670, 5);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (681, 651, 2, 671, 6);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (682, 652, 3, 672, 10);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (683, 653, 10, 673, 12);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (684, 654, 20, 674, 15);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (685, 655, 25, 675, 10);




INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (701, 805, 13, 704, 215);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (702, 803, 148, 701, 41);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (703, 813, 27, 701, 10);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (704, 809, 57, 707, 20);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (705, 807, 87, 703, 76);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (706, 804, 196, 704, 70);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (707, 814, 567, 705, 102);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (700, 800, 47, 705, 128);


INSERT INTO public.order_items( id, product_id, order_id, historical_price) 
VALUES  (551, 503, 521, 50),
(552, 504, 521, 300),
(553, 501, 525, 50),
(554, 502, 525, 350),
(555, 505, 525, 100);

INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (400, 410, 25, 400, 60);

INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (11, 1, 5, 1, 8);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (2, 3, 4, 2, 17);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (3, 6, 2, 3, 7);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (4, 8, 8, 4, 9);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (5, 11, 3, 5, 12);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (6, 18, 7, 6, 19);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (7, 13, 2, 7, 15);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (8, 10, 5, 8, 8);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (9, 1, 6, 9, 7);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (10, 14, 2, 10, 12);
INSERT INTO order_items (id, product_id, quantity, order_id, historical_price) VALUES (1, 2, 2, 2, 8);


INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (200, 200, 3, 200, 2500);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (201, 201, 1, 200, 150);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (202, 203, 5, 201, 500);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (203, 202, 3, 201, 130);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (204, 204, 1, 201, 190);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (205, 200, 1, 202, 3000);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (206, 209, 3, 203, 1000);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (207, 211, 2, 204, 210);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (208, 212, 5, 205, 700);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (209, 214, 2, 205, 2500);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (210, 205, 10, 205, 250);
INSERT INTO public.order_items (id, product_id, quantity, order_id, historical_price) VALUES (211, 207, 5, 205, 135);
