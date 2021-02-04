
-- Activity 3

SELECT * FROM Jagadish_activities.Jag_salesman;

select salesman_id, city from Jagadish_activities.Jag_salesman;

select * from Jagadish_activities.Jag_salesman where city ='Paris';

select salesman_id, commission  from Jagadish_activities.Jag_salesman where name = 'Paul Adam';

-- Activity 4
alter table  Jagadish_activities.Jag_salesman add grade int;

Update Jagadish_activities.Jag_salesman SET grade = 100;

SELECT DISTINCT grade from Jagadish_activities.Jag_salesman
order by grade desc;

select * from Jagadish_activities.Jag_salesman 
WHERE grade between 100 and 300;

select * from Jagadish_activities.Jag_salesman where not grade = 100;


