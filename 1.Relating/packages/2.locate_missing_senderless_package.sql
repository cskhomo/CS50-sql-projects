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