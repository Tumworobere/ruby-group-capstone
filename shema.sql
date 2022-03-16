CREATE TABLE "item"(
    "id" INTEGER NOT NULL,
    "genre" TEXT NOT NULL,
    "author" TEXT NOT NULL,
    "source" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "publish_date" DATE NOT NULL,
    "archived" BOOLEAN NOT NULL
);
CREATE TABLE "Author"(
    "id" INTEGER NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "items" TEXT NOT NULL
);
ALTER TABLE
    "Author" ADD PRIMARY KEY("id");
CREATE TABLE "Game"(
    "multiplayer" TEXT NOT NULL,
    "last_played_at" DATE NOT NULL
);
ALTER TABLE
    "Game" ADD PRIMARY KEY("multiplayer");
ALTER TABLE
    "item" ADD CONSTRAINT "item_author_foreign" FOREIGN KEY("author") REFERENCES "Author"("id");