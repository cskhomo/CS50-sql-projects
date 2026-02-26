CREATE TABLE students (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT
);

CREATE TABLE courses (
    "id" INTEGER PRIMARY KEY,
    "department" TEXT,
    "number" INTEGER,
    "semester" TEXT,
    "title" TEXT
);

CREATE TABLE enrollments (
    "id" INTEGER PRIMARY KEY,
    "student_id" INTEGER,
    "course_id" INTEGER,
    FOREIGN KEY("student_id") REFERENCES "students"("id"),
    FOREIGN KEY("course_id") REFERENCES "courses"("id")
);

CREATE TABLE requirements (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT
);

CREATE TABLE satisfies (
    "id" INTEGER PRIMARY KEY,
    "course_id" INTEGER,
    "requirement_id" INTEGER,
    FOREIGN KEY("course_id") REFERENCES "courses"("id"),
    FOREIGN KEY("requirement_id") REFERENCES "requirements"("id")
);