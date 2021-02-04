CREATE TABLE `Jagadish_activities`.`Jag_salesman` (
	salesman_id int,
  CONSTRAINT PK PRIMARY KEY (salesman_id),
	name   varchar(20),
	city   varchar(20),
	commission int
);

INSERT INTO `Jagadish_activities`.`Jag_salesman`
VALUES (5001,'James Hoog','New York',15); 

select * from `Jagadish_activities`.`Jag_salesman`;

DESCRIBE Jag_salesman;

insert into `Jagadish_activities`.`Jag_salesman` values
    (5002, 'Nail Knite', 'Paris', 13), 
    (5005, 'Pit Alex', 'London', 11), 
    (5006, 'McLyon', 'Paris', 14), 
    (5007, 'Paul Adam', 'Rome', 13),
    (5003, 'Lauson Hen', 'San Jose', 12);
