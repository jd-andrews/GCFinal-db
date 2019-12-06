CREATE TABLE questions (ID SERIAL UNIQUE PRIMARY KEY, scenario VARCHAR(480),rating INT, alignment BOOLEAN);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Jump into a frozen lake?', 1, false);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Eat a cockroach', 1, false);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Find $5', 1, true);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Fined $5', 1, false);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Have your dog run away', 1, false);

-- Friday 12.6. Added Scenario2 and Rating2 columns, inserted values
alter table questions 
add scenario2 varchar(480);
alter table questions 
add rating2 int;

update questions
set scenario2 = 'Have your dog run away', rating2=1
where id=1;
update questions
set scenario2 = 'Steal $100 from a cash register (and get away with it)', rating2=1
where id=2;

update questions
set rating2=1

update questions
set scenario2='Give a homeless person $5'
where id=3;

update questions
set scenario2='Be that person who takes up two parking spots in a crowded lot'
where id=4;

update questions
set scenario2='Have your cat run away'
where id=5;