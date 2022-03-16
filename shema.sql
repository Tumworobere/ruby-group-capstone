CREATE TABLE "item"(
    "id" INTEGER NOT NULL,
    "genre" TEXT NOT NULL,
    "author" TEXT NOT NULL,
    "source" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "publish_date" DATE NOT NULL,
    "archived" BOOLEAN NOT NULL
);

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