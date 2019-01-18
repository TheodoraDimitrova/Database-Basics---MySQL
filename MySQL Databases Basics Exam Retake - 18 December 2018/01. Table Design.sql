CREATE TABLE branches (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    salary decimal(10,2) not null,
    started_on date not null,
    branch_id int ,
    constraint Fk_employees_branches foreign key(branch_id)
    references branches(id)
);
CREATE TABLE clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);
CREATE TABLE employees_clients (
    employee_id INT,
    client_id INT,
    CONSTRAINT Fk_employees_clients_employees FOREIGN KEY (employee_id)
        REFERENCES employees (id),
    CONSTRAINT Fk_employees_clients_employees_clients FOREIGN KEY (client_id)
        REFERENCES clients (id)
);

CREATE TABLE bank_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    account_number VARCHAR(10) NOT NULL,
    balance DECIMAL(10 , 2 ) NOT NULL,
    client_id INT UNIQUE NOT NULL,
    CONSTRAINT Fk_bank_accounts_clients FOREIGN KEY (client_id)
        REFERENCES clients (id)
);

create table cards(
 id INT PRIMARY KEY AUTO_INCREMENT,
 card_number varchar(19) not null,
 card_status varchar(7) not null,
 bank_account_id int not null,
  CONSTRAINT Fk_cards_bank_accounts FOREIGN KEY (bank_account_id)
        REFERENCES bank_accounts (id)
);