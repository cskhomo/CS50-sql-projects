CREATE TABLE "addresses" (
    "id" INTEGER PRIMARY KEY,
    "address" TEXT,
    "type" TEXT
);

CREATE TABLE "drivers" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT
);

CREATE TABLE "packages" (
    "id" INTEGER PRIMARY KEY,
    "contents" TEXT,
    "from_address_id" INTEGER,
    "to_address_id" INTEGER,
    FOREIGN KEY ("from_address_id") REFERENCES "addresses"("id"),
    FOREIGN KEY ("to_address_id") REFERENCES "addresses"("id")
);

CREATE TABLE "scans" (
    "id" INTEGER PRIMARY KEY,
    "driver_id" INTEGER,
    "package_id" INTEGER,
    "address_id" INTEGER,
    "action" TEXT,
    "timestamp" TEXT,
    FOREIGN KEY ("driver_id") REFERENCES "drivers"("id"),
    FOREIGN KEY ("package_id") REFERENCES "packages"("id"),
    FOREIGN KEY ("address_id") REFERENCES "addresses"("id")
);