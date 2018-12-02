CREATE TABLE users (
    id  bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username  VARCHAR(30) NOT NULL,
    password  varchar(26) NOT NULL,
    profile_picture  varbinary(9000),
    last_login_time  date,
    is_deleted  boolean
  
   
);

INSERT INTO users (username,password,last_login_time,is_deleted)
values ('teddy','908282sda','2018-10-10',false),
('alis','908282sda','2018-10-10',false),
('pepi','908282sda','2018-10-10',false),
('budy','908282sda','2018-10-10',false),
('didi','908282sda','2018-10-10',false);