CREATE INDEX "enrolled_student" 
ON "enrollments" ("student_id");


CREATE INDEX "enrolled_course" 
ON "enrollments" ("course_id");


CREATE INDEX "course_semester_department"
ON "courses" ("semester", "department")
WHERE "semester" = 'Fall 2023'
OR "semester" = 'Spring 2024';


CREATE INDEX "satisfies_course" 
ON "satisfies" ("course_id");