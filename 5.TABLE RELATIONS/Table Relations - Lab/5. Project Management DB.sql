CREATE TABLE clients (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    client_name VARCHAR(100),
    project_id INT(11) NOT NULL
);

CREATE TABLE projects (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    client_id INT(11) NOT NULL,
    project_lead_id INT(11) NOT NULL,
    CONSTRAINT FK_clients_projects FOREIGN KEY (client_id)
        REFERENCES clients (id)
);

CREATE TABLE employees (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    project_id INT(11) NOT NULL,
    CONSTRAINT FK_employees_projects FOREIGN KEY (project_id)
        REFERENCES projects (id)
);


ALTER TABLE clients
ADD CONSTRAINT FK_client_projects
FOREIGN KEY (project_id) REFERENCES projects(id);

ALTER TABLE projects
ADD CONSTRAINT FK_projects_employee
FOREIGN KEY (project_lead_id) REFERENCES employees(id);