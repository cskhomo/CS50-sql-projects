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