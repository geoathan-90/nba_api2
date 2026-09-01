-- INSERT INTO players (name, team, points_per_game)
-- VALUES
--     -- ('Jamal Murray', 'DEN', 21.7),
--     -- ('Jaylen Brown', 'BOS', 23.1),
--     -- ('Chet Holmgren', 'OKC', 18.9),
--     -- ('LeBron James', 'LAL', 24.4),
--     -- ('Jimmy Butler', 'GSW', 17.5),
--     ('Joel Embiid', 'PHI', 34.4);

-- -------------------------------------------------

-- CREATE TABLE teams (
--     team TEXT PRIMARY KEY,
--     city TEXT,
--     team_name TEXT,
--     conference TEXT
-- );

-- INSERT INTO teams (team, city, team_name, conference)
-- VALUES
--     ('DEN', 'Denver', 'Nuggets', 'West'),
--     ('LAL', 'Los Angeles', 'Lakers', 'West'),
--     ('BOS', 'Boston', 'Celtics', 'East'),
--     ('OKC', 'Oklahoma City', 'Thunder', 'West'),
--     ('GSW', 'San Francisco', 'Warriors', 'West'),
--     ('PHI', 'Philadelphia', '76ers', 'East');


-- --------------------------------------------------

-- INSERT INTO players (name, team, points_per_game)
-- VALUES ('Giannis Antetokounmpo', 'MIL', 30.4);

-- --------------------------------------------------

-- INSERT INTO teams (team, city, team_name, conference)
-- VALUES ('NYK', 'Jew York', 'Knicks', 'East');

-- ---------------------------------------------------

-- UPDATE teams
-- SET city = 'New York'
-- WHERE team = 'NYK';

-- ----------------------------------------------------

-- insert into players (name, team, points_per_game)
-- values
--     ('Derrick White', 'BOS', 16.8),
--     ('Kristaps Porzingis', 'BOS', 19.7),
--     ('Aaron Gordon', 'DEN', 15.2),
--     ('Michael Porter Jr.', 'DEN', 18.4),
--     ('Austin Reaves', 'LAL', 19.3),
--     ('Rui Hachimura', 'LAL', 13.1),
--     ('Draymond Green', 'GSW', 9.2),
--     ('Buddy Hield', 'GSW', 12.8),
--     ('Jalen Williams', 'OKC', 22.6),
--     ('Luguentz Dort', 'OKC', 14.4),
--     ('Tyrese Maxey', 'PHI', 25.7),
--     ('Kelly Oubre Jr.', 'PHI', 15.5),
--     ('Jalen Brunson', 'NYK', 28.8),
--     ('Mikal Bridges', 'NYK', 18.9),
--     ('Josh Hart', 'NYK', 13.7),
--     ('Karl-Anthony Towns', 'NYK', 24.6),
--     ('Damian Lillard', 'MIL', 24.9),
--     ('Brook Lopez', 'MIL', 12.3),
--     ('Khris Middleton', 'MIL', 14.8),
--     ('Bobby Portis', 'MIL', 13.5);

-- --------------------------------------------

-- delete from players
-- where player_id in (
--     select player_id
--     from players
--     order by player_id desc
--     limit 20
-- );

-- ---------------------------------------------