create database catalog_of_things;

CREATE TABLE item(
    id SERIAL PRIMARY KEY,
    published_date date,
    archived boolean,
    label_id INT,
    -- author_id INT,
    genre_id INT,
    CONSTRAINT label_id FOREIGN KEY(label_id) REFERENCES label(id),
    -- CONSTRAINT author_id FOREIGN KEY(author_id) REFERENCES author(id),
    CONSTRAINT genre_id FOREIGN KEY(genre_id) REFERENCES genre(id)
);


CREATE TABLE IF NOT EXISTS genre (
    id SERIAL,
    name VARCHAR(100),
    items INT [],
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS label(
    id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    color VARCHAR(50),
    items INT [],
);

CREATE TABLE IF NOT EXISTS musicalbum (
    id SERIAL PRIMARY KEY,
    on_spotify BOOLEAN,
    published_date DATE,
    archived BOOLEAN,
    genre_id INT,
    label_id INT,
    -- author_id INT,
    CONSTRAINT fk_genre
    FOREIGN KEY(genre_id)
	    REFERENCES genre(id)
    CONSTRAINT fk_label
    FOREIGN KEY(label_id)
	    REFERENCES label(id),
    -- CONSTRAINT fk_author
    -- FOREIGN KEY(author_id)
	--     REFERENCES author(id)
);


CREATE TABLE book(
    id SERIAL PRIMARY KEY,
    publisher VARCHAR(100),
    cover_state VARCHAR(100),
    published_date date,
    archived boolean,
    label_id INT,
    -- author_id INT,
    genre_id INT,
    CONSTRAINT label_id FOREIGN KEY(label_id) REFERENCES label(id),
    -- CONSTRAINT author_id FOREIGN KEY(author_id) REFERENCES author(id),
    CONSTRAINT genre_id FOREIGN KEY(genre_id) REFERENCES genre(id)
);

