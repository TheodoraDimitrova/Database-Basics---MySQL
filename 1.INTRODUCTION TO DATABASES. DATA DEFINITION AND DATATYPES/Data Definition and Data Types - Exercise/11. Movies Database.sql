


CREATE TABLE directors (
    id INT(11) NOT NULL AUTO_INCREMENT,
    director_name VARCHAR(50) NOT NULL,
    notes TEXT,
    CONSTRAINT PK_directors PRIMARY KEY (id)
);
INSERT INTO directors (director_name, notes)
 VALUES ('Jhohn', 'Exellent director'),
 ('Jhohn', 'Exellent director'),
  ('Jhcfd', 'Exellent director'),
  ('Jh3hn', 'Exellent director'),
  ('Jho5n', 'Exellent director');



CREATE TABLE genres (
    id INT(11) NOT NULL AUTO_INCREMENT,
    genre_name VARCHAR(50) NOT NULL,
    notes TEXT,
    CONSTRAINT PK_genres PRIMARY KEY (id)
);

INSERT INTO genres (genre_name, notes)
 VALUES ('Films ','Films about families.'),
 ('Dance films', 'Dance films'),
 ('Drama films', 'B Drama films'),
 ('Documentary films', 'A documentary film is a film based in fact, documenting some aspect of life. It usually involves narration, interviews, and facts and figures.'),
 ('Mystery film', '
Nick Carter, from France, is one of the first mystery-detective film series (1908–1909).
A mystery film is a genre of film that revolves around the solution of a problem or a crime. It focuses on the efforts of the detective, private investigator or amateur sleuth to solve the mysterious circumstances of an issue by means of clues, investigation, and clever deduction.');

CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL,
    notes TEXT,
    CONSTRAINT PK_categories PRIMARY KEY (id)
);
INSERT INTO categories (category_name, notes)
 VALUES ('horror','Films about horror'),
 ('adventure','Films about adventure.'),
 ('romance  ','Films about romance'),
 ('documentary  ','Films about documentary .'),
 ('thriller ','Films about kills');

CREATE TABLE movies (
    id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(50),
    director_id INT NOT NULL,
    FOREIGN KEY (director_id)
        REFERENCES directors (id),
    copyright_year YEAR,
    length TIME,
    genre_id INT NOT NULL,
    FOREIGN KEY (genre_id)
        REFERENCES genres (id),
    category_id INT NOT NULL,
    FOREIGN KEY (category_id)
        REFERENCES categories (id),
    rating ENUM('1', '2', '3', '4', '5'),
    notes TEXT,
    CONSTRAINT PK_movies PRIMARY KEY (id)
);


INSERT INTO movies (title, director_id, copyright_year, length,genre_id, category_id, rating,notes)
VALUES ('Hallowecfd',1,'2018','14:18:23'
,4,1,'4','Jamie Lee Curtis and Nick Castle in Halloween (2018)'),
 ('Hallowecfd',1,'2018','14:18:23'
,2,1,'4','Jamie Lee Curtis and Nick Castle in Halloween (2018)'),
  ('Hallowecfd',1,'2018','14:18:23'
,3,1,'5','Jamie Lee Curtis and Nick Castle in Halloween (2018)'),
 ('Hallowecdsfd',1,'2018','14:18:23'
,1,1,'3','Jamie Lee Curtis and Nick Castle in Halloween (2018)');