use Jagadish_activities;

-- Activity 6

select distinct salesman_id from Jag_orders;

select order_no from Jag_orders order by order_date;

select order_no from Jag_orders order by purchase_amount desc;

select  * from Jag_orders where purchase_amount < 500;

select * from Jag_orders where purchase_amount between 1000 and 2000;

-- Activity 7
select SUM(purchase_amount) AS "Total" from Jag_orders;

select AVG(purchase_amount) AS "Average" from Jag_orders;

select MAX(purchase_amount) AS "Max value" from Jag_orders;

select MIN(purchase_amount) AS "Min value" from Jag_orders;

select COUNT(distinct salesman_id) AS "Count" from Jag_orders;





