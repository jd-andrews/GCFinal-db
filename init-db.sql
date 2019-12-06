CREATE TABLE questions (ID SERIAL UNIQUE PRIMARY KEY, scenario VARCHAR(480),rating INT, alignment BOOLEAN);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Jump into a frozen lake?', 1, false);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Eat a cockroach', 1, false);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Find $5', 1, true);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Fined $5', 1, false);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Have your dog run away', 1, false);

alter table questions 
add scenario2 varchar(480);
alter table questions 
add rating2 int;