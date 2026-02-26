CREATE TABLE "ingredients"(
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "unit" TEXT NOT NULL,
    "price" NUMERIC NOT NULL CHECK("price" > '0'),
    PRIMARY KEY("id")
);


CREATE TABLE "donuts"(
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "gluten" INTEGER NOT NULL DEFAULT '1' CHECK("gluten" IN ('0', '1')),
    "price" NUMERIC NOT NULL
        CHECK("price" > '0'),
    PRIMARY KEY("id")
);


CREATE TABLE "recipes"(
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
);


CREATE TABLE "orders"(
    "id" INTEGER,
    "number" NUMERIC,
    "customer_id" INTEGER,
    "donut_id" INTEGER,
    PRIMARY KEY("id"),
     FOREIGN KEY("customer_id")
        REFERENCES "customers"("id"),
    FOREIGN KEY("donut_id")
        REFERENCES "donuts"("id")
);


CREATE TABLE "customers"(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id")
        REFERENCES "orders"("id")
);
