.headers on
.mode column
.nullvalue NULL
-- .echo on
-- .bail on

-- sqlite3 data/nba.db < sql/07.sql

begin transaction;

update players
set team = 'MKE'
where team = 'MIL';

select *
from players
where team = 'MKE';