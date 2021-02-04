use Jagadish_activities;

-- Create the customers table
create table Jagadish_activities.Jag_customers (
    customer_id int primary key, customer_name varchar(32),
    city varchar(20), grade int, salesman_id int);

-- Insert values into it
insert into Jagadish_activities.Jag_customers values 
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

select * from Jagadish_activities.Jag_customers;

-- Activity 9

select * from Jag_customers
inner join Jag_salesman
on Jag_customers.salesman_id = Jag_salesman.salesman_id;

SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM Jag_customers a 
INNER JOIN Jag_salesman b ON a.salesman_id=b.salesman_id;

SELECT a.customer_name, a.customer_id, a.city, a.grade, b.name AS "Salesman", b.city FROM Jag_customers a 
LEFT OUTER JOIN Jag_salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300 
ORDER BY a.customer_id;

SELECT a.customer_name, b.name AS "Salesman", b.commission FROM Jag_customers a 
Inner JOIN Jag_salesman b ON a.salesman_id=b.salesman_id WHERE b.commission > 12;

select a.order_no, a.purchase_amount, a.order_date, b.name As "Salesman", b.commission, c.customer_name 
From Jag_orders a inner join Jag_customers c on a.salesman_id = c.salesman_id
inner join Jag_salesman b on a.salesman_id = b.salesman_id;

-- Activity 10
Select * from Jag_orders where
salesman_id = (select distinct salesman_id from Jag_orders where customer_id = 3007);

select distinct salesman_id from Jag_orders where customer_id = 3007;

Select * from Jag_orders where
salesman_id = (select distinct salesman_id from Jag_salesman where city= 'New York');

select count(customer_id) from Jag_customers where 
grade > (select avg(grade) from Jag_customers where city = 'New York');

SELECT grade, COUNT(*) FROM Jag_customers
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM Jag_customers WHERE city='New York');

SELECT * FROM Jag_orders
WHERE salesman_id IN( SELECT salesman_id FROM Jag_salesman
WHERE commission=( SELECT MAX(commission) FROM Jag_salesman));
