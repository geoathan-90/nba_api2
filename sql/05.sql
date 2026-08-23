.headers on
.mode column
-- .echo on
-- .bail on

SELECT  
    team, 
    COUNT(*) AS player_count,
    AVG(points_per_game) AS avg_ppg 
WHERE
    points_per_game >= 20.0
FROM players
GROUP BY 
    team
HAVING COUNT(*)>1
ORDER BY
    avg_ppg DESC; 
