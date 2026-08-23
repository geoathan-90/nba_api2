"""Basic environment smoke test for the NBA analytics Codespace.

This test intentionally avoids making a live request to NBA.com, so it
checks the Python environment independently of network/API availability.
"""

import sqlite3
import sys

import ipykernel
import jupyterlab
import matplotlib
import pandas as pd
import pytest
from nba_api.stats.static import teams


def main():
    print(f"Python:      {sys.version.split()[0]}")
    print(f"pandas:      {pd.__version__}")
    print(f"matplotlib:  {matplotlib.__version__}")
    print(f"JupyterLab:  {jupyterlab.__version__}")
    print(f"ipykernel:   {ipykernel.__version__}")
    print(f"pytest:      {pytest.__version__}")
    print(f"SQLite:      {sqlite3.sqlite_version}")

    # nba_api static-data check (does not require a web request)
    nba_teams = teams.get_teams()
    assert len(nba_teams) >= 30
    assert any(team["abbreviation"] == "BOS" for team in nba_teams)

    # SQLite + pandas integration check
    conn = sqlite3.connect(":memory:")
    conn.execute(
        """
        CREATE TABLE games (
            game_id INTEGER PRIMARY KEY,
            home_team TEXT NOT NULL,
            away_team TEXT NOT NULL,
            home_points INTEGER NOT NULL,
            away_points INTEGER NOT NULL
        )
        """
    )
    conn.executemany(
        "INSERT INTO games VALUES (?, ?, ?, ?, ?)",
        [
            (1, "BOS", "NYK", 110, 103),
            (2, "DEN", "LAL", 115, 108),
        ],
    )

    df = pd.read_sql_query(
        """
        SELECT home_team, home_points
        FROM games
        WHERE home_points > 110
        ORDER BY home_points DESC
        """,
        conn,
    )

    assert len(df) == 1
    assert df.iloc[0]["home_team"] == "DEN"
    conn.close()

    print("\nAll smoke tests passed.")


if __name__ == "__main__":
    main()
