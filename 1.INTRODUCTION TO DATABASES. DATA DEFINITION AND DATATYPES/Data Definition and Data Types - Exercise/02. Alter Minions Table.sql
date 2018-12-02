ALTER TABLE minions
ADD town_id INT(11) ;

ALTER TABLE minions
ADD CONSTRAINT fk_minions_towns FOREIGN KEY(town_id) REFERENCES towns(id) ;
