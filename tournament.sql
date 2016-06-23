-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


-- Delete any old tournament database that might be hanging around
DROP DATABASE IF EXISTS tournament;

-- Create the tournament database
CREATE DATABASE tournament;

-- Connect to the tournament database
\c tournament;

-- Create players table
CREATE TABLE players (
	player_id serial  primary key,
	name text
);

-- Create matches table
CREATE TABLE matches (
	match_id serial PRIMARY KEY,
	winner_id int references players(player_id),
	loser_id int references players(player_id)
);

-- View that represent the number of wins for each player.
CREATE VIEW number_of_wins
	AS SELECT players.player_id, count(matches.winner_id) AS num_of_win
	FROM players left join matches
	ON players.player_id = matches.winner_id
	GROUP BY players.player_id;

-- View that represent the number of matches for each player.
CREATE VIEW number_of_matches
	AS SELECT players.player_id, count(all_players) AS num_of_matches
	FROM players left join
		(SELECT winner_id AS all_players FROM matches UNION ALL SELECT loser_id FROM matches) AS all_players
	ON players.player_id = all_players
	GROUP BY players.player_id;

-- View that represent the number of wins and matches for each player.
CREATE VIEW number_of_matches_and_wins
    AS SELECT number_of_matches.player_id, number_of_wins.num_of_win, number_of_matches.num_of_matches AS matches
    FROM number_of_matches, number_of_wins
    WHERE number_of_matches.player_id = number_of_wins.player_id;