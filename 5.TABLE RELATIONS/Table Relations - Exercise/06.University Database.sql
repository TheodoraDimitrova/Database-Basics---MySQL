CREATE TABLE subjects (

    subject_id INT(11) AUTO_INCREMENT,
    subject_name VARCHAR(50) NOT NULL,
    CONSTRAINT PK_subjects PRIMARY KEY (subject_id)
);
CREATE TABLE majors (
    major_id INT(11) AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT PK_majors PRIMARY KEY (major_id)
);
CREATE TABLE students (
    student_id INT(11) AUTO_INCREMENT,
    student_number VARCHAR(12) NOT NULL,
    student_name varchar(50) not null,
    major_id INT(11) NOT NULL,
    CONSTRAINT Pk_costomers PRIMARY KEY (student_id),
    CONSTRAINT FK_students_major FOREIGN KEY (major_id)
        REFERENCES majors (major_id)
);
CREATE TABLE payments (
    payment_id INT(11) AUTO_INCREMENT,
    payment_date DATE,
    payment_amount DECIMAL(8 , 2 ),
    student_id INT(11),
    CONSTRAINT Pk_payments PRIMARY KEY (payment_id),
    CONSTRAINT FK_peyments_students FOREIGN KEY (student_id)
        REFERENCES students (student_id)
);

CREATE TABLE agenda (
    student_id INT(11) NOT NULL,
    subject_id INT(11) NOT NULL,
    CONSTRAINT PK_agenda PRIMARY KEY (student_id , subject_id),
    CONSTRAINT FK_agenda_students FOREIGN KEY (student_id)
        REFERENCES students (student_id),
    CONSTRAINT FK_agenda_subject FOREIGN KEY (subject_id)
        REFERENCES subjects (subject_id)
);