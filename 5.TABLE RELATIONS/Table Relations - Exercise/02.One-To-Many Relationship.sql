CREATE TABLE manufacturers (
  manufacturer_id int NOT NULL,
  name varchar(50) NOT NULL,
  established_on date, 
  CONSTRAINT PK_Manufacturers PRIMARY KEY (manufacturer_id)
);

CREATE TABLE models (
  model_id int NOT NULL,
  name varchar(50) NOT NULL,
   manufacturer_id int NOT NULL,
  CONSTRAINT PK_Models PRIMARY KEY (model_id),
  CONSTRAINT FK_Models_Manufacturers FOREIGN KEY (manufacturer_id) 
    REFERENCES manufacturers (manufacturer_id)
);

INSERT INTO manufacturers VALUES
  (1, 'BMW', '1916/03/01'),
  (2, 'Tesla', '2003/01/01'),
  (3, 'Lada', '1966/05/01');

INSERT INTO models VALUES
  (101, 'X1', 1),
  (102, 'i6', 1),
  (103, 'Model S', 2),
  (104, 'Model X', 2),
  (105, 'Model 3', 2),
  (106, 'Nova', 3);