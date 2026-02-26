CREATE TABLE listings (
    "id" INTEGER PRIMARY KEY,
    "property_type" TEXT,
    "host_name" TEXT,
    "accommodates" INTEGER,
    "description" TEXT
);

CREATE TABLE reviews (
    "id" INTEGER PRIMARY KEY,
    "listing_id" INTEGER,
    "review_date" TEXT,
    "review_text" TEXT,
    FOREIGN KEY ("listing_id") REFERENCES "listings"("id")
);

CREATE TABLE availabilities (
    "id" INTEGER PRIMARY KEY,
    "listing_id" INTEGER,
    "date" TEXT,
    FOREIGN KEY ("listing_id") REFERENCES "listings"("id")
);