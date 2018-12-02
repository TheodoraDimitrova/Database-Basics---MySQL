ALTER TABLE users MODIFY id bigint NOT NULL auto_increment;
ALTER TABLE users DROP PRIMARY KEY, ADD PRIMARY KEY(id,username);