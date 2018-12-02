CREATE TABLE employees (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    title VARCHAR(50),
    notes TEXT
);

insert into employees(first_name, last_name, title)
values ('Theodora','Dimitrova','manager office'),
('SVRT','Dimitrova','manager office'),
('BOB','Dimitrov','manager office');


CREATE TABLE customers (
    account_number INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    emergency_name VARCHAR(20),
    emergency_number VARCHAR(20),
    notes TEXT
);
 
INSERT INTO customers(first_name, last_name, phone_number) VALUES
('Monio', 'Ushev', '+359888666555'),
('Gancho', 'Stoykov', '+359866444222'),
('Genadi', 'Dimchov', '+35977555333');
 
CREATE TABLE room_status (
    room_status VARCHAR(50) PRIMARY KEY NOT NULL,
    notes TEXT
);
insert into room_status(room_status,notes)
values ('Do Not Disturb','The guest has requested not to be disturbed.'),
('Sleeper','The guest has settled his or her account and left the hotel, but the front office staff has failed to properly update the room’s status.'),
('Do Not Paid','The guest is going to check out from  the hotel today.');




CREATE TABLE room_types  (
    room_type  varchar(50) PRIMARY KEY NOT NULL,
    notes TEXT
);
insert into room_types(room_type,notes)
values ('single','The room size or area of Single Rooms are generally between 37 m² to 45 m².'),
('double','The room size or area of Double Rooms are generally between 40 m² to 45 m².'),
('triple','A room that can accommodate three persons and has been fitted with three twin beds, one double bed and one twin bed or two double beds.');

CREATE TABLE bed_types  (
    bed_type varchar(50) PRIMARY KEY NOT NULL,
    notes TEXT
);

insert into bed_types(bed_type, notes)
values('Murphy','These beds fold into walls to create space when not in use, similar to the folding bed.'),
('Trundle','Trundle beds are very popular in kids and teen bedrooms'),
('Pencil Poster','These were created in the 1700’s throughout New England.');

CREATE TABLE rooms (
    room_number INT PRIMARY KEY NOT NULL auto_increment,
    room_type VARCHAR(50),
    FOREIGN KEY (room_type)
        REFERENCES room_types (room_type),
    bed_type VARCHAR(50),
    FOREIGN KEY (bed_type)
        REFERENCES bed_types (bed_type),
    rate DECIMAL(5 , 2 ) NOT NULL,
    room_status BIT NOT NULL,
    notes TEXT
);


 insert into rooms(room_number, room_type, bed_type, rate, room_status)
VALUES
(201, 'single', 'Murphy', 40.0, 1),
(205, 'double', 'Trundle', 70.0, 0),
(208, 'triple', 'Pencil Poster', 110.0, 1);
 
 CREATE TABLE payments (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id)
        REFERENCES employees (id),
    payment_date DATE,
    account_number INT,
    FOREIGN KEY (account_number)
        REFERENCES customers (account_number),
    first_date_occupied DATE NOT NULL,
    last_date_occupied DATE NOT NULL,
    total_days INT not null,
    amount_charged DECIMAL(5 , 2 ),
    tax_rate DECIMAL(5 , 2 ),
    tax_amount DECIMAL(5 , 2 ),
    payment_total DECIMAL(5 , 2 ),
    notes TEXT
);
 


ALTER TABLE payments
ADD CONSTRAINT CK_TaxAmount CHECK(tax_amount = total_days * tax_rate);
 
INSERT INTO payments(
                     employee_id,
                     payment_date,
                     account_number,
                     first_date_occupied,
                     last_date_occupied,
                     total_days,
                     amount_charged,
                     tax_rate,
                     tax_amount,
                     payment_total
                    )
VALUES
(
       
       1,
       '2011-11-25',
       1,
       '2017-11-30',
       '2017-12-04',
       5,
       75,
       50,
       250,
       75
),
(
       
       3,
       '2018-10-07',
       1,
       '2018-10-03',
       '2018-10-07',
       10,
       100,
       50,
       500,
       100
),
(
       
       2,
       '2018-10-06',
       1,
       '2018-10-01',
       '2018-10-06',
       1,
       75,
       75,
       75,
       75
);
 
 
 
 CREATE TABLE occupancies (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id)
        REFERENCES employees (id),
    date_occupied DATE,
    room_number INT NOT NULL,
    FOREIGN KEY (room_number)
        REFERENCES rooms (room_number),
    account_number INT NOT NULL,
    FOREIGN KEY (account_number)
        REFERENCES customers (account_number),
    rate_applied DECIMAL(5 , 2 ),
    phone_charge DECIMAL(5 , 2 ) NOT NULL,
    notes TEXT
);

INSERT INTO occupancies(employee_id, date_occupied, account_number, room_number, rate_applied, phone_charge) VALUES
(2, '2011-02-04', 1, 205, 70.0, 12.54),
(2, '2015-04-09', 2, 201, 40.0, 11.22),
(3, '2012-06-08', 3, 208, 110.0, 10.05)