use Jagadish_activities;
-- Activity 8
SELECT customer_id, MAX(purchase_amount) AS "Max Amount" FROM Jag_orders GROUP BY customer_id;

SELECT salesman_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM Jag_orders 
WHERE order_date='2012-08-17' GROUP BY salesman_id;

select customer_id, order_date, Max(purchase_amount) As "Highest_Amount" from Jag_orders
group by customer_id, order_date
having MAX(purchase_amount) IN(2030, 3450, 5760, 6000);


