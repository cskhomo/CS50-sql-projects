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
