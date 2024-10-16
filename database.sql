CREATE DATABASE worldcup ;

CREATE TABLE teams() ;

CREATE TABLE games() ;

ALTER TABLE teams ADD COLUMN team_id SERIAL PRIMARY KEY ;
ALTER TABLE teams ADD COLUMN name VARCHAR UNIQUE  ;

ALTER TABLE games ADD COLUMN game_id SERIAL PRIMARY KEY ;
ALTER TABLE games ADD COLUMN year INT ;
ALTER TABLE games ADD COLUMN round VARCHAR ;

ALTER TABLE games ADD COLUMN winner_id INT ;
ALTER TABLE games ADD COLUMN opponent_id INT ;
---

ALTER TABLE games
  ADD CONSTRAINT constraint_winner_id
  FOREIGN KEY (winner_id)
  REFERENCES teams (team_id)
  ;

ALTER TABLE games ADD COLUMN opponent_id INT ;

ALTER TABLE games
  ADD CONSTRAINT constraint_opponent_id
  FOREIGN KEY (opponent_id)
  REFERENCES teams (team_id)
  ;

ALTER TABLE games ADD COLUMN winner_goals INT ;

ALTER TABLE games ADD COLUMN opponent_goals INT ;

ALTER TABLE games ALTER COLUMN year SET NOT NULL ;

ALTER TABLE games ALTER COLUMN round SET NOT NULL ;

ALTER TABLE games ALTER COLUMN winner_id SET NOT NULL ;

ALTER TABLE games ALTER COLUMN opponent_id SET NOT NULL ;

ALTER TABLE games ALTER COLUMN winner_goals SET NOT NULL ;

ALTER TABLE games ALTER COLUMN opponent_goals SET NOT NULL ;

ALTER TABLE teams ALTER COLUMN name SET NOT NULL ;
