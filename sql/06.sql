.headers on
.mode column
.nullvalue NULL
-- .echo on
-- .bail on

SELECT 
    players.name AS player,
    COALESCE(players.team, teams.team) as team,
    -- teams.city,
    -- teams.team_name,
    -- teams.conference,
    players.points_per_game AS ppg,
CASE
    WHEN players.points_per_game>=30 THEN 'Elite'
    WHEN players.points_per_game<30 AND players.points_per_game>=25 THEN 'High'
    ELSE 'Regular'
END AS scoring_level
FROM players
LEFT JOIN teams ON players.team = teams.team 
ORDER BY players.points_per_game DESC;
