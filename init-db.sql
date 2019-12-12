CREATE TABLE questions (ID SERIAL UNIQUE PRIMARY KEY, scenario VARCHAR(480),rating INT, alignment BOOLEAN);
CREATE TABLE players (ID SERIAL UNIQUE PRIMARY KEY, playername VARCHAR(100), playerimage TEXT, playerscore INT  );
INSERT INTO questions (scenario, rating, alignment) VALUES ('Jump into a frozen lake?', 1, false);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Eat a cockroach', 1, false);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Find $5', 1, true);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Pay a $5 fine', 1, false);
INSERT INTO questions (scenario, rating, alignment) VALUES ('Have your dog run away', 1, false);


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
set scenario = 'Find $50'
where id=3;

update questions
set scenario2='Give a homeless person $5'
where id=3;

update questions
set scenario2='Be that person who takes up two parking spots in a crowded lot'
where id=4;

update questions
set scenario2='Have your cat run away'
where id=5;

insert into questions(scenario, scenario2)
values('Always be hungry', 'Always be tired');

insert into questions(scenario, scenario2)
values('Live to age 100', 'Have immortal life');

INSERT INTO players (playername, playerimage, playerscore) VALUES ('Big win boi', 'https://randomuser.me/api/portraits/men/75.jpg', 1999);
INSERT INTO players (playername, playerimage, playerscore) VALUES ('Big lose person', 'https://randomuser.me/api/portraits/men/55.jpg', 0);
INSERT INTO players (playername, playerimage, playerscore) VALUES ('Big win gorl', 'https://randomuser.me/api/portraits/women/11.jpg', 2999);
INSERT INTO players (playername, playerimage, playerscore) VALUES ('Big lose person', 'https://randomuser.me/api/portraits/women/42.jpg', 4);


-- below scenarios have not actually been added to the table yet, 
-- just typing new scenarios here for pre-approval

insert into questions(scenario, scenario2)
values('Tomato be classified as a fruit', 'Tomato be classified as a vegetable');

insert into questions(scenario, scenario2)
values('Travel back in time', 'Travel to the future');

insert into questions(scenario, scenario2)
values('Lose your phone', 'Lose your wallet');

insert into questions(scenario, scenario2)
values('Be the next Albert Einstein', 'Be the next David Bowie');

insert into questions(scenario, scenario2)
values('Spend life in prison for a murder you did not commit', 'Spend 20 years in prison for robbing a bank');

insert into questions(scenario, scenario2)
values('Find out you are actually an android', 'Find out your spouse is an android');

insert into questions(scenario, scenario2)
values('', '');