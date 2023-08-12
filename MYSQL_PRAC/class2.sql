show tables;
-- --------------------------------------------------------------------
# Top 10 Most Quantity order
select * from orderdetails 
order by quantityOrdered desc 
limit 10;
-- --------------------------------------------------------------------
# Top 10 price per item
select orderNumber, 
		OrderLineNumber, 
		quantityOrdered * priceEach as Total_per_item
from orderdetails
order by Total_per_item desc
limit 10;

select orderNumber, 
		OrderLineNumber, 
		quantityOrdered * priceEach as Total_per_item
from orderdetails
where orderNumber = 10403
order by Total_per_item desc
limit 10;

-- --------------------------------------------------------------------

select orderNumber, 
		sum(quantityOrdered * priceEach) as Total
from orderdetails
group by 1;

-- -------------------------------------------------------------

-- Where 

select orderNumber,priceEach
from orderdetails 
where priceEach < 35;

# Where with String

select 
	contactFirstName,
    contactLastName
from customers
where city = "Las Vegas";

-- -----------------------------------------------------
select all orderNumber, 
		sum(quantityOrdered * priceEach) as Total
from orderdetails
group by 1
having total < 10000;

-- ---------------------------------------------------------
SELECT * FROM classicmodels.employees;

select jobtitle, count(*)
from employees
group by 1
;