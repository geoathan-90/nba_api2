.headers on
.mode column

SELECT  
    team, 
    COUNT(team) AS player_count,
    AVG(points_per_game) AS avg_ppg 
FROM players
GROUP BY 
    team;
