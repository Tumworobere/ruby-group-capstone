CREATE TABLE genres (
    id  INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE item (
    id  INT GENERATED ALWAYS AS IDENTITY,
    genre_id INT,
    archived BOOLEAN,
    PRIMARY KEY(id),
    FOREIGN KEY (genre_id) REFERENCES genres (id),
);

CREATE TABLE music_albums (
    id  INT,
    name VARCHAR(100),
    on_spotify BOOLEAN,
    FOREIGN KEY(id) REFERENCES item(id)
);


