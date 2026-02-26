CREATE TABLE "districts" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT
);

CREATE TABLE "schools" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT,
    "city" TEXT,
    "district_id" INTEGER,
    FOREIGN KEY ("district_id") REFERENCES "districts"("id")
);

CREATE TABLE "graduation_rates" (
    "school_id" INTEGER,
    "rate" INTEGER,
    "year" INTEGER,
    PRIMARY KEY ("school_id", "year"),
    FOREIGN KEY ("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "expenditures" (
    "district_id" INTEGER,
    "per_pupil_expenditure" INTEGER,
    "year" INTEGER,
    PRIMARY KEY ("district_id", "year"),
    FOREIGN KEY ("district_id") REFERENCES "districts"("id")
);

CREATE TABLE "staff_evaluations" (
    "district_id" INTEGER,
    "percentage_exemplary" INTEGER,
    "year" INTEGER,
    PRIMARY KEY ("district_id", "year"),
    FOREIGN KEY ("district_id") REFERENCES "districts"("id")
);