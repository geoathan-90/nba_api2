.headers on
.mode column

SELECT 
    COUNT(name) AS player_count,
    AVG(points_per_game) AS avg_ppg,
    MAX(points_per_game) AS max_ppg
FROM   
    players;
