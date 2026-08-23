.headers on
.mode column
.nullvalue NULL
-- .echo on
-- .bail on

SELECT 
    players.name,
    teams.city,
    teams.team_name,
    teams.conference,
    players.points_per_game
FROM players
LEFT JOIN teams ON players.team = teams.team 
ORDER BY points_per_game DESC;
