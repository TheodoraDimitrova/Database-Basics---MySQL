CREATE TABLE teachers (
    teacher_id INT(11) NOT NULL,
    name VARCHAR(20) NOT NULL,
    manager_id INT(11),
    CONSTRAINT PK_teachers PRIMARY KEY (teacher_id)
);

insert into teachers 
values (101,'John',null),
(102,'Maya',106),
(103,'Silvia',106),
(104,'Ted',105),
(105,'Mark',101),
(106,'Greta',101);

alter  table teachers
add  FOREIGN KEY (manager_id) references teachers (teacher_id);