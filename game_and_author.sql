CREATE TABLE Game(
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  author_id INT,
  archived BOOLEAN,
  last_played_at DATE,
  multiplayer BOOLEAN,
  PRIMARY KEY (id),
  CONSTRAINT fk_game
    FOREIGN KEY(author_id) 
	    REFERENCES Author(id)
	      ON DELETE SET NULL
);

CREATE TABLE Author(
  id INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (id)
);
