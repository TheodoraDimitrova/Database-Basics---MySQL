CREATE TABLE passports (
    passport_id INT(11) primary key not null ,
    passport_number VARCHAR(8) UNIQUE NOT NULL
);

CREATE TABLE persons (
    person_id INT(11) primary key not null,
    first_name VARCHAR(20) not null,
    salary DECIMAL(7 , 2 ) not null,
    passport_id INT(11) NOT NULL
  
);
INSERT INTO persons
VALUES (1,'Roberto', 43300, 102),
(2,'Tom', 56100, 103),
(3,'Yana',60200, 101);

INSERT INTO passports 
VALUES (101,'N34FG21B'),
(102,'K65LO4R7'),
(103,'ZE657QP2')
;


ALTER TABLE persons
ADD   CONSTRAINT FK_person_pass FOREIGN KEY (passport_id)
        REFERENCES passports (passport_id);