-- Create below table for Teams
create table teams(
	id serial primary key,
	name varchar(255) not null,
	stadium varchar(255),
	division varchar(255),
	conference varchar(255),
	head_coach varchar(255),
	active boolean
);
-- Create below table for Players
create table players(
	id serial primary key,
	name varchar(255) not null,
	position varchar(255),
	salary integer,
	team_id integer references teams
);
-- List the names of all NFL teams
SELECT name FROM teams;
-- List the stadium name and head coach of all NFC teams
SELECT stadium, head_coach 
FROM teams;

-- List the head coaches of the AFC South
SELECT head_coach 
FROM teams 
WHERE conference = 'AFC' AND division = 'South'
-- The total number of players in the NFL
SELECT COUNT(*) 
FROM players;