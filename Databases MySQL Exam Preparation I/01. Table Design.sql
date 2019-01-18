

CREATE TABLE towns (
    town_id INT PRIMARY KEY,
    town_name VARCHAR(30) NOT NULL
);
CREATE TABLE airports (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(50) NOT NULL,
    town_id INT,
    CONSTRAINT Fk_airports_towns FOREIGN KEY (town_id)
        REFERENCES towns (town_id)
);
CREATE TABLE airlines (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(30) NOT NULL,
    nationality VARCHAR(30) NOT NULL,
    rating INT DEFAULT 0
);
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender varchar(1) ,
    home_town_id INT,
    CONSTRAINT Fk_customers_towns FOREIGN KEY (home_town_id)
        REFERENCES towns (town_id)
);
CREATE TABLE flights (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    status varchar(9),
    origin_airport_id INT,
    destination_airport_id INT,
    airline_id INT,
    CONSTRAINT Fk_flights_airports_origin FOREIGN KEY (origin_airport_id)
        REFERENCES airports (airport_id),
    CONSTRAINT Fk_flights_airports_destination FOREIGN KEY (destination_airport_id)
        REFERENCES airports (airport_id),
    CONSTRAINT Fk_flights_airlines FOREIGN KEY (airline_id)
        REFERENCES airlines (airline_id)
);

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    price DECIMAL(8 , 2 ) NOT NULL,
    class varchar(6),
    seat varchar(5) NOT NULL,
    customer_id INT,
    flight_id INT,
    CONSTRAINT Fk_tickets_customers FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    CONSTRAINT Fk_tickets_flights FOREIGN KEY (flight_id)
        REFERENCES flights (flight_id)
);