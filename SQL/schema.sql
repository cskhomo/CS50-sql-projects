CREATE TABLE IF NOT EXISTS "people"(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "gender_code" TEXT NOT NULL CHECK("gender_code" in ('M', 'F')),
    PRIMARY KEY("id")
);
