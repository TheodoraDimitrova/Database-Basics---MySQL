CREATE TABLE students(
  student_id int NOT NULL,
  name varchar(50) NOT NULL,
  CONSTRAINT PK_Students PRIMARY KEY (student_id)
);
INSERT INTO students VALUES
  (1, 'Mila'), 
  (2, 'Toni'), 
  (3, 'Ron');
  
CREATE TABLE exams(
  exam_id int NOT NULL,
  name varchar(50) NOT NULL,
  CONSTRAINT PK_Exams PRIMARY KEY (exam_id)
);

INSERT INTO exams VALUES
  (101, 'Spring MVC'), 
  (102, 'Neo4j'), 
  (103, 'Oracle 11g');

CREATE TABLE students_exams(
  student_id int NOT NULL,
  exam_id int NOT NULL,
  CONSTRAINT PK_StudentsExams PRIMARY KEY (student_id, exam_id),
  CONSTRAINT FK_StudentsExams_Students FOREIGN KEY (student_id) REFERENCES students(student_id),
  CONSTRAINT FK_StudentsExams_Exams FOREIGN KEY (exam_id) REFERENCES exams(exam_id)
);





INSERT INTO students_exams VALUES
  (1, 101), 
  (1, 102), 
  (2, 101), 
  (3, 103), 
  (2, 102), 
  (2, 103);