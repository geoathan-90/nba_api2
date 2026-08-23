import sqlite3

import pandas as pd
from nba_api.stats.static import teams


def test_nba_api_static_data():
    nba_teams = teams.get_teams()
    assert len(nba_teams) >= 30


def test_sqlite_and_pandas():
    conn = sqlite3.connect(":memory:")
    conn.execute("CREATE TABLE numbers (value INTEGER)")
    conn.executemany("INSERT INTO numbers VALUES (?)", [(1,), (2,), (3,)])

    df = pd.read_sql_query(
        "SELECT SUM(value) AS total FROM numbers",
        conn,
    )
    conn.close()

    assert df.loc[0, "total"] == 6
