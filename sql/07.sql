.headers on
.mode column
.nullvalue NULL
-- .echo on
-- .bail on

SELECT 
    COUNT(*) AS count,
CASE
    WHEN players.points_per_game>=30 THEN 'Elite'
    WHEN players.points_per_game<30 AND players.points_per_game>=25 THEN 'High'
    ELSE 'Regular'
END AS scoring_level
FROM players
LEFT JOIN teams ON players.team = teams.team
-- WHERE
--     players.points_per_game>=30; 
-- ORDER BY players.points_per_game DESC;
GROUP BY scoring_level