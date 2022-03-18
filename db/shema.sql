CREATE TABLE "item"(
    "id" INTEGER NOT NULL,
    "genre" TEXT NOT NULL,
    "author" TEXT NOT NULL,
    "source" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "publish_date" DATE NOT NULL,
    "archived" BOOLEAN NOT NULL
);
ALTER TABLE
    "item" ADD PRIMARY KEY("id");
CREATE TABLE "Genre"(
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "items" TEXT NOT NULL
);
ALTER TABLE
    "Genre" ADD PRIMARY KEY("id");

CREATE TABLE "Label"(
    "id" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "colors" TEXT NOT NULL,
    "items" TEXT NOT NULL
);
ALTER TABLE
    "Label" ADD PRIMARY KEY("id");
CREATE TABLE "Book"(
    "publisher" INTEGER NOT NULL,
    "cover_state" TEXT NOT NULL
);
ALTER TABLE
    "Book" ADD CONSTRAINT "book_publisher_foreign" FOREIGN KEY("publisher") REFERENCES "item"("id");
ALTER TABLE
    "item" ADD CONSTRAINT "item_label_foreign" FOREIGN KEY("label") REFERENCES "Label"("id");
CREATE TABLE "Author"(
    "id" INTEGER NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "items" TEXT NOT NULL
);
ALTER TABLE
    "Author" ADD PRIMARY KEY("id");
CREATE TABLE "Label"(
    "id" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "colors" TEXT NOT NULL,
    "items" TEXT NOT NULL
);
ALTER TABLE
    "Label" ADD PRIMARY KEY("id");
CREATE TABLE "Book"(
    "publisher" INTEGER NOT NULL,
    "cover_state" TEXT NOT NULL
);
CREATE TABLE "Music Album"("on_spotify" BOOLEAN NOT NULL);
CREATE TABLE "Game"(
    "multiplayer" TEXT NOT NULL,
    "last_played_at" DATE NOT NULL
);
ALTER TABLE
    "Game" ADD PRIMARY KEY("multiplayer");
ALTER TABLE
    "item" ADD CONSTRAINT "item_genre_foreign" FOREIGN KEY("genre") REFERENCES "Genre"("id");
ALTER TABLE
    "Book" ADD CONSTRAINT "book_publisher_foreign" FOREIGN KEY("publisher") REFERENCES "item"("id");
ALTER TABLE
    "item" ADD CONSTRAINT "item_author_foreign" FOREIGN KEY("author") REFERENCES "Author"("id");
ALTER TABLE
    "item" ADD CONSTRAINT "item_label_foreign" FOREIGN KEY("label") REFERENCES "Label"("id");
ALTER TABLE
    "Music Album" ADD CONSTRAINT "music album_on_spotify_foreign" FOREIGN KEY("on_spotify") REFERENCES "item"("id");
    "item" ADD CONSTRAINT "item_author_foreign" FOREIGN KEY("author") REFERENCES "Author"("id");
