CREATE TABLE people (
    id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    picture  varbinary(8000) ,
    height Numeric(12, 2),
    weight  Numeric(12, 2),
    gender varchar(1) NOT NULL,
    birthdate date NOT NULL,
    biography NVARCHAR(4000) 
   
);

INSERT INTO people(name,height,weight,gender,birthdate,biography)
values ('MEDY',167,54,'f','1990-04-24','Student'),
 ('Alice',167,54,'f','1990-04-23','Student '),
 ('Bob',167,54,'f','1977-11-24','worker'),
 ('BobyB',167,54,'f','1977-11-24','worker'),
 ('Bobds',167,54,'f','1977-11-24','worker');