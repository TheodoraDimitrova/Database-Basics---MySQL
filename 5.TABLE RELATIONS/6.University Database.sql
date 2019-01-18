CREATE TABLE cities (
    city_id INT(11) AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT Pk_cities PRIMARY KEY (city_id)
);


CREATE TABLE customers (
    customer_id INT(11) AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    birthday DATE,
    city_id INT(11) NOT NULL,
    CONSTRAINT Pk_costomers PRIMARY KEY (customer_id),
    CONSTRAINT FK_customer_city FOREIGN KEY (city_id)
        REFERENCES cities (city_id)
);


CREATE TABLE orders (
    order_id INT(11) AUTO_INCREMENT,
    customer_id INT(11) NOT NULL,
    CONSTRAINT Pk_orders PRIMARY KEY (order_id),
    CONSTRAINT FK_order_customer FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

CREATE TABLE items_types (
    item_type_id INT(11) AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT PK_items_types PRIMARY KEY (item_type_id)
);

CREATE TABLE items (
    item_id INT(11) AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL unique,
    item_type_id INT(11) NOT NULL,
    CONSTRAINT Pk_items PRIMARY KEY (item_id),
    CONSTRAINT FK_item_types FOREIGN KEY (item_type_id)
        REFERENCES items_types (item_type_id)
);



CREATE TABLE order_items (
    order_id INT(11) NOT NULL,
    item_id INT(11) NOT NULL,
    CONSTRAINT PK_order_item PRIMARY KEY (order_id , item_id),
    CONSTRAINT FK_order_items_orders FOREIGN KEY (order_id)
        REFERENCES orders (order_id),
    CONSTRAINT FK_order_items_items FOREIGN KEY (item_id)
        REFERENCES items (item_id)
);