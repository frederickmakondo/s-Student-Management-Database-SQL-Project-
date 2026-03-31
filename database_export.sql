BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Courses" (
	"course_id"	INTEGER,
	"course_name"	TEXT,
	PRIMARY KEY("course_id")
);
CREATE TABLE IF NOT EXISTS "Enrollments" (
	"enrollment_id"	INTEGER,
	"student_id"	INTEGER,
	"course_id"	INTEGER,
	"grade"	TEXT,
	PRIMARY KEY("enrollment_id"),
	FOREIGN KEY("course_id") REFERENCES "Courses"("course_id"),
	FOREIGN KEY("student_id") REFERENCES "Students"("student_id")
);
CREATE TABLE IF NOT EXISTS "Students" (
	"student_id"	INTEGER,
	"name"	TEXT,
	"email"	TEXT,
	PRIMARY KEY("student_id")
);
INSERT INTO "Courses" VALUES (1,'Database Systems');
INSERT INTO "Courses" VALUES (2,'Networking');
INSERT INTO "Enrollments" VALUES (1,1,1,'A');
INSERT INTO "Enrollments" VALUES (2,2,2,'B');
INSERT INTO "Students" VALUES (1,'John Doe','John@email.com');
INSERT INTO "Students" VALUES (2,'Sarah Smith','Sarah@email.com');
COMMIT;
