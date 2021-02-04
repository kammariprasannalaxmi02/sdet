use Jagadish_activities;
-- Activity 1

-- create database Jagadish_activities;

DESCRIBE Jagadish_activities.Jag_salesman;


-- Activity 2
 
 -- Create salesman table
CREATE TABLE Jag_salesman (
    salesman_id int primary key,
    name varchar(32),
    city varchar(32),
    commission int
);

-- Insert values one at a time
insert into Jag_salesman values(5001, 'James Hoog', 'New York', 15);

-- Insert multiple rows at once
insert into	salesman values
	(5002, 'Nail Knite', 'Paris', 13), 
	(5005, 'Pit Alex', 'London', 11), 
    (5006, 'McLyon', 'Paris', 14), 
    (5007, 'Paul Adam', 'Rome', 13),
    (5003, 'Lauson Hen', 'San Jose', 12);

SELECT * FROM Jagadish_activities.Jag_salesman;

Update Jagadish_activities.Jag_salesman SET grade = 100;

select * from Jagadish_activities.Jag_salesman where not grade = 100;

-- Activity 5
Update Jagadish_activities.Jag_salesman SET grade = 200 where city = 'Rome';

Update Jagadish_activities.Jag_salesman SET grade = 300 where name = 'James Hoog';

Update Jagadish_activities.Jag_salesman SET name = 'Pierre' where name = 'McLyon';

delete from Jagadish_activities.Jag_salesman where city = 'Rome';

INSERT INTO `Jagadish_activities`.`Jag_salesman`
VALUES (5001,'James Hoog','New York',15); 

select * from `Jagadish_activities`.`Jag_salesman`;

insert into `Jagadish_activities`.`Jag_salesman` values (5007, 'Paul Adam', 'Rome', 13, 200);

