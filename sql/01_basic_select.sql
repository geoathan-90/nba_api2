.headers on
.mode column

SELECT name, points_per_game
FROM players
WHERE points_per_game > 27
ORDER BY points_per_game DESC;
