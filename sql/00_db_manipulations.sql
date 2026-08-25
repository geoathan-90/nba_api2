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

UPDATE teams
SET city = 'New York'
WHERE team = 'NYK';