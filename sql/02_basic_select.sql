.headers on
.mode column

SELECT name, points_per_game
FROM players
WHERE points_per_game >= 25 AND points_per_game <= 30
ORDER BY name;
