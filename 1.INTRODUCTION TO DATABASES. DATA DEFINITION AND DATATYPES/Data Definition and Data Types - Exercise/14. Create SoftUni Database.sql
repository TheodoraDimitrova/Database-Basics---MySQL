CREATE TABLE towns (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
   CONSTRAINT PK_Towns PRIMARY KEY (id)
);


CREATE TABLE addresses (
    id INT  NOT NULL AUTO_INCREMENT,
    address_text text  NOT NULL,
    town_id int NOT NULL,
    CONSTRAINT PK_Addresses PRIMARY KEY (id),
    CONSTRAINT FK_Addresses_Towns FOREIGN KEY (town_id) REFERENCES towns (id)
);

 
CREATE TABLE departments (
    id INT  NOT NULL  AUTO_INCREMENT,
    name VARCHAR(50) UNIQUE NOT NULL,
    	CONSTRAINT PK_Departments PRIMARY KEY (id)
);

 CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    job_title VARCHAR(255) NOT NULL,
    department_id INT,
    hire_date DATE NOT NULL,
    salary DECIMAL(6 , 2 ) NOT NULL,
    address_id INT,
    CONSTRAINT FK_address FOREIGN KEY (address_id)
        REFERENCES addresses (id),
    CONSTRAINT PK_Employees PRIMARY KEY (id),
    CONSTRAINT FK_department FOREIGN KEY (department_id)
        REFERENCES departments (id)
);