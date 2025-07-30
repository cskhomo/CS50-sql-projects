-- *** The Lost Letter ***


-- Confirming that Anneke's address exists in database
 SELECT "id"
 FROM "addresses"
 WHERE "address" = '900 Somerville Avenue';


-- Investigating all the packages delivered from Anneke's address
SELECT "contents", "from_address_id"
FROM "packages"
WHERE "from_address_id" = (

    SELECT "id"
    FROM "addresses"
    WHERE "address" = '900 Somerville Avenue'
);


-- Investigating the address where the congratulatory note was sent
SELECT "to_address_id"
FROM "packages"
WHERE "from_address_id" = (

    SELECT "id"
    FROM "addresses"
    WHERE "address" = '900 Somerville Avenue'
)
AND "contents" LIKE '%congrat%';


-- Investigating details about the delivery address
SELECT "address", "type"
FROM "addresses"
WHERE "id" = (

    SELECT "to_address_id"
    FROM "packages"
    WHERE "from_address_id" = (

        SELECT "id" FROM "addresses"
        WHERE "address" = '900 Somerville Avenue'
    )
    AND "contents" LIKE '%congrat%'
);




-- *** The Devious Delivery ***


-- Investigating deliveres with no from address
SELECT "id", "contents", "to_address_id"
FROM "packages"
WHERE "from_address_id" IS NULL;


-- Investigating details about the package movement
SELECT *
FROM "scans"
WHERE "package_id" = (
    SELECT "id"
    FROM "packages"
    WHERE "from_address_id" IS NULL
);


-- Investigating details about the delivery address
SELECT "type"
FROM "addresses"
WHERE "id" = (

    SELECT "address_id"
    FROM "scans"
    WHERE "package_id" = (

        SELECT "id"
        FROM "packages"
        WHERE "from_address_id" IS NULL
    )
    AND "action" = "Drop"
);


-- *** The Forgotten Gift ***


-- Searching for deliveries made from provided address
SELECT "contents"
FROM "packages"
WHERE "from_address_id" = (

    SELECT "id"
    FROM "addresses"
    WHERE "address" = '109 Tileston Street'
);


-- Searching for driver who has the package
 SELECT "driver_id"
 FROM "scans"
 WHERE "package_id" = (

    SELECT "id"
    FROM "packages"
    WHERE "from_address_id" = (

        SELECT "id"
        FROM "addresses"
        WHERE "address" = '109 Tileston Street'
    )
)
ORDER BY "timestamp" DESC
LIMIT 1;


-- Investigating details about the delivery driver
SELECT "name"
FROM "drivers"
WHERE "id" = (

    SELECT "driver_id"
    FROM "scans"
    WHERE "package_id" = (

        SELECT "id"
        FROM "packages"
        WHERE "from_address_id" = (

            SELECT "id"
            FROM "addresses"
            WHERE "address" = '109 Tileston Street'
        )
    )
    ORDER BY "timestamp" DESC
    LIMIT 1
);
