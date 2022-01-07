create database catalog_of_things;

CREATE TABLE IF NOT EXISTS genre (
    id SERIAL,
    name VARCHAR(100),
    items INT [],
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS musicalbum (
    id SERIAL PRIMARY KEY,
    on_spotify BOOLEAN,
    published_date DATE,
    archived BOOLEAN,
    genre_id INT,
    label_id INT,
    author_id INT,
    CONSTRAINT fk_genre
    FOREIGN KEY(genre_id)
	    REFERENCES genre(id)
    CONSTRAINT fk_label
    FOREIGN KEY(label_id)
	    REFERENCES label(id),
    CONSTRAINT fk_author
    FOREIGN KEY(author_id)
	    REFERENCES author(id)
);

CREATE TABLE IF NOT EXISTS Game(
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
