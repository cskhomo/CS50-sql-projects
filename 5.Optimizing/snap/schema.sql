CREATE TABLE users (
    "id" INTEGER PRIMARY KEY,
    "username" TEXT,
    "phone_number" TEXT,
    "joined_date" TEXT,
    "last_login_date" TEXT
);

CREATE TABLE friends (
    "user_id" INTEGER,
    "friend_id" INTEGER,
    "friendship_date" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("friend_id") REFERENCES "users"("id")
);

CREATE TABLE messages (
    "id" INTEGER PRIMARY KEY,
    "from_user_id" INTEGER,
    "to_user_id" INTEGER,
    "picture" TEXT,
    "sent_timestamp" TEXT,
    "viewed_timestamp" TEXT,
    "expires_timestamp" TEXT,
    FOREIGN KEY("from_user_id") REFERENCES "users"("id"),
    FOREIGN KEY("to_user_id") REFERENCES "users"("id")
);