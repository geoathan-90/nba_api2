import pandas as pd
import sqlite3

conn = sqlite3.connect("data/nba.db")

df = pd.read_sql_query("""
    SELECT name, points_per_game
    FROM players
    WHERE points_per_game BETWEEN 25 AND 30
    ORDER BY name;
""", conn)

print(df)