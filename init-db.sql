CREATE TABLE questions
(
    ID SERIAL UNIQUE PRIMARY KEY,
    scenario VARCHAR(480),
    rating INT,
    alignment BOOLEAN
);

-- INSERT INTO questions
--     (scenario, rating, alignment)
-- VALUES
--     ('Pay a $5 fine', 1, false);
-- INSERT INTO questions
--     (scenario, rating, alignment)
-- VALUES
--     ('Have your dog run away', 1, false);

-- INSERT INTO questions
--     (scenario, rating, alignment)
-- VALUES
--     ('Jump into a frozen lake?', 1, false);
-- INSERT INTO questions
--     (scenario, rating, alignment)
-- VALUES
--     ('Eat a cockroach', 1, false);
-- INSERT INTO questions
--     (scenario, rating, alignment)
-- VALUES
--     ('Find $5', 1, true);

alter table questions 
add scenario2 varchar(480);
alter table questions 
add rating2 int;



-- update questions
-- set scenario2 = 'Steal $100 from a cash register (and get away with it)', rating2=1
-- where id=1;

-- update questions
-- set rating2=1;


-- update questions
-- set scenario2='Give a homeless person $5'
-- where id=2;


-- update questions
-- set scenario2='Have your cat run away'
-- where id=3;

insert into questions
    (scenario, scenario2, rating, rating2)
values('Always be hungry', 'Always be tired', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Live to age 100', 'Have immortal life', 1, 1);

-- below scenarios have not actually been added to the table yet, 
-- just typing new scenarios here for pre-approval

insert into questions
    (scenario, scenario2, rating, rating2)
values('Tomato be classified as a fruit', 'Tomato be classified as a vegetable', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Travel back in time', 'Travel to the future', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Lose your phone', 'Lose your wallet', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be the next Albert Einstein', 'Be the next David Bowie', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Spend life in prison for a murder you did not commit', 'Spend 20 years in prison for robbing a bank', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Find out you are actually an android', 'Find out your spouse is an android', 1, 1);
-- Start

insert into questions
    (scenario, scenario2, rating, rating2)
values('Sell all of your possessions', 'Sell one of your organs', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be feared by all', 'Be loved by all', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Not make much money, but help people', 'Become incredibly rich by hurting people', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Live in the wilderness with no human interaction', 'Live on a deserted island with one random person', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Lose all of your memories from birth', 'Lose the ability to make new long-term memories', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be unable to have children', 'Only be able to conceive quintuplets', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Clean rest stop toilets for a living', 'Work in a slaughterhouse for a living', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Lose all your money and valuables', 'Lose all of the pictures you have ever taken', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Find your true love', 'Find a suitcase with five million dollars', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Have chapped lips that never heal', 'Have terrible dandruff that resists treatment', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Live without hot shower water', 'Live without a washing mashine', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be alone for the rest of your life', 'Always be surrounded by annoying people', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Know when you are going to die', 'Know how you are going to die', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be fluent in all languages and never travel', 'Be able to travel anywhere for a year, never being able to learn a word of a different language', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Have everything on your phone (browsing history, photos, etc) made public to anyone who searches your name', 'Never use a cell phone again', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Lose the ability to read', 'Lose the ability to speak', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Have one get out of jail free card', 'A key that opens any door', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Know the history of every object you touch', 'Be able to talk to animals', 1, 1);


insert into questions
    (scenario, scenario2, rating, rating2)
values('Have all traffic lights you approach be green', 'Never have to stand in line again', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be able to see 10 minutes into your own future', '10 minutes into the future of anyone else', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Discover & explore a new planet', 'Invent a drug that cures a deadly disease', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Go back to age 5 with everything you know currently', 'Currently know everything your future self will learn', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be able to control animals(excluding humans) with your mind', 'Control electronics with your mind', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Unlimited internation first-class tickets', 'Never have to pay for food at restaurants', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be forced to dance every time you heard music', 'Be forced to sing along to any song you heard', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be completely insane and know it', 'Be completely insane, but believe you are sane', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Have whatever you are thinking appear above your head for everyone to see', 'Have absolutely everything you do live streamed', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Wake up as a new random person every year, and have full control of them during', 'Once a week spend a day inside a stranger without having any control', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Every shirt you ever wear be kind of itchy', 'Only be able to use 1 ply toilet paper', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be unable to move every time it rains', 'Not be able to stop moving while the sun is out', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Have skin that changes color based on your emotions', 'Tattoos appear all over your body depicting what you did yesterday', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Randomly time travel +/- 20 years every time you pass gas', 'Teleport to a different place on earth every time you sneeze', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Everyone be required to wear identical silver jumpsuits', 'Any time two people meet while wearing an identical article of clothing, they must fight to the death', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be able to control fire', 'Be able to control water', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Live without the internet', 'Live without AC and heating', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be able to teleport anywhere', 'Be able to read minds', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Never be able to eat meat', 'Never be able to eat vegetables', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be famous and ridiculed', 'Just be a normal person', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Have a flying carpet', 'A car that can drive underwater', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Be forced to eat only spicy food', 'Only incredibly bland food', 1, 1);



insert into questions
    (scenario, scenario2, rating, rating2)
values('Give up watching TV/Movies for a year', 'Give up playing games for a year', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Lose your best friend', 'Lose all of your friends except for your best friend', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Not be able to open any closed doors', 'Not be able to close any open doors', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Have plants grow 20 times faster when you are near', 'For people and animals to stop aging when you are near them', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Always feel like someone is following you', 'Always feel like someone is watching you', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Have every cat or dog that gets lost end up at your house', 'Everyones clothes that they forgot in the dryer gets teleported to your house', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('Have all animals feel compelled to obey you if you come within 10 feet of them', 'Be given the opportunity to design a pet thats loyal only to you with the  DNA of three animals', 1, 1);

insert into questions
    (scenario, scenario2, rating, rating2)
values('', '', 1, 1);

---- CREATES PLAYER TABLE

CREATE TABLE players
(
    ID SERIAL UNIQUE PRIMARY KEY,
    playername VARCHAR(100),
    playerimage TEXT,
    playerscore INT
);


INSERT INTO players
    (playername, playerimage, playerscore)
VALUES
    ('Big win boi', 'https://randomuser.me/api/portraits/men/75.jpg', 1999);
INSERT INTO players
    (playername, playerimage, playerscore)
VALUES
    ('Big lose person', 'https://randomuser.me/api/portraits/men/55.jpg', 0);
INSERT INTO players
    (playername, playerimage, playerscore)
VALUES
    ('Big win gorl', 'https://randomuser.me/api/portraits/women/11.jpg', 2999);
INSERT INTO players
    (playername, playerimage, playerscore)
VALUES
    ('Big lose person', 'https://randomuser.me/api/portraits/women/42.jpg', 4);