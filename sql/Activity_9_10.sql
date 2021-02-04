use Jagadish_activities;

select * from Jag_customers;

-- Activity 11
SELECT customer_id, customer_name FROM Jag_customers a
WHERE 1<(SELECT COUNT(*) FROM Jag_orders b WHERE a.customer_id = b.customer_id)
UNION
SELECT salesman_id, name FROM Jag_salesman a
WHERE 1<(SELECT COUNT(*) FROM Jag_orders b WHERE a.salesman_id = b.salesman_id)
ORDER BY customer_name;

SELECT a.salesman_id, name, order_no, 'highest on', order_date FROM Jag_salesman a, Jag_orders b
WHERE a.salesman_id=b.salesman_id
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM Jag_orders c WHERE c.order_date = b.order_date)
UNION
SELECT a.salesman_id, name, order_no, 'lowest on', order_date FROM Jag_salesman a, Jag_orders b
WHERE a.salesman_id=b.salesman_id
AND b.purchase_amount=(SELECT MIN(purchase_amount) FROM Jag_orders c WHERE c.order_date = b.order_date);
