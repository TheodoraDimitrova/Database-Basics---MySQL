CREATE TABLE categories (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(20) NOT NULL,
    daily_rate DECIMAL(5 , 2 ) NOT NULL,
    weekly_rate DECIMAL(5 , 2 ) NOT NULL,
    monthly_rate DECIMAL(5 , 2 ) NOT NULL,
    weekend_rate DECIMAL(5 , 2 ) NOT NULL
);

INSERT INTO categories(category, daily_rate, weekly_rate, monthly_rate, weekend_rate)
VALUES ('Saloons',2.3,2.33,12.4,15.34),
('Coupé',2.3,2.33,12.4,15.34),
('Minibus',2.3,2.33,12.4,15.34);

CREATE TABLE cars (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plate_number VARCHAR(10) NOT NULL,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(10) NOT NULL,
    car_year YEAR,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id)
        REFERENCES categories (id),
    doors CHAR,
    picture BLOB,
    car_condition TEXT,
    available BOOLEAN
);

insert into cars( plate_number, make, model, car_year, category_id, doors, car_condition, available)
values('EB 0119 BB','Vauxhall Corsa 3 door','Opel','2018',2,'3','exellent',true),
('EB 0449 BB','BMW Z4 ','BMW','2018',2,'3','exellent',true),
('EB 1419 BB','Nissan March','Nissan ','2018',2,'3','exellent',true);




CREATE TABLE employees (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    title VARCHAR(50) NOT NULL,
    notes TEXT
);

insert into employees(first_name, last_name, title)
values ('Theodora','Dimitrova','manager office'),
('SVRT','Dimitrova','manager office'),
('BOB','Dimitrov','manager office');


CREATE TABLE customers (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    driver_licence_number VARCHAR(12),
    full_name VARCHAR(30),
    address VARCHAR(50),
    city VARCHAR(20),
    zip_code CHAR(4),
    notes TEXT
);
 
 insert into customers(driver_licence_number, full_name, address, city, zip_code)
 values ('124352652611','Tedina Boyanova','Gabrovo Bulgaria','Gabrovo','3500'),
 ('124352652631','Viola Boyanova','Gabrovo Bulgaria','Gabrovo','3300'),
 ('824352652611','Lora Boyanova','Gabrovo Bulgaria','Gabrovo','3550');
 
 
 CREATE TABLE rental_orders (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id)
        REFERENCES employees (id),
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id)
        REFERENCES customers (id),
    car_id INT NOT NULL,
    FOREIGN KEY (car_id)
        REFERENCES cars (id),
    car_condition TEXT,
    tank_level DECIMAL(5 , 2 ),
    kilometrage_start INT(11),
    kilometrage_end INT(11),
    total_kilometrage INT(11),
    start_date DATE,
    end_date DATE,
    total_days TINYINT,
    rate_applied DECIMAL(5 , 2 ),
    tax_rate DECIMAL,
    order_status BOOLEAN,
    notes TEXT
);


insert into rental_orders(
employee_id, 
customer_id, 
car_id, 
car_condition, 
tank_level, 
kilometrage_start,
 kilometrage_end,
 total_kilometrage,
 start_date,
 end_date,
 total_days, 
 order_status)
VALUES (2,1,3,'exellent',56,190456,191456,1000,'2018-10-05','2018-10-10',1,true),
(2,1,3,'very good',60,190456,191456,1000,'2018-10-05','2018-10-10',10,true),
(2,1,3,'exellent small scratch',56,190456,191456,1000,'2018-10-05','2018-10-10',3,true);
;