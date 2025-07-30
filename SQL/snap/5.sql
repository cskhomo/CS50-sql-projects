SELECT "user_id"
FROM "friends"
JOIN "users"
ON "friend_id" = "users"."id"
AND "username" =  'lovelytrust487'

INTERSECT

SELECT "user_id"
FROM "friends"
JOIN "users"
ON "friend_id" = "users"."id"
AND "username" =  'exceptionalinspiration482';
